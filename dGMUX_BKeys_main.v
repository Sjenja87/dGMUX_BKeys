module gGMUX_BKeys (

	// LVDS input
	input	[2:0]	LVDS_IG_A_DATA	,
	
	input	[2:0]	LVDS_IG_B_DATA	,

	input	LVDS_IG_A_CLK			,
	
	// Panel control signals input
	input	LVDS_IG_BKL_ON			,
	input	LVDS_IG_PANEL_PWR		,
	
	// LVDS output
	output	[2:0]	LVDS_A_DATA		,
	
	output	[2:0]	LVDS_B_DATA		,
	
	output	LVDS_A_CLK				,
	output	LVDS_B_CLK				,
	
	// Panel control signals output
	output	LCD_BKLT_EN				,
	output	LCD_PWR_EN				,
	output	LCD_BKLT_PWM			,
	
	// dGPU power enable and reset
	output	P3V3GPU_EN				,
	output	P1V5FB1V8GPU_R_EN		,
	output	P1V0GPU_EN				,
	output	GPUVCORE_EN				,
	output	EG_RESET_L				,
	
	// DDC signals
	output	LVDS_DDC_SEL_IG			,
	output	LVDS_DDC_SEL_EG ,

	/////////////////
	/// Modifications by Sjenja87 and Romain to implement PWM generation and key press ///
	// Clock input
	input  LPC_CLK33M_GMUX ,
	
	// Keyboard Brightness Control Input
	input  GMUX_RESET_L
	
);

	assign LVDS_A_DATA[2:0] = LVDS_IG_A_DATA[2:0];

	assign LVDS_B_DATA[2:0] = LVDS_IG_B_DATA[2:0];
	
	assign LVDS_A_CLK	= LVDS_IG_A_CLK;
	
	assign LVDS_B_CLK	= LVDS_IG_A_CLK;
	
	// Pass through panel control signals
	assign LCD_BKLT_EN	= LVDS_IG_BKL_ON;
	assign LCD_PWR_EN	= LVDS_IG_PANEL_PWR;
	
	// Disable dGPU rails and hold in reset
	assign P3V3GPU_EN			= 0;
	assign P1V5FB1V8GPU_R_EN	= 0;
	assign P1V0GPU_EN			= 0;
	assign GPUVCORE_EN			= 0;
	assign EG_RESET_L			= 0;
	
	// Display Config Channel MUX select
	assign LVDS_DDC_SEL_IG		= 1;
	assign LVDS_DDC_SEL_EG		= 0;
	
//////////////////// Modifications by Sjenja87 and Romain to implement the keyboard brightness buttons.
		
	wire Rising_Edge_Event;//Rising edge event trigger  
	
	wire Falling_edge_event;//Faling edge event trigger
	
	reg Edge_Event_dly;//For delayed edge register 
	
	always @(posedge LPC_CLK33M_GMUX)//Edgre detector
	begin
		Edge_Event_dly <= GMUX_RESET_L;
	end
	
	assign Rising_Edge_Event = (GMUX_RESET_L && !Edge_Event_dly);//Trigger if rising edge detected
	
	assign Falling_edge_event = (!GMUX_RESET_L && Edge_Event_dly);//Trigger if falling edge detected
	
	localparam Delay = 'h528; // 40us
	
	localparam N = 5;
	
	reg[10:0] Delay_Counter;
	
	reg[13:0] Decoded_Frame = 'h000;//13 bit frame from keypress 
	
	reg[3:0] Bit_Number = 0;
	
	reg[16:0] Frame_Counter = 0;
	
	localparam Frame_Time = 'h10000; //2ms
	
	localparam Brightness_Up = 'h1FFD;
	
	localparam Brightness_Down = 'h1FFE;
	
	reg[1:0] Last_Key_Press = 0;
	
	reg[5:0] N_Frames_Counter = 0;
	
	always @(posedge LPC_CLK33M_GMUX)
	begin
		if(Rising_Edge_Event == 1 || Falling_edge_event == 1) begin
			Delay_Counter <= 0;
		end else if(Delay_Counter <= Delay-1) begin
       			    if(Delay_Counter == Delay-1) begin
						Decoded_Frame[Bit_Number] = GMUX_RESET_L;
						if(Bit_Number < 13) begin
							Bit_Number= Bit_Number + 1;
						end
						else begin
							Bit_Number = 0;
						end
				end	
				
				Delay_Counter <= Delay_Counter +1;
		end
				
		if(GMUX_RESET_L == 1) begin
			Frame_Counter = 0;
		end
		else if(GMUX_RESET_L == 0) begin
			Frame_Counter = Frame_Counter + 1;
		end
		
		if(Frame_Counter >= Frame_Time) begin
			
			if(Decoded_Frame == Brightness_Up) begin
				Last_Key_Press[0] = 1;	
				N_Frames_Counter = 0;	

			end else if (Decoded_Frame == 	Brightness_Down) begin
				Last_Key_Press[1] = 1;
				N_Frames_Counter = 0;

			end	else begin	
				N_Frames_Counter = N_Frames_Counter + 1;
			end
			
			if(N_Frames_Counter >= N && Last_Key_Press > 0 ) begin
				Last_Key_Press = 0; 
				N_Frames_Counter = 0;		
			end

			Frame_Counter = 0;
			Bit_Number = 0;
			Decoded_Frame = 0;		
		end		
	end

	
	reg Key_Clock= 1'b0;
	
	//  Spec target 8 Hz
	//  Use 33Mhz divided by 4194304 gives 7.86 Hz
	localparam  Prescale = 'h400000																																																									;
	reg[22:0] Prescale_Counter  = 0; // Counter  for  prescalling Button_Clock

	always @(posedge LPC_CLK33M_GMUX)
	begin
		Prescale_Counter <= Prescale_Counter + 1;
		 
		 if(Prescale_Counter>=(Prescale)) begin
		   Prescale_Counter <= 'h0;
		  end
		  Key_Clock <= Prescale_Counter[22] ; // ~8Hz 
	end

	reg [4:0] Brightness_Level = 'd11; //17-values Duty_Cycle, reset at level 10.
	
	
	always @(posedge Key_Clock)
	 begin	
			if (Last_Key_Press[0] == 1  && Brightness_Level < 'd16 ) begin
				Brightness_Level <= Brightness_Level + 1;
			end else if(Last_Key_Press[1] == 1 && Brightness_Level > 'd0 ) begin
				Brightness_Level <= Brightness_Level - 1; 
			end else begin
				//  Nothing
			end
	 end 	

	wire Brightness_Trigger ;
	reg  Brightness_Trigger_dly = 1'b0;
	wire Brightness_Trigger_Event ;
	
	// Create button event @33MHz, with auto-repeat @8Hz
	assign Brightness_Trigger = (Key_Clock);
	
	always @(posedge LPC_CLK33M_GMUX)
	begin
		Brightness_Trigger_dly <= Brightness_Trigger ;
		
	end
	assign Brightness_Trigger_Event = (Brightness_Trigger && !Brightness_Trigger_dly)?1:0 ;
	
	
	// Reset values for Duty_Cycle and Periode
	reg [31:0] Duty_Cycle='d49949; //reset value for the Duty_Cycle : 35% duty clycle
	reg [31:0] Periode ='d142711; //Constant value 200Hz PWM freq
	
	
	always @(posedge LPC_CLK33M_GMUX)
	begin
	/// BIL Button write operation
	/// Use 16 pre-defined values, obtained by retro-engineering of the PWM signal from a 13" MBP 2011
		if (Brightness_Trigger_Event) begin
		case (Brightness_Level)
			'd0 : Duty_Cycle <= 'd0 ;
			'd1 : Duty_Cycle <= 'd2854 ;
			'd2 : Duty_Cycle <= 'd4281 ;
			'd3 : Duty_Cycle <= 'd5708 ;
			'd4 : Duty_Cycle <= 'd8563 ;
			'd5 : Duty_Cycle <= 'd11417 ;
			'd6 : Duty_Cycle <= 'd15698 ;
			'd7 : Duty_Cycle <= 'd19980 ;
			'd8 : Duty_Cycle <= 'd25688 ;
			'd9 : Duty_Cycle <= 'd34251 ;
			'd10 : Duty_Cycle <= 'd41386 ;
			'd11 : Duty_Cycle <= 'd49949 ;
			'd12 : Duty_Cycle <= 'd59939 ;
			'd13 : Duty_Cycle <= 'd72783 ;
			'd14 : Duty_Cycle <= 'd87054 ;
			'd15 : Duty_Cycle <= 'd105606 ;
			'd16 : Duty_Cycle <= 'd127013 ;
			default : ;
		endcase
		end 
	end 
	
	// The current frequency obtained is ~200Hz with a counter based on 33MHz
	// This could be improved by manipulation the Duty_Cycle and Periode registers before generating the PWM
	// The Duty_Cycle value will directly set the duty cycle
	
	reg[16:0] PWM_Counter = 0;
	always @(posedge LPC_CLK33M_GMUX)
	 begin
	   PWM_Counter <= PWM_Counter + 1;
	   if(PWM_Counter>=Periode) 
		PWM_Counter <= 0;
	  end
	
	assign LCD_BKLT_PWM = (PWM_Counter<Duty_Cycle) ? 1:0 ;		
	/////////////////


endmodule
