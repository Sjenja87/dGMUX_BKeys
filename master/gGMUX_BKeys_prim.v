// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Mon Apr 12 15:57:55 2021
//
// Verilog Description of module gGMUX_BKeys
//

module gGMUX_BKeys (LVDS_IG_A_DATA, LVDS_IG_B_DATA, LVDS_IG_A_CLK, LVDS_IG_BKL_ON, 
            LVDS_IG_PANEL_PWR, LVDS_A_DATA, LVDS_B_DATA, LVDS_A_CLK, 
            LVDS_B_CLK, LCD_BKLT_EN, LCD_PWR_EN, LCD_BKLT_PWM, P3V3GPU_EN, 
            P1V5FB1V8GPU_R_EN, P1V0GPU_EN, GPUVCORE_EN, EG_RESET_L, 
            LVDS_DDC_SEL_IG, LVDS_DDC_SEL_EG, DP_MUX_EN, DP_MUX_SEL_EG, 
            GMUX_INT, LPC_CLK33M_GMUX, GMUX_RESET_L) /* synthesis syn_module_defined=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(1[8:19])
    input [2:0]LVDS_IG_A_DATA;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(4[14:28])
    input [2:0]LVDS_IG_B_DATA;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(6[14:28])
    input LVDS_IG_A_CLK;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(8[8:21])
    input LVDS_IG_BKL_ON;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(11[8:22])
    input LVDS_IG_PANEL_PWR;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(12[8:25])
    output [2:0]LVDS_A_DATA;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(15[15:26])
    output [2:0]LVDS_B_DATA;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(17[15:26])
    output LVDS_A_CLK;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(19[9:19])
    output LVDS_B_CLK;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(20[9:19])
    output LCD_BKLT_EN;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(23[9:20])
    output LCD_PWR_EN;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(24[9:19])
    output LCD_BKLT_PWM;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(25[9:21])
    output P3V3GPU_EN;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(28[9:19])
    output P1V5FB1V8GPU_R_EN;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(29[9:26])
    output P1V0GPU_EN;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(30[9:19])
    output GPUVCORE_EN;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(31[9:20])
    output EG_RESET_L;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(32[9:19])
    output LVDS_DDC_SEL_IG;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(35[9:24])
    output LVDS_DDC_SEL_EG;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(36[9:24])
    output DP_MUX_EN;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(39[10:19])
    output DP_MUX_SEL_EG;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(40[10:23])
    output GMUX_INT;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(41[10:18])
    input LPC_CLK33M_GMUX;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(46[9:24])
    input GMUX_RESET_L;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(49[9:21])
    
    wire LPC_CLK33M_GMUX_c /* synthesis SET_AS_NETWORK=LPC_CLK33M_GMUX_c, is_clock=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(46[9:24])
    wire Key_Clock /* synthesis is_clock=1, SET_AS_NETWORK=Key_Clock */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(172[6:15])
    
    wire GND_net, VCC_net, LVDS_A_DATA_c_2_c, LVDS_A_DATA_c_1_c, LVDS_A_DATA_c_0_c, 
        LVDS_B_DATA_c_2_c, LVDS_B_DATA_c_1_c, LVDS_B_DATA_c_0_c, LVDS_B_CLK_c_c, 
        LCD_BKLT_EN_c_c, LCD_PWR_EN_c_c, LCD_BKLT_PWM_c_0, GMUX_RESET_L_c, 
        n5388, Edge_Event_dly;
    wire [10:0]Delay_Counter;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(103[12:25])
    wire [13:0]Decoded_Frame;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(105[12:25])
    wire [3:0]Bit_Number;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(107[11:21])
    
    wire n2421;
    wire [1:0]Last_Key_Press;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(117[11:25])
    wire [5:0]N_Frames_Counter;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(119[11:27])
    wire [22:0]Prescale_Counter;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(177[12:28])
    
    wire n19, n5387, n2419, n2420, n2422, n2423, LPC_CLK33M_GMUX_c_enable_9, 
        n2424;
    wire [4:0]Brightness_Level;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(189[12:28])
    
    wire Brightness_Trigger_dly, n4242, n4949;
    wire [31:0]Duty_Cycle;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(219[13:23])
    wire [16:0]PWM_Counter;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(255[12:23])
    
    wire n4763, n3547, n4241, n3571, n3570, n4230, n3479, n79, 
        n80, n4240, n4833, n3336, n4219, n4239;
    wire [13:0]Decoded_Frame_13__N_176;
    
    wire n83, n16, n2856, n3513, n5308, n4931, n4726, n5142, 
        n5087, n4218, n4211, n4217, n4831, n4238, n3509, n4252, 
        n4228, n4227, n5307, n14, n4694, n4237, n5306, n4251, 
        n322, n323, n324, n325, n326, n4250, n4819, n4923, n2872, 
        n5386, n5385, n3543, n5384, n2029, n6, n5539, n5383, 
        n5139, n5095, n84, n85, n5382, n5381, n82, n120, n119, 
        n118, n117, n89, n116, n115, n88, n114, n113, n86, 
        n112, n111, LPC_CLK33M_GMUX_c_enable_18, n572;
    wire [4:0]Brightness_Level_4__N_78;
    
    wire n110, n2886, n2854, n2850, n2843, n4210, n5541, n2882, 
        n5380, n4209, n5137, n5379, n4909, n4226, n5293, n4216, 
        n3538, n3506, n4225, n5292, n42, n5291, n4, n6_adj_1, 
        n109, n5065, n108, n107, n106, n105, n104, n103, n102, 
        n101, n100, n99, n98, n4224, n2425, n3560, n5378, n5290, 
        n2, n5289, n5059, n5288, n4805, n4249, n5053, n5287, 
        n5376, LPC_CLK33M_GMUX_c_enable_30, LPC_CLK33M_GMUX_c_enable_17, 
        n2410, n4622, n4223, n5375, n10, n2868, n2870, n44, 
        n38, n41, n35, n4215, n8, n50, n4248, n5374, n56, 
        n32, n6_adj_2, n29, n4769, n4_adj_3, n4247, n5373, n3607, 
        n47, n2409, n5372, n3603, n53, n3601, n26, n4753, n3596, 
        n2654, n5371, n5370, n4710, n4222, n4236, n4246, n4889, 
        n5369, n4235, n5035, n3587, n3586, n81, n80_adj_4, n5033, 
        n79_adj_5, n3583, LPC_CLK33M_GMUX_c_enable_29, n78, n3582, 
        n4221, n23, n22, n21, n20, n4234, n5027, n2892, n4749, 
        n4883, n2860, n2858, n5118, n4791, n20_adj_6, n19_adj_7, 
        n18, n17, n1940, n2411, n1933, n1930, n1928, n5120, 
        n16_adj_8, n22_adj_9, n15, n24, n14_adj_10, n4245, n26_adj_11, 
        n13, n74, n12, n11, n10_adj_12, n75, n9, n30, n2412, 
        n2413, n1944, n8_adj_13, n76, n2418, n5019, n32_adj_14, 
        cout, n77, n7, n34, n6_adj_15, n2414, n4214, n5015, 
        n2415, n1962, n2416, n5, n3548, n4_adj_16, n4233, n3, 
        n2417, n5401, n5408, n4232, n4213, n3474, n1663, n1672, 
        n1673, n5405, n5404, n5367, n1983, n1980, n1979, n1977, 
        n4212, n4231, n5003, n5366, n5079, n4877, n5099, n4719, 
        n5365, n2_adj_17, n90, n4725, n18_adj_18, n28, n5364, 
        n5363, n4243, n5362, n5361, n5360, n3343, n5409, n1743, 
        n5407, n1746, n1747, n5359, n5395, n1752, n1753, n5107, 
        n12_adj_19, n5406, n5403, n5402, n5400, n4549, n5399, 
        n5331, n87, n4473, n5330, n1854, n4499, n5398, n4865, 
        n5396, n5349, LPC_CLK33M_GMUX_c_enable_14, n5394, n4489, n5358, 
        n4977, n5393, n5105, n4777, n5357, n5356, n4851, n5127, 
        n4961, n5111, n4959, n5355, n6_adj_20, n5354, n5392, n5391, 
        n5389, n4_adj_21;
    
    VHI i2 (.Z(VCC_net));
    CCU2B Prescale_Counter_407_add_4_21 (.A0(n4_adj_16), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n3), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4218), .COUT(n4219), .S0(n101), .S1(n100));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407_add_4_21.INIT0 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_21.INIT1 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_21.INJECT1_0 = "NO";
    defparam Prescale_Counter_407_add_4_21.INJECT1_1 = "NO";
    CCU2B add_116_add_4_5 (.A0(Delay_Counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(Delay_Counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4240), .COUT(n4241), .S0(n47), .S1(n44));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(136[22:38])
    defparam add_116_add_4_5.INIT0 = 16'haaaa;
    defparam add_116_add_4_5.INIT1 = 16'haaaa;
    defparam add_116_add_4_5.INJECT1_0 = "NO";
    defparam add_116_add_4_5.INJECT1_1 = "NO";
    PFUMX i3412 (.BLUT(n5291), .ALUT(n5290), .C0(n5365), .Z(n5292));
    FD1P3IX Bit_Number__i0 (.D(n3601), .SP(LPC_CLK33M_GMUX_c_enable_17), 
            .CD(LPC_CLK33M_GMUX_c_enable_14), .CK(LPC_CLK33M_GMUX_c), .Q(Bit_Number[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Bit_Number__i0.GSR = "ENABLED";
    FD1P3IX N_Frames_Counter__i0 (.D(n3506), .SP(LPC_CLK33M_GMUX_c_enable_14), 
            .CD(n2029), .CK(LPC_CLK33M_GMUX_c), .Q(N_Frames_Counter[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam N_Frames_Counter__i0.GSR = "ENABLED";
    FD1S3AX Key_Clock_105 (.D(Prescale_Counter[22]), .CK(LPC_CLK33M_GMUX_c), 
            .Q(Key_Clock)) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(179[9] 187[5])
    defparam Key_Clock_105.GSR = "ENABLED";
    OB LVDS_A_DATA_pad_0 (.I(LVDS_A_DATA_c_0_c), .O(LVDS_A_DATA[0]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(15[15:26])
    CCU2B Prescale_Counter_407_add_4_5 (.A0(n20), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n19_adj_7), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4210), .COUT(n4211), .S0(n117), .S1(n116));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407_add_4_5.INIT0 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_5.INIT1 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_5.INJECT1_0 = "NO";
    defparam Prescale_Counter_407_add_4_5.INJECT1_1 = "NO";
    FD1S3AY Duty_Cycle_i0 (.D(n2882), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[0])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam Duty_Cycle_i0.GSR = "ENABLED";
    FD1S3AX Brightness_Trigger_dly_107 (.D(Key_Clock), .CK(LPC_CLK33M_GMUX_c), 
            .Q(Brightness_Trigger_dly)) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(210[9] 214[5])
    defparam Brightness_Trigger_dly_107.GSR = "ENABLED";
    CCU2B add_649_add_4_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(PWM_Counter[0]), .B1(Duty_Cycle[0]), .C1(GND_net), .D1(VCC_net), 
          .COUT(n4230));
    defparam add_649_add_4_2.INIT0 = 16'h000f;
    defparam add_649_add_4_2.INIT1 = 16'h999a;
    defparam add_649_add_4_2.INJECT1_0 = "NO";
    defparam add_649_add_4_2.INJECT1_1 = "NO";
    OB LVDS_A_DATA_pad_1 (.I(LVDS_A_DATA_c_1_c), .O(LVDS_A_DATA[1]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(15[15:26])
    PFUMX i1087 (.BLUT(n1977), .ALUT(n2856), .C0(n5139), .Z(n2854));
    FD1S3AX Edge_Event_dly_97 (.D(GMUX_RESET_L_c), .CK(LPC_CLK33M_GMUX_c), 
            .Q(Edge_Event_dly));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(90[9] 93[5])
    defparam Edge_Event_dly_97.GSR = "ENABLED";
    FD1S3AY Brightness_Level_i0 (.D(Brightness_Level_4__N_78[0]), .CK(Key_Clock), 
            .Q(Brightness_Level[0])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(192[9] 201[6])
    defparam Brightness_Level_i0.GSR = "ENABLED";
    FD1S3AY Brightness_Level_i1 (.D(Brightness_Level_4__N_78[1]), .CK(Key_Clock), 
            .Q(Brightness_Level[1])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(192[9] 201[6])
    defparam Brightness_Level_i1.GSR = "ENABLED";
    FD1S3AX Brightness_Level_i2 (.D(Brightness_Level_4__N_78[2]), .CK(Key_Clock), 
            .Q(Brightness_Level[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(192[9] 201[6])
    defparam Brightness_Level_i2.GSR = "ENABLED";
    FD1S3AY Brightness_Level_i3 (.D(Brightness_Level_4__N_78[3]), .CK(Key_Clock), 
            .Q(Brightness_Level[3])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(192[9] 201[6])
    defparam Brightness_Level_i3.GSR = "ENABLED";
    FD1S3AX Brightness_Level_i4 (.D(Brightness_Level_4__N_78[4]), .CK(Key_Clock), 
            .Q(Brightness_Level[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(192[9] 201[6])
    defparam Brightness_Level_i4.GSR = "ENABLED";
    FD1S3AX Duty_Cycle_i1 (.D(n2870), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam Duty_Cycle_i1.GSR = "ENABLED";
    FD1P3JX Duty_Cycle_i2 (.D(n1753), .SP(LPC_CLK33M_GMUX_c_enable_9), .PD(n5373), 
            .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[2])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam Duty_Cycle_i2.GSR = "ENABLED";
    FD1P3IX Duty_Cycle_i3 (.D(n1752), .SP(LPC_CLK33M_GMUX_c_enable_9), .CD(n5373), 
            .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[3])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam Duty_Cycle_i3.GSR = "ENABLED";
    FD1P3IX Duty_Cycle_i4 (.D(n5394), .SP(LPC_CLK33M_GMUX_c_enable_9), .CD(n5373), 
            .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[4])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam Duty_Cycle_i4.GSR = "ENABLED";
    FD1S3AX Duty_Cycle_i5 (.D(n2872), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam Duty_Cycle_i5.GSR = "ENABLED";
    FD1S3IX Duty_Cycle_i6 (.D(n5293), .CK(LPC_CLK33M_GMUX_c), .CD(n5373), 
            .Q(Duty_Cycle[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam Duty_Cycle_i6.GSR = "ENABLED";
    FD1S3AX Duty_Cycle_i7 (.D(n2858), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam Duty_Cycle_i7.GSR = "ENABLED";
    FD1P3IX Duty_Cycle_i8 (.D(n1747), .SP(LPC_CLK33M_GMUX_c_enable_9), .CD(n5373), 
            .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[8])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam Duty_Cycle_i8.GSR = "ENABLED";
    FD1P3IX Duty_Cycle_i9 (.D(n1746), .SP(LPC_CLK33M_GMUX_c_enable_9), .CD(n5373), 
            .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[9])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam Duty_Cycle_i9.GSR = "ENABLED";
    FD1S3AX Duty_Cycle_i10 (.D(n2850), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam Duty_Cycle_i10.GSR = "ENABLED";
    FD1S3AX Duty_Cycle_i11 (.D(n2843), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam Duty_Cycle_i11.GSR = "ENABLED";
    FD1P3JX Duty_Cycle_i12 (.D(n1743), .SP(LPC_CLK33M_GMUX_c_enable_9), 
            .PD(n5373), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam Duty_Cycle_i12.GSR = "ENABLED";
    FD1S3AX Duty_Cycle_i13 (.D(n2854), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam Duty_Cycle_i13.GSR = "ENABLED";
    FD1S3AY Duty_Cycle_i14 (.D(n2868), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[14])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam Duty_Cycle_i14.GSR = "ENABLED";
    FD1S3JX Duty_Cycle_i15 (.D(n2886), .CK(LPC_CLK33M_GMUX_c), .PD(n5373), 
            .Q(Duty_Cycle[15])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam Duty_Cycle_i15.GSR = "ENABLED";
    FD1P3JX Duty_Cycle_i16 (.D(n4710), .SP(LPC_CLK33M_GMUX_c_enable_9), 
            .PD(n5373), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[16])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam Duty_Cycle_i16.GSR = "ENABLED";
    PFUMX i1818 (.BLUT(n1933), .ALUT(n1983), .C0(n1854), .Z(n3583));
    OB LVDS_DDC_SEL_IG_pad (.I(VCC_net), .O(LVDS_DDC_SEL_IG));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(35[9:24])
    CCU2B Prescale_Counter_407_add_4_3 (.A0(n22), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n21), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4209), .COUT(n4210), .S0(n119), .S1(n118));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407_add_4_3.INIT0 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_3.INIT1 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_3.INJECT1_0 = "NO";
    defparam Prescale_Counter_407_add_4_3.INJECT1_1 = "NO";
    OB EG_RESET_L_pad (.I(GND_net), .O(EG_RESET_L));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(32[9:19])
    OB GPUVCORE_EN_pad (.I(GND_net), .O(GPUVCORE_EN));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(31[9:20])
    OB P1V0GPU_EN_pad (.I(GND_net), .O(P1V0GPU_EN));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(30[9:19])
    CCU2B PWM_Counter_408_add_4_17 (.A0(PWM_Counter[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(PWM_Counter[16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n4228), .S0(n75), .S1(n74));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408_add_4_17.INIT0 = 16'haaa0;
    defparam PWM_Counter_408_add_4_17.INIT1 = 16'haaa0;
    defparam PWM_Counter_408_add_4_17.INJECT1_0 = "NO";
    defparam PWM_Counter_408_add_4_17.INJECT1_1 = "NO";
    OB P1V5FB1V8GPU_R_EN_pad (.I(GND_net), .O(P1V5FB1V8GPU_R_EN));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(29[9:26])
    OB P3V3GPU_EN_pad (.I(GND_net), .O(P3V3GPU_EN));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(28[9:19])
    OB LCD_BKLT_PWM_pad (.I(LCD_BKLT_PWM_c_0), .O(LCD_BKLT_PWM));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(25[9:21])
    OB LCD_PWR_EN_pad (.I(LCD_PWR_EN_c_c), .O(LCD_PWR_EN));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(24[9:19])
    OB LCD_BKLT_EN_pad (.I(LCD_BKLT_EN_c_c), .O(LCD_BKLT_EN));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(23[9:20])
    CCU2B Prescale_Counter_407_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n23), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n4209), .S1(n120));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407_add_4_1.INIT0 = 16'h0000;
    defparam Prescale_Counter_407_add_4_1.INIT1 = 16'h555f;
    defparam Prescale_Counter_407_add_4_1.INJECT1_0 = "NO";
    defparam Prescale_Counter_407_add_4_1.INJECT1_1 = "NO";
    OB LVDS_B_CLK_pad (.I(LVDS_B_CLK_c_c), .O(LVDS_B_CLK));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(20[9:19])
    OB LVDS_A_CLK_pad (.I(LVDS_B_CLK_c_c), .O(LVDS_A_CLK));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(19[9:19])
    OB LVDS_B_DATA_pad_0 (.I(LVDS_B_DATA_c_0_c), .O(LVDS_B_DATA[0]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(17[15:26])
    OB LVDS_B_DATA_pad_1 (.I(LVDS_B_DATA_c_1_c), .O(LVDS_B_DATA[1]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(17[15:26])
    OB LVDS_B_DATA_pad_2 (.I(LVDS_B_DATA_c_2_c), .O(LVDS_B_DATA[2]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(17[15:26])
    PFUMX i1091 (.BLUT(n3582), .ALUT(n3509), .C0(n5137), .Z(n2858));
    CCU2B add_116_add_4_3 (.A0(Delay_Counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(Delay_Counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4239), .COUT(n4240), .S0(n53), .S1(n50));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(136[22:38])
    defparam add_116_add_4_3.INIT0 = 16'haaaa;
    defparam add_116_add_4_3.INIT1 = 16'haaaa;
    defparam add_116_add_4_3.INJECT1_0 = "NO";
    defparam add_116_add_4_3.INJECT1_1 = "NO";
    CCU2B add_116_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Delay_Counter[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n4239), .S1(n56));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(136[22:38])
    defparam add_116_add_4_1.INIT0 = 16'h0000;
    defparam add_116_add_4_1.INIT1 = 16'h555a;
    defparam add_116_add_4_1.INJECT1_0 = "NO";
    defparam add_116_add_4_1.INJECT1_1 = "NO";
    CCU2B PWM_Counter_408_add_4_15 (.A0(PWM_Counter[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(PWM_Counter[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n4227), .COUT(n4228), .S0(n77), 
          .S1(n76));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408_add_4_15.INIT0 = 16'haaa0;
    defparam PWM_Counter_408_add_4_15.INIT1 = 16'haaa0;
    defparam PWM_Counter_408_add_4_15.INJECT1_0 = "NO";
    defparam PWM_Counter_408_add_4_15.INJECT1_1 = "NO";
    CCU2B PWM_Counter_408_add_4_13 (.A0(PWM_Counter[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(PWM_Counter[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n4226), .COUT(n4227), .S0(n79_adj_5), 
          .S1(n78));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408_add_4_13.INIT0 = 16'haaa0;
    defparam PWM_Counter_408_add_4_13.INIT1 = 16'haaa0;
    defparam PWM_Counter_408_add_4_13.INJECT1_0 = "NO";
    defparam PWM_Counter_408_add_4_13.INJECT1_1 = "NO";
    PFUMX i1103 (.BLUT(n3571), .ALUT(n3479), .C0(n5142), .Z(n2870));
    CCU2B PWM_Counter_408_add_4_11 (.A0(PWM_Counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4225), .COUT(n4226), .S0(n81), .S1(n80_adj_4));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408_add_4_11.INIT0 = 16'haaa0;
    defparam PWM_Counter_408_add_4_11.INIT1 = 16'haaa0;
    defparam PWM_Counter_408_add_4_11.INJECT1_0 = "NO";
    defparam PWM_Counter_408_add_4_11.INJECT1_1 = "NO";
    CCU2B PWM_Counter_408_add_4_9 (.A0(PWM_Counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4224), .COUT(n4225), .S0(n83), .S1(n82));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408_add_4_9.INIT0 = 16'haaa0;
    defparam PWM_Counter_408_add_4_9.INIT1 = 16'haaa0;
    defparam PWM_Counter_408_add_4_9.INJECT1_0 = "NO";
    defparam PWM_Counter_408_add_4_9.INJECT1_1 = "NO";
    PFUMX i1105 (.BLUT(n3560), .ALUT(n3474), .C0(n5142), .Z(n2872));
    FD1P3IX N_Frames_Counter__i5 (.D(n322), .SP(LPC_CLK33M_GMUX_c_enable_14), 
            .CD(n2029), .CK(LPC_CLK33M_GMUX_c), .Q(N_Frames_Counter[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam N_Frames_Counter__i5.GSR = "ENABLED";
    FD1P3IX N_Frames_Counter__i4 (.D(n323), .SP(LPC_CLK33M_GMUX_c_enable_14), 
            .CD(n2029), .CK(LPC_CLK33M_GMUX_c), .Q(N_Frames_Counter[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam N_Frames_Counter__i4.GSR = "ENABLED";
    FD1P3IX N_Frames_Counter__i3 (.D(n324), .SP(LPC_CLK33M_GMUX_c_enable_14), 
            .CD(n2029), .CK(LPC_CLK33M_GMUX_c), .Q(N_Frames_Counter[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam N_Frames_Counter__i3.GSR = "ENABLED";
    FD1P3IX N_Frames_Counter__i2 (.D(n325), .SP(LPC_CLK33M_GMUX_c_enable_14), 
            .CD(n2029), .CK(LPC_CLK33M_GMUX_c), .Q(N_Frames_Counter[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam N_Frames_Counter__i2.GSR = "ENABLED";
    FD1P3IX N_Frames_Counter__i1 (.D(n326), .SP(LPC_CLK33M_GMUX_c_enable_14), 
            .CD(n2029), .CK(LPC_CLK33M_GMUX_c), .Q(N_Frames_Counter[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam N_Frames_Counter__i1.GSR = "ENABLED";
    FD1P3IX Bit_Number__i3 (.D(n79), .SP(LPC_CLK33M_GMUX_c_enable_17), .CD(LPC_CLK33M_GMUX_c_enable_14), 
            .CK(LPC_CLK33M_GMUX_c), .Q(Bit_Number[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Bit_Number__i3.GSR = "ENABLED";
    FD1P3IX Bit_Number__i2 (.D(n80), .SP(LPC_CLK33M_GMUX_c_enable_17), .CD(LPC_CLK33M_GMUX_c_enable_14), 
            .CK(LPC_CLK33M_GMUX_c), .Q(Bit_Number[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Bit_Number__i2.GSR = "ENABLED";
    FD1P3IX Bit_Number__i1 (.D(n6_adj_20), .SP(LPC_CLK33M_GMUX_c_enable_17), 
            .CD(LPC_CLK33M_GMUX_c_enable_14), .CK(LPC_CLK33M_GMUX_c), .Q(Bit_Number[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Bit_Number__i1.GSR = "ENABLED";
    FD1S3IX Decoded_Frame__i0 (.D(Decoded_Frame_13__N_176[0]), .CK(LPC_CLK33M_GMUX_c), 
            .CD(LPC_CLK33M_GMUX_c_enable_14), .Q(Decoded_Frame[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Decoded_Frame__i0.GSR = "ENABLED";
    ORCALUT4 i1_4_lut (.A(n5356), .B(n19), .C(n4889), .D(Decoded_Frame_13__N_176[6]), 
            .Z(n4549)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'h8000;
    CCU2B PWM_Counter_408_add_4_7 (.A0(PWM_Counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4223), .COUT(n4224), .S0(n85), .S1(n84));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408_add_4_7.INIT0 = 16'haaa0;
    defparam PWM_Counter_408_add_4_7.INIT1 = 16'haaa0;
    defparam PWM_Counter_408_add_4_7.INJECT1_0 = "NO";
    defparam PWM_Counter_408_add_4_7.INJECT1_1 = "NO";
    FD1P3IX Last_Key_Press__i1 (.D(n5541), .SP(LPC_CLK33M_GMUX_c_enable_18), 
            .CD(n2029), .CK(LPC_CLK33M_GMUX_c), .Q(Last_Key_Press[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Last_Key_Press__i1.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i0 (.D(n120), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n23)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i0.GSR = "ENABLED";
    FD1P3IX Delay_Counter__i10 (.D(n26), .SP(LPC_CLK33M_GMUX_c_enable_30), 
            .CD(n5381), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[10]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Delay_Counter__i10.GSR = "ENABLED";
    CCU2B add_649_add_4_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4238), .S0(cout));
    defparam add_649_add_4_cout.INIT0 = 16'h0000;
    defparam add_649_add_4_cout.INIT1 = 16'h0000;
    defparam add_649_add_4_cout.INJECT1_0 = "NO";
    defparam add_649_add_4_cout.INJECT1_1 = "NO";
    CCU2B PWM_Counter_408_add_4_5 (.A0(PWM_Counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4222), .COUT(n4223), .S0(n87), .S1(n86));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408_add_4_5.INIT0 = 16'haaa0;
    defparam PWM_Counter_408_add_4_5.INIT1 = 16'haaa0;
    defparam PWM_Counter_408_add_4_5.INJECT1_0 = "NO";
    defparam PWM_Counter_408_add_4_5.INJECT1_1 = "NO";
    CCU2B add_649_add_4_18 (.A0(PWM_Counter[15]), .B0(Duty_Cycle[15]), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[16]), .B1(Duty_Cycle[16]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4237), .COUT(n4238));
    defparam add_649_add_4_18.INIT0 = 16'h999a;
    defparam add_649_add_4_18.INIT1 = 16'h999a;
    defparam add_649_add_4_18.INJECT1_0 = "NO";
    defparam add_649_add_4_18.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_adj_1 (.A(Decoded_Frame_13__N_176[10]), .B(Decoded_Frame_13__N_176[4]), 
            .C(Decoded_Frame_13__N_176[12]), .D(Decoded_Frame_13__N_176[8]), 
            .Z(n4889)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_1.init = 16'h8000;
    FD1P3IX Delay_Counter__i9 (.D(n29), .SP(LPC_CLK33M_GMUX_c_enable_30), 
            .CD(n5381), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[9]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Delay_Counter__i9.GSR = "ENABLED";
    FD1P3IX Delay_Counter__i8 (.D(n32), .SP(LPC_CLK33M_GMUX_c_enable_30), 
            .CD(n5381), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[8]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Delay_Counter__i8.GSR = "ENABLED";
    FD1P3IX Delay_Counter__i7 (.D(n35), .SP(LPC_CLK33M_GMUX_c_enable_30), 
            .CD(n5381), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[7]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Delay_Counter__i7.GSR = "ENABLED";
    FD1P3IX Delay_Counter__i6 (.D(n38), .SP(LPC_CLK33M_GMUX_c_enable_30), 
            .CD(n5381), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[6]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Delay_Counter__i6.GSR = "ENABLED";
    FD1P3IX Delay_Counter__i5 (.D(n41), .SP(LPC_CLK33M_GMUX_c_enable_30), 
            .CD(n5381), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[5]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Delay_Counter__i5.GSR = "ENABLED";
    FD1P3IX Delay_Counter__i4 (.D(n44), .SP(LPC_CLK33M_GMUX_c_enable_30), 
            .CD(n5381), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[4]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Delay_Counter__i4.GSR = "ENABLED";
    FD1P3IX Delay_Counter__i3 (.D(n47), .SP(LPC_CLK33M_GMUX_c_enable_30), 
            .CD(n5381), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[3]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Delay_Counter__i3.GSR = "ENABLED";
    FD1P3IX Delay_Counter__i2 (.D(n50), .SP(LPC_CLK33M_GMUX_c_enable_30), 
            .CD(n5381), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[2]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Delay_Counter__i2.GSR = "ENABLED";
    FD1P3IX Delay_Counter__i1 (.D(n53), .SP(LPC_CLK33M_GMUX_c_enable_30), 
            .CD(n5381), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[1]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Delay_Counter__i1.GSR = "ENABLED";
    FD1S3AX PWM_Counter_408__i0 (.D(n90), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408__i0.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i0 (.D(n2424), .CK(LPC_CLK33M_GMUX_c), .CD(n2654), 
            .Q(n34));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_117_e1_i0_i0.GSR = "ENABLED";
    FD1S3IX Decoded_Frame__i1 (.D(Decoded_Frame_13__N_176[1]), .CK(LPC_CLK33M_GMUX_c), 
            .CD(LPC_CLK33M_GMUX_c_enable_14), .Q(Decoded_Frame[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Decoded_Frame__i1.GSR = "ENABLED";
    PFUMX i3409 (.BLUT(n5288), .ALUT(n5287), .C0(n5364), .Z(n5289));
    OB LVDS_A_DATA_pad_2 (.I(LVDS_A_DATA_c_2_c), .O(LVDS_A_DATA[2]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(15[15:26])
    OB LVDS_DDC_SEL_EG_pad (.I(GND_net), .O(LVDS_DDC_SEL_EG));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(36[9:24])
    OB DP_MUX_EN_pad (.I(VCC_net), .O(DP_MUX_EN));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(39[10:19])
    OB DP_MUX_SEL_EG_pad (.I(GND_net), .O(DP_MUX_SEL_EG));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(40[10:23])
    OB GMUX_INT_pad (.I(VCC_net), .O(GMUX_INT));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(41[10:18])
    IB LVDS_A_DATA_c_2_pad (.I(LVDS_IG_A_DATA[2]), .O(LVDS_A_DATA_c_2_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(4[14:28])
    IB LVDS_A_DATA_c_1_pad (.I(LVDS_IG_A_DATA[1]), .O(LVDS_A_DATA_c_1_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(4[14:28])
    IB LVDS_A_DATA_c_0_pad (.I(LVDS_IG_A_DATA[0]), .O(LVDS_A_DATA_c_0_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(4[14:28])
    IB LVDS_B_DATA_c_2_pad (.I(LVDS_IG_B_DATA[2]), .O(LVDS_B_DATA_c_2_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(6[14:28])
    IB LVDS_B_DATA_c_1_pad (.I(LVDS_IG_B_DATA[1]), .O(LVDS_B_DATA_c_1_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(6[14:28])
    IB LVDS_B_DATA_c_0_pad (.I(LVDS_IG_B_DATA[0]), .O(LVDS_B_DATA_c_0_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(6[14:28])
    IB LVDS_B_CLK_c_pad (.I(LVDS_IG_A_CLK), .O(LVDS_B_CLK_c_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(8[8:21])
    IB LCD_BKLT_EN_c_pad (.I(LVDS_IG_BKL_ON), .O(LCD_BKLT_EN_c_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(11[8:22])
    IB LCD_PWR_EN_c_pad (.I(LVDS_IG_PANEL_PWR), .O(LCD_PWR_EN_c_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(12[8:25])
    IB LPC_CLK33M_GMUX_pad (.I(LPC_CLK33M_GMUX), .O(LPC_CLK33M_GMUX_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(46[9:24])
    IB GMUX_RESET_L_pad (.I(GMUX_RESET_L), .O(GMUX_RESET_L_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(49[9:21])
    CCU2B Prescale_Counter_407_add_4_19 (.A0(n6_adj_15), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n5), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4217), .COUT(n4218), .S0(n103), .S1(n102));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407_add_4_19.INIT0 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_19.INIT1 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_19.INJECT1_0 = "NO";
    defparam Prescale_Counter_407_add_4_19.INJECT1_1 = "NO";
    ORCALUT4 i1765_4_lut_4_lut_4_lut (.A(Bit_Number[2]), .B(Bit_Number[3]), 
            .C(Bit_Number[0]), .D(Bit_Number[1]), .Z(n79)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A !(B))) */ ;
    defparam i1765_4_lut_4_lut_4_lut.init = 16'h644c;
    FD1P3IX Last_Key_Press__i0 (.D(n5541), .SP(LPC_CLK33M_GMUX_c_enable_29), 
            .CD(n2029), .CK(LPC_CLK33M_GMUX_c), .Q(Last_Key_Press[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Last_Key_Press__i0.GSR = "ENABLED";
    ORCALUT4 i1713_2_lut_rep_94 (.A(Bit_Number[2]), .B(Bit_Number[3]), .Z(n5382)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1713_2_lut_rep_94.init = 16'h8888;
    FD1P3IX Delay_Counter__i0 (.D(n56), .SP(LPC_CLK33M_GMUX_c_enable_30), 
            .CD(n5381), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[0]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Delay_Counter__i0.GSR = "ENABLED";
    ORCALUT4 i1766_3_lut_4_lut_4_lut_4_lut (.A(Bit_Number[2]), .B(Bit_Number[3]), 
            .C(Bit_Number[1]), .D(Bit_Number[0]), .Z(n80)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)))+!A !(C (D)))) */ ;
    defparam i1766_3_lut_4_lut_4_lut_4_lut.init = 16'h522a;
    GSR GSR_INST (.GSR(VCC_net));
    ORCALUT4 i1_4_lut_4_lut_then_4_lut (.A(Last_Key_Press[0]), .B(Brightness_Level[4]), 
            .C(Brightness_Level[2]), .D(n2), .Z(n5396)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(194[8:58])
    defparam i1_4_lut_4_lut_then_4_lut.init = 16'heccc;
    CCU2B Prescale_Counter_407_add_4_17 (.A0(n8_adj_13), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n7), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4216), .COUT(n4217), .S0(n105), .S1(n104));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407_add_4_17.INIT0 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_17.INIT1 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_17.INJECT1_0 = "NO";
    defparam Prescale_Counter_407_add_4_17.INJECT1_1 = "NO";
    CCU2B Prescale_Counter_407_add_4_15 (.A0(n10_adj_12), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(n9), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4215), .COUT(n4216), .S0(n107), .S1(n106));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407_add_4_15.INIT0 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_15.INIT1 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_15.INJECT1_0 = "NO";
    defparam Prescale_Counter_407_add_4_15.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_4_lut_else_4_lut (.A(Last_Key_Press[0]), .B(Brightness_Level[4]), 
            .C(n6), .Z(n5395)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !(C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(194[8:58])
    defparam i1_4_lut_4_lut_else_4_lut.init = 16'hc1c1;
    ORCALUT4 mux_380_i1_4_lut_4_lut_then_4_lut (.A(n5364), .B(Brightness_Level[3]), 
            .C(n5369), .D(Brightness_Level[2]), .Z(n5399)) /* synthesis lut_function=(!((B (C (D)))+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam mux_380_i1_4_lut_4_lut_then_4_lut.init = 16'h2aaa;
    ORCALUT4 i1_3_lut_4_lut (.A(Delay_Counter[7]), .B(n5381), .C(n5027), 
            .D(n5120), .Z(n5033)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 mux_380_i1_4_lut_4_lut_else_4_lut (.A(n5364), .B(Brightness_Level[3]), 
            .C(n5369), .D(Brightness_Level[2]), .Z(n5398)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam mux_380_i1_4_lut_4_lut_else_4_lut.init = 16'haaea;
    ORCALUT4 mux_380_i6_3_lut_4_lut_then_3_lut (.A(n5364), .B(n5369), .C(Brightness_Level[3]), 
            .Z(n5402)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam mux_380_i6_3_lut_4_lut_then_3_lut.init = 16'h2a2a;
    ORCALUT4 mux_380_i6_3_lut_4_lut_else_3_lut (.A(n5364), .B(Brightness_Level[1]), 
            .C(n5369), .D(Brightness_Level[3]), .Z(n5401)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam mux_380_i6_3_lut_4_lut_else_3_lut.init = 16'h4000;
    ORCALUT4 i3366_2_lut (.A(n5373), .B(n1854), .Z(n5139)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam i3366_2_lut.init = 16'hbbbb;
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(Edge_Event_dly), .B(GMUX_RESET_L_c), 
            .C(n5095), .D(Delay_Counter[7]), .Z(n5015)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B+((D)+!C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(123[6:55])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hff6f;
    CCU2B add_661_17 (.A0(n4_adj_3), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4252), 
          .S0(n2409), .S1(n2425));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_661_17.INIT0 = 16'haaaa;
    defparam add_661_17.INIT1 = 16'h0000;
    defparam add_661_17.INJECT1_0 = "NO";
    defparam add_661_17.INJECT1_1 = "NO";
    ORCALUT4 i2_4_lut (.A(Brightness_Level[0]), .B(n5376), .C(Brightness_Level[3]), 
            .D(n4_adj_21), .Z(n1854)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C)))) */ ;
    defparam i2_4_lut.init = 16'h48c0;
    ORCALUT4 i1_2_lut (.A(Brightness_Level[2]), .B(Brightness_Level[1]), 
            .Z(n4_adj_21)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    ORCALUT4 Brightness_Level_2__bdd_4_lut_3505 (.A(Brightness_Level[2]), 
            .B(n5364), .C(n5369), .D(Brightness_Level[3]), .Z(n5404)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A (B+!(D))) */ ;
    defparam Brightness_Level_2__bdd_4_lut_3505.init = 16'hc477;
    ORCALUT4 mux_380_i2_3_lut_4_lut_4_lut_then_4_lut (.A(n5376), .B(Brightness_Level[0]), 
            .C(Brightness_Level[1]), .D(Brightness_Level[3]), .Z(n5406)) /* synthesis lut_function=(!((B (C+!(D))+!B !(D))+!A)) */ ;
    defparam mux_380_i2_3_lut_4_lut_4_lut_then_4_lut.init = 16'h2a00;
    ORCALUT4 i81_4_lut (.A(Last_Key_Press[1]), .B(n4931), .C(n5391), .D(Brightness_Level[1]), 
            .Z(n572)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(196[16:64])
    defparam i81_4_lut.init = 16'haaa8;
    CCU2B PWM_Counter_408_add_4_3 (.A0(PWM_Counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4221), .COUT(n4222), .S0(n89), .S1(n88));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408_add_4_3.INIT0 = 16'haaa0;
    defparam PWM_Counter_408_add_4_3.INIT1 = 16'haaa0;
    defparam PWM_Counter_408_add_4_3.INJECT1_0 = "NO";
    defparam PWM_Counter_408_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_adj_2 (.A(Brightness_Level[0]), .B(Brightness_Level[4]), 
            .Z(n4931)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_2.init = 16'heeee;
    ORCALUT4 mux_380_i2_3_lut_4_lut_4_lut_else_4_lut (.A(n5376), .B(Brightness_Level[0]), 
            .C(Brightness_Level[1]), .D(Brightness_Level[3]), .Z(n5405)) /* synthesis lut_function=(!((B (C+!(D))+!B !(C (D)))+!A)) */ ;
    defparam mux_380_i2_3_lut_4_lut_4_lut_else_4_lut.init = 16'h2800;
    ORCALUT4 i511_4_lut_else_3_lut (.A(n5539), .B(Brightness_Level[1]), 
            .C(Brightness_Level[0]), .D(n572), .Z(n5408)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(196[13] 200[7])
    defparam i511_4_lut_else_3_lut.init = 16'h5455;
    CCU2B Prescale_Counter_407_add_4_13 (.A0(n12), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n11), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4214), .COUT(n4215), .S0(n109), .S1(n108));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407_add_4_13.INIT0 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_13.INIT1 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_13.INJECT1_0 = "NO";
    defparam Prescale_Counter_407_add_4_13.INJECT1_1 = "NO";
    CCU2B add_661_15 (.A0(n8), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n6_adj_2), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n4251), 
          .COUT(n4252), .S0(n2411), .S1(n2410));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_661_15.INIT0 = 16'haaaa;
    defparam add_661_15.INIT1 = 16'haaaa;
    defparam add_661_15.INJECT1_0 = "NO";
    defparam add_661_15.INJECT1_1 = "NO";
    ORCALUT4 i3345_3_lut_4_lut_4_lut (.A(n5361), .B(n1930), .C(n5365), 
            .D(Duty_Cycle[10]), .Z(n3343)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i3345_3_lut_4_lut_4_lut.init = 16'hc5c0;
    ORCALUT4 i1_4_lut_adj_3 (.A(n5539), .B(Brightness_Level[1]), .C(Brightness_Level[2]), 
            .D(n5366), .Z(Brightness_Level_4__N_78[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_adj_3.init = 16'h78e1;
    CCU2B PWM_Counter_408_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(PWM_Counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n4221), .S1(n90));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408_add_4_1.INIT0 = 16'h0000;
    defparam PWM_Counter_408_add_4_1.INIT1 = 16'h555f;
    defparam PWM_Counter_408_add_4_1.INJECT1_0 = "NO";
    defparam PWM_Counter_408_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 n2047_bdd_3_lut (.A(N_Frames_Counter[4]), .B(N_Frames_Counter[3]), 
            .C(N_Frames_Counter[5]), .Z(n5307)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n2047_bdd_3_lut.init = 16'hfefe;
    PFUMX i1572 (.BLUT(n42), .ALUT(n3336), .C0(n1854), .Z(n2886));
    CCU2B Prescale_Counter_407_add_4_11 (.A0(n14_adj_10), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(n13), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4213), .COUT(n4214), .S0(n111), .S1(n110));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407_add_4_11.INIT0 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_11.INIT1 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_11.INJECT1_0 = "NO";
    defparam Prescale_Counter_407_add_4_11.INJECT1_1 = "NO";
    ORCALUT4 n2047_bdd_4_lut (.A(n5389), .B(N_Frames_Counter[4]), .C(N_Frames_Counter[3]), 
            .D(N_Frames_Counter[5]), .Z(n5306)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam n2047_bdd_4_lut.init = 16'h7fff;
    CCU2B Prescale_Counter_407_add_4_9 (.A0(n16_adj_8), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n15), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4212), .COUT(n4213), .S0(n113), .S1(n112));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407_add_4_9.INIT0 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_9.INIT1 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_9.INJECT1_0 = "NO";
    defparam Prescale_Counter_407_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 mux_380_i11_3_lut_4_lut (.A(Brightness_Level[1]), .B(n5362), 
            .C(n5364), .D(n5354), .Z(n1980)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam mux_380_i11_3_lut_4_lut.init = 16'hf707;
    PFUMX mux_267_i13 (.BLUT(n1928), .ALUT(n1663), .C0(n5358), .Z(n1743));
    CCU2B add_661_13 (.A0(n12_adj_19), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n10), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n4250), 
          .COUT(n4251), .S0(n2413), .S1(n2412));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_661_13.INIT0 = 16'haaaa;
    defparam add_661_13.INIT1 = 16'haaaa;
    defparam add_661_13.INJECT1_0 = "NO";
    defparam add_661_13.INJECT1_1 = "NO";
    ORCALUT4 Brightness_Level_4__I_3_2_lut_rep_104 (.A(Last_Key_Press[0]), 
            .B(Brightness_Level[4]), .Z(n5539)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(194[8:58])
    defparam Brightness_Level_4__I_3_2_lut_rep_104.init = 16'h2222;
    CCU2B add_661_11 (.A0(n16), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n14), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n4249), 
          .COUT(n4250), .S0(n2415), .S1(n2414));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_661_11.INIT0 = 16'haaaa;
    defparam add_661_11.INIT1 = 16'haaaa;
    defparam add_661_11.INJECT1_0 = "NO";
    defparam add_661_11.INJECT1_1 = "NO";
    ORCALUT4 mux_267_i3_3_lut (.A(n1673), .B(n5404), .C(n1854), .Z(n1753)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam mux_267_i3_3_lut.init = 16'hcaca;
    ORCALUT4 i511_4_lut_then_3_lut_4_lut (.A(Last_Key_Press[0]), .B(Brightness_Level[4]), 
            .C(Brightness_Level[0]), .D(Brightness_Level[1]), .Z(n5409)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(194[8:58])
    defparam i511_4_lut_then_3_lut_4_lut.init = 16'hfddd;
    ORCALUT4 mux_267_i10_3_lut (.A(n1673), .B(n3607), .C(n1854), .Z(n1746)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam mux_267_i10_3_lut.init = 16'h3a3a;
    ORCALUT4 i749_4_lut (.A(GMUX_RESET_L_c), .B(Decoded_Frame[4]), .C(n5003), 
            .D(n3603), .Z(Decoded_Frame_13__N_176[4])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(126[15] 134[8])
    defparam i749_4_lut.init = 16'hccca;
    ORCALUT4 i1125_4_lut_4_lut (.A(Brightness_Level[2]), .B(n5361), .C(n5365), 
            .D(Duty_Cycle[13]), .Z(n2892)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D)))) */ ;
    defparam i1125_4_lut_4_lut.init = 16'ha3a0;
    ORCALUT4 i347_1_lut (.A(cout), .Z(LCD_BKLT_PWM_c_0)) /* synthesis lut_function=(!(A)) */ ;
    defparam i347_1_lut.init = 16'h5555;
    ORCALUT4 i3364_2_lut (.A(n5373), .B(n1854), .Z(n5142)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam i3364_2_lut.init = 16'heeee;
    PFUMX mux_267_i4 (.BLUT(n1672), .ALUT(n4726), .C0(n1854), .Z(n1752));
    ORCALUT4 i1747_4_lut (.A(N_Frames_Counter[5]), .B(n4694), .C(N_Frames_Counter[4]), 
            .D(n5371), .Z(n322)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+!(C (D))))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(156[13] 158[7])
    defparam i1747_4_lut.init = 16'h1222;
    CCU2B add_661_9 (.A0(n20_adj_6), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n18_adj_18), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4248), .COUT(n4249), .S0(n2417), .S1(n2416));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_661_9.INIT0 = 16'haaaa;
    defparam add_661_9.INIT1 = 16'haaaa;
    defparam add_661_9.INJECT1_0 = "NO";
    defparam add_661_9.INJECT1_1 = "NO";
    ORCALUT4 i1753_3_lut (.A(N_Frames_Counter[1]), .B(n4694), .C(N_Frames_Counter[0]), 
            .Z(n326)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(156[13] 158[7])
    defparam i1753_3_lut.init = 16'h1212;
    ORCALUT4 i3357_4_lut (.A(n5107), .B(n5355), .C(n4961), .D(Decoded_Frame_13__N_176[10]), 
            .Z(LPC_CLK33M_GMUX_c_enable_18)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam i3357_4_lut.init = 16'h0200;
    ORCALUT4 i10_4_lut (.A(n5349), .B(Brightness_Level[4]), .C(n5373), 
            .D(Duty_Cycle[14]), .Z(n6_adj_1)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i10_4_lut.init = 16'hcac0;
    ORCALUT4 i1_2_lut_adj_4 (.A(Decoded_Frame_13__N_176[6]), .B(n4959), 
            .Z(n4961)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_4.init = 16'hdddd;
    FD1S3IX Decoded_Frame__i2 (.D(Decoded_Frame_13__N_176[2]), .CK(LPC_CLK33M_GMUX_c), 
            .CD(LPC_CLK33M_GMUX_c_enable_14), .Q(Decoded_Frame[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Decoded_Frame__i2.GSR = "ENABLED";
    FD1S3IX Decoded_Frame__i3 (.D(Decoded_Frame_13__N_176[3]), .CK(LPC_CLK33M_GMUX_c), 
            .CD(LPC_CLK33M_GMUX_c_enable_14), .Q(Decoded_Frame[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Decoded_Frame__i3.GSR = "ENABLED";
    FD1S3IX Decoded_Frame__i4 (.D(Decoded_Frame_13__N_176[4]), .CK(LPC_CLK33M_GMUX_c), 
            .CD(LPC_CLK33M_GMUX_c_enable_14), .Q(Decoded_Frame[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Decoded_Frame__i4.GSR = "ENABLED";
    FD1S3IX Decoded_Frame__i5 (.D(Decoded_Frame_13__N_176[5]), .CK(LPC_CLK33M_GMUX_c), 
            .CD(LPC_CLK33M_GMUX_c_enable_14), .Q(Decoded_Frame[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Decoded_Frame__i5.GSR = "ENABLED";
    FD1S3IX Decoded_Frame__i6 (.D(Decoded_Frame_13__N_176[6]), .CK(LPC_CLK33M_GMUX_c), 
            .CD(LPC_CLK33M_GMUX_c_enable_14), .Q(Decoded_Frame[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Decoded_Frame__i6.GSR = "ENABLED";
    FD1S3IX Decoded_Frame__i7 (.D(Decoded_Frame_13__N_176[7]), .CK(LPC_CLK33M_GMUX_c), 
            .CD(LPC_CLK33M_GMUX_c_enable_14), .Q(Decoded_Frame[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Decoded_Frame__i7.GSR = "ENABLED";
    FD1S3IX Decoded_Frame__i8 (.D(Decoded_Frame_13__N_176[8]), .CK(LPC_CLK33M_GMUX_c), 
            .CD(LPC_CLK33M_GMUX_c_enable_14), .Q(Decoded_Frame[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Decoded_Frame__i8.GSR = "ENABLED";
    FD1S3IX Decoded_Frame__i9 (.D(Decoded_Frame_13__N_176[9]), .CK(LPC_CLK33M_GMUX_c), 
            .CD(LPC_CLK33M_GMUX_c_enable_14), .Q(Decoded_Frame[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Decoded_Frame__i9.GSR = "ENABLED";
    FD1S3IX Decoded_Frame__i10 (.D(Decoded_Frame_13__N_176[10]), .CK(LPC_CLK33M_GMUX_c), 
            .CD(LPC_CLK33M_GMUX_c_enable_14), .Q(Decoded_Frame[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Decoded_Frame__i10.GSR = "ENABLED";
    FD1S3IX Decoded_Frame__i11 (.D(Decoded_Frame_13__N_176[11]), .CK(LPC_CLK33M_GMUX_c), 
            .CD(LPC_CLK33M_GMUX_c_enable_14), .Q(Decoded_Frame[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Decoded_Frame__i11.GSR = "ENABLED";
    FD1S3IX Decoded_Frame__i12 (.D(Decoded_Frame_13__N_176[12]), .CK(LPC_CLK33M_GMUX_c), 
            .CD(LPC_CLK33M_GMUX_c_enable_14), .Q(Decoded_Frame[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Decoded_Frame__i12.GSR = "ENABLED";
    FD1S3IX Decoded_Frame__i13 (.D(Decoded_Frame_13__N_176[13]), .CK(LPC_CLK33M_GMUX_c), 
            .CD(LPC_CLK33M_GMUX_c_enable_14), .Q(Decoded_Frame[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam Decoded_Frame__i13.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i1 (.D(n119), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i1.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i2 (.D(n118), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i2.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i3 (.D(n117), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i3.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i4 (.D(n116), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n19_adj_7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i4.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i5 (.D(n115), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n18)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i5.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i6 (.D(n114), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i6.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i7 (.D(n113), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n16_adj_8)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i7.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i8 (.D(n112), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i8.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i9 (.D(n111), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n14_adj_10)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i9.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i10 (.D(n110), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n13)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i10.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i11 (.D(n109), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n12)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i11.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i12 (.D(n108), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n11)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i12.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i13 (.D(n107), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n10_adj_12)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i13.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i14 (.D(n106), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n9)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i14.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i15 (.D(n105), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n8_adj_13)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i15.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i16 (.D(n104), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i16.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i17 (.D(n103), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n6_adj_15)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i17.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i18 (.D(n102), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n5)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i18.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i19 (.D(n101), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n4_adj_16)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i19.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i20 (.D(n100), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n3)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i20.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i21 (.D(n99), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n2_adj_17)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i21.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_407__i22 (.D(n98), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(Prescale_Counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407__i22.GSR = "ENABLED";
    FD1S3AX PWM_Counter_408__i1 (.D(n89), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408__i1.GSR = "ENABLED";
    FD1S3AX PWM_Counter_408__i2 (.D(n88), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408__i2.GSR = "ENABLED";
    FD1S3AX PWM_Counter_408__i3 (.D(n87), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408__i3.GSR = "ENABLED";
    FD1S3AX PWM_Counter_408__i4 (.D(n86), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408__i4.GSR = "ENABLED";
    FD1S3AX PWM_Counter_408__i5 (.D(n85), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408__i5.GSR = "ENABLED";
    FD1S3AX PWM_Counter_408__i6 (.D(n84), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408__i6.GSR = "ENABLED";
    FD1S3AX PWM_Counter_408__i7 (.D(n83), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408__i7.GSR = "ENABLED";
    FD1S3AX PWM_Counter_408__i8 (.D(n82), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408__i8.GSR = "ENABLED";
    FD1S3AX PWM_Counter_408__i9 (.D(n81), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408__i9.GSR = "ENABLED";
    FD1S3AX PWM_Counter_408__i10 (.D(n80_adj_4), .CK(LPC_CLK33M_GMUX_c), 
            .Q(PWM_Counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408__i10.GSR = "ENABLED";
    FD1S3AX PWM_Counter_408__i11 (.D(n79_adj_5), .CK(LPC_CLK33M_GMUX_c), 
            .Q(PWM_Counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408__i11.GSR = "ENABLED";
    FD1S3AX PWM_Counter_408__i12 (.D(n78), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408__i12.GSR = "ENABLED";
    FD1S3AX PWM_Counter_408__i13 (.D(n77), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408__i13.GSR = "ENABLED";
    FD1S3AX PWM_Counter_408__i14 (.D(n76), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408__i14.GSR = "ENABLED";
    FD1S3AX PWM_Counter_408__i15 (.D(n75), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408__i15.GSR = "ENABLED";
    FD1S3AX PWM_Counter_408__i16 (.D(n74), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(258[20:35])
    defparam PWM_Counter_408__i16.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i1 (.D(n2423), .CK(LPC_CLK33M_GMUX_c), .CD(n2654), 
            .Q(n32_adj_14));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_117_e1_i0_i1.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i2 (.D(n2422), .CK(LPC_CLK33M_GMUX_c), .CD(n2654), 
            .Q(n30));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_117_e1_i0_i2.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i3 (.D(n2421), .CK(LPC_CLK33M_GMUX_c), .CD(n2654), 
            .Q(n28));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_117_e1_i0_i3.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i4 (.D(n2420), .CK(LPC_CLK33M_GMUX_c), .CD(n2654), 
            .Q(n26_adj_11));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_117_e1_i0_i4.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i5 (.D(n2419), .CK(LPC_CLK33M_GMUX_c), .CD(n2654), 
            .Q(n24));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_117_e1_i0_i5.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i6 (.D(n2418), .CK(LPC_CLK33M_GMUX_c), .CD(n2654), 
            .Q(n22_adj_9));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_117_e1_i0_i6.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i7 (.D(n2417), .CK(LPC_CLK33M_GMUX_c), .CD(n2654), 
            .Q(n20_adj_6));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_117_e1_i0_i7.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i8 (.D(n2416), .CK(LPC_CLK33M_GMUX_c), .CD(n2654), 
            .Q(n18_adj_18));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_117_e1_i0_i8.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i9 (.D(n2415), .CK(LPC_CLK33M_GMUX_c), .CD(n2654), 
            .Q(n16));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_117_e1_i0_i9.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i10 (.D(n2414), .CK(LPC_CLK33M_GMUX_c), .CD(n2654), 
            .Q(n14));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_117_e1_i0_i10.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i11 (.D(n2413), .CK(LPC_CLK33M_GMUX_c), .CD(n2654), 
            .Q(n12_adj_19));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_117_e1_i0_i11.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i12 (.D(n2412), .CK(LPC_CLK33M_GMUX_c), .CD(n2654), 
            .Q(n10));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_117_e1_i0_i12.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i13 (.D(n2411), .CK(LPC_CLK33M_GMUX_c), .CD(n2654), 
            .Q(n8));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_117_e1_i0_i13.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i14 (.D(n2410), .CK(LPC_CLK33M_GMUX_c), .CD(n2654), 
            .Q(n6_adj_2));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_117_e1_i0_i14.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i15 (.D(n2409), .CK(LPC_CLK33M_GMUX_c), .CD(n2654), 
            .Q(n4_adj_3));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_117_e1_i0_i15.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_adj_5 (.A(n5079), .B(Decoded_Frame_13__N_176[13]), 
            .C(Decoded_Frame_13__N_176[4]), .D(LPC_CLK33M_GMUX_c_enable_14), 
            .Z(n4959)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_5.init = 16'hdfff;
    PFUMX i3437 (.BLUT(n5359), .ALUT(n5330), .C0(n1854), .Z(n5331));
    ORCALUT4 i3253_2_lut (.A(Decoded_Frame_13__N_176[12]), .B(Decoded_Frame_13__N_176[8]), 
            .Z(n5079)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3253_2_lut.init = 16'h8888;
    ORCALUT4 i1_4_lut_adj_6 (.A(Delay_Counter[10]), .B(n3603), .C(n5381), 
            .D(Delay_Counter[9]), .Z(LPC_CLK33M_GMUX_c_enable_30)) /* synthesis lut_function=((B (C)+!B (C+!(D)))+!A) */ ;
    defparam i1_4_lut_adj_6.init = 16'hf5f7;
    ORCALUT4 i887_2_lut (.A(GMUX_RESET_L_c), .B(n2425), .Z(n2654)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam i887_2_lut.init = 16'heeee;
    CCU2B add_661_7 (.A0(n24), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n22_adj_9), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4247), .COUT(n4248), .S0(n2419), .S1(n2418));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_661_7.INIT0 = 16'haaaa;
    defparam add_661_7.INIT1 = 16'haaaa;
    defparam add_661_7.INJECT1_0 = "NO";
    defparam add_661_7.INJECT1_1 = "NO";
    CCU2B add_661_5 (.A0(n28), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n26_adj_11), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4246), .COUT(n4247), .S0(n2421), .S1(n2420));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_661_5.INIT0 = 16'haaaa;
    defparam add_661_5.INIT1 = 16'haaaa;
    defparam add_661_5.INJECT1_0 = "NO";
    defparam add_661_5.INJECT1_1 = "NO";
    CCU2B add_649_add_4_16 (.A0(PWM_Counter[13]), .B0(Duty_Cycle[13]), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[14]), .B1(Duty_Cycle[14]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4236), .COUT(n4237));
    defparam add_649_add_4_16.INIT0 = 16'h999a;
    defparam add_649_add_4_16.INIT1 = 16'h999a;
    defparam add_649_add_4_16.INJECT1_0 = "NO";
    defparam add_649_add_4_16.INJECT1_1 = "NO";
    CCU2B add_661_3 (.A0(n32_adj_14), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n30), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n4245), 
          .COUT(n4246), .S0(n2423), .S1(n2422));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_661_3.INIT0 = 16'haaaa;
    defparam add_661_3.INIT1 = 16'haaaa;
    defparam add_661_3.INJECT1_0 = "NO";
    defparam add_661_3.INJECT1_1 = "NO";
    CCU2B add_649_add_4_14 (.A0(PWM_Counter[11]), .B0(Duty_Cycle[11]), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[12]), .B1(Duty_Cycle[12]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4235), .COUT(n4236));
    defparam add_649_add_4_14.INIT0 = 16'h999a;
    defparam add_649_add_4_14.INIT1 = 16'h999a;
    defparam add_649_add_4_14.INJECT1_0 = "NO";
    defparam add_649_add_4_14.INJECT1_1 = "NO";
    CCU2B add_661_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n34), .B1(GMUX_RESET_L_c), .C1(GND_net), .D1(VCC_net), 
          .COUT(n4245), .S1(n2424));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(143[20:37])
    defparam add_661_1.INIT0 = 16'h0000;
    defparam add_661_1.INIT1 = 16'h999a;
    defparam add_661_1.INJECT1_0 = "NO";
    defparam add_661_1.INJECT1_1 = "NO";
    ORCALUT4 i3355_4_lut (.A(n5356), .B(n19), .C(n5105), .D(n4977), 
            .Z(LPC_CLK33M_GMUX_c_enable_29)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam i3355_4_lut.init = 16'h0080;
    ORCALUT4 i3277_2_lut (.A(Decoded_Frame_13__N_176[6]), .B(Decoded_Frame_13__N_176[10]), 
            .Z(n5105)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3277_2_lut.init = 16'h8888;
    CCU2B add_649_add_4_12 (.A0(PWM_Counter[9]), .B0(Duty_Cycle[9]), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[10]), .B1(Duty_Cycle[10]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4234), .COUT(n4235));
    defparam add_649_add_4_12.INIT0 = 16'h999a;
    defparam add_649_add_4_12.INIT1 = 16'h999a;
    defparam add_649_add_4_12.INJECT1_0 = "NO";
    defparam add_649_add_4_12.INJECT1_1 = "NO";
    ORCALUT4 i3375_3_lut_4_lut (.A(Bit_Number[2]), .B(Bit_Number[3]), .C(Bit_Number[1]), 
            .D(Bit_Number[0]), .Z(n3601)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (D))) */ ;
    defparam i3375_3_lut_4_lut.init = 16'h007f;
    ORCALUT4 mux_267_i5_then_4_lut (.A(Brightness_Level[2]), .B(n5370), 
            .C(Brightness_Level[3]), .D(n5369), .Z(n5393)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)+!B !((D)+!C)))) */ ;
    defparam mux_267_i5_then_4_lut.init = 16'h6070;
    ORCALUT4 i3340_3_lut_4_lut_4_lut (.A(n5360), .B(n3596), .C(n5365), 
            .D(Brightness_Level[2]), .Z(n3560)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i3340_3_lut_4_lut_4_lut.init = 16'h5c0c;
    ORCALUT4 i1_2_lut_rep_72_3_lut (.A(Brightness_Level[2]), .B(n5369), 
            .C(Brightness_Level[3]), .Z(n5360)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_72_3_lut.init = 16'h0808;
    ORCALUT4 i1_4_lut_adj_7 (.A(n5118), .B(Delay_Counter[2]), .C(Delay_Counter[8]), 
            .D(n4473), .Z(n4831)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_4_lut_adj_7.init = 16'hff7f;
    ORCALUT4 i1_2_lut_rep_76_3_lut_4_lut (.A(n5385), .B(Brightness_Level[2]), 
            .C(Brightness_Level[3]), .D(n5376), .Z(n5364)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;
    defparam i1_2_lut_rep_76_3_lut_4_lut.init = 16'h6000;
    ORCALUT4 i3290_4_lut (.A(Delay_Counter[5]), .B(Delay_Counter[1]), .C(Delay_Counter[10]), 
            .D(Delay_Counter[0]), .Z(n5118)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3290_4_lut.init = 16'h8000;
    ORCALUT4 i1_2_lut_adj_8 (.A(Bit_Number[2]), .B(Bit_Number[3]), .Z(n4473)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(127[7:32])
    defparam i1_2_lut_adj_8.init = 16'heeee;
    ORCALUT4 i3267_2_lut (.A(Delay_Counter[5]), .B(Delay_Counter[1]), .Z(n5095)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3267_2_lut.init = 16'h8888;
    ORCALUT4 i3390_3_lut_4_lut (.A(Bit_Number[2]), .B(Bit_Number[3]), .C(Bit_Number[1]), 
            .D(Bit_Number[0]), .Z(n6_adj_20)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;
    defparam i3390_3_lut_4_lut.init = 16'h0770;
    ORCALUT4 i1754_2_lut_rep_60 (.A(n2425), .B(GMUX_RESET_L_c), .Z(LPC_CLK33M_GMUX_c_enable_14)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(142[8] 144[6])
    defparam i1754_2_lut_rep_60.init = 16'h2222;
    ORCALUT4 i1_3_lut_4_lut_adj_9 (.A(n5367), .B(n5372), .C(n1854), .D(n5365), 
            .Z(LPC_CLK33M_GMUX_c_enable_9)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_9.init = 16'hfffe;
    ORCALUT4 i745_4_lut (.A(GMUX_RESET_L_c), .B(Decoded_Frame[6]), .C(n4909), 
            .D(n4622), .Z(Decoded_Frame_13__N_176[6])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(126[15] 134[8])
    defparam i745_4_lut.init = 16'hccca;
    ORCALUT4 i1_2_lut_rep_77_3_lut_4_lut (.A(n5385), .B(Brightness_Level[2]), 
            .C(Brightness_Level[3]), .D(n5376), .Z(n5365)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;
    defparam i1_2_lut_rep_77_3_lut_4_lut.init = 16'h0600;
    ORCALUT4 i1_2_lut_rep_66_3_lut (.A(Brightness_Level[2]), .B(n5369), 
            .C(Brightness_Level[3]), .Z(n5354)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_66_3_lut.init = 16'h8080;
    ORCALUT4 i1_3_lut_4_lut_adj_10 (.A(n2425), .B(GMUX_RESET_L_c), .C(n5308), 
            .D(n4694), .Z(n4753)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(142[8] 144[6])
    defparam i1_3_lut_4_lut_adj_10.init = 16'h0020;
    ORCALUT4 mux_267_i5_else_4_lut (.A(Brightness_Level[2]), .B(n5365), 
            .C(n5357), .Z(n5392)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam mux_267_i5_else_4_lut.init = 16'hb8b8;
    ORCALUT4 equal_134_i5_2_lut_rep_95 (.A(Bit_Number[0]), .B(Bit_Number[1]), 
            .Z(n5383)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(127[7:32])
    defparam equal_134_i5_2_lut_rep_95.init = 16'hdddd;
    CCU2B add_116_add_4_11 (.A0(Delay_Counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(Delay_Counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4243), .S0(n29), .S1(n26));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(136[22:38])
    defparam add_116_add_4_11.INIT0 = 16'haaaa;
    defparam add_116_add_4_11.INIT1 = 16'haaaa;
    defparam add_116_add_4_11.INJECT1_0 = "NO";
    defparam add_116_add_4_11.INJECT1_1 = "NO";
    CCU2B Prescale_Counter_407_add_4_23 (.A0(n2_adj_17), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(Prescale_Counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4219), .S0(n99), .S1(n98));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407_add_4_23.INIT0 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_23.INIT1 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_23.INJECT1_0 = "NO";
    defparam Prescale_Counter_407_add_4_23.INJECT1_1 = "NO";
    ORCALUT4 i1_2_lut_3_lut (.A(Bit_Number[0]), .B(Bit_Number[1]), .C(n4831), 
            .Z(n4749)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(127[7:32])
    defparam i1_2_lut_3_lut.init = 16'hfdfd;
    ORCALUT4 i1_2_lut_rep_96 (.A(Key_Clock), .B(Brightness_Trigger_dly), 
            .Z(n5384)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(215[36:83])
    defparam i1_2_lut_rep_96.init = 16'h2222;
    ORCALUT4 i1_2_lut_rep_88_3_lut (.A(Key_Clock), .B(Brightness_Trigger_dly), 
            .C(Brightness_Level[4]), .Z(n5376)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(215[36:83])
    defparam i1_2_lut_rep_88_3_lut.init = 16'h0202;
    ORCALUT4 i1_2_lut_rep_84_3_lut_4_lut (.A(Key_Clock), .B(Brightness_Trigger_dly), 
            .C(n4725), .D(Brightness_Level[4]), .Z(n5372)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(215[36:83])
    defparam i1_2_lut_rep_84_3_lut_4_lut.init = 16'h0002;
    ORCALUT4 i1_4_lut_adj_11 (.A(n4753), .B(n4777), .C(n4769), .D(n4499), 
            .Z(n2029)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(121[9] 169[5])
    defparam i1_4_lut_adj_11.init = 16'h888a;
    CCU2B add_649_add_4_10 (.A0(PWM_Counter[7]), .B0(Duty_Cycle[7]), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[8]), .B1(Duty_Cycle[8]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4233), .COUT(n4234));
    defparam add_649_add_4_10.INIT0 = 16'h999a;
    defparam add_649_add_4_10.INIT1 = 16'h999a;
    defparam add_649_add_4_10.INJECT1_0 = "NO";
    defparam add_649_add_4_10.INJECT1_1 = "NO";
    ORCALUT4 i1694_2_lut_rep_97 (.A(Brightness_Level[1]), .B(Brightness_Level[0]), 
            .Z(n5385)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1694_2_lut_rep_97.init = 16'h8888;
    ORCALUT4 i15_2_lut_rep_87_3_lut (.A(Brightness_Level[1]), .B(Brightness_Level[0]), 
            .C(Brightness_Level[2]), .Z(n5375)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;
    defparam i15_2_lut_rep_87_3_lut.init = 16'h7878;
    ORCALUT4 i2_3_lut_4_lut (.A(Brightness_Level[1]), .B(Brightness_Level[0]), 
            .C(Brightness_Level[2]), .D(Brightness_Level[3]), .Z(n4719)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h8000;
    CCU2B add_649_add_4_8 (.A0(PWM_Counter[5]), .B0(Duty_Cycle[5]), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[6]), .B1(Duty_Cycle[6]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4232), .COUT(n4233));
    defparam add_649_add_4_8.INIT0 = 16'h999a;
    defparam add_649_add_4_8.INIT1 = 16'h999a;
    defparam add_649_add_4_8.INJECT1_0 = "NO";
    defparam add_649_add_4_8.INJECT1_1 = "NO";
    ORCALUT4 i731_4_lut (.A(GMUX_RESET_L_c), .B(Decoded_Frame[13]), .C(n4949), 
            .D(n4622), .Z(Decoded_Frame_13__N_176[13])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(126[15] 134[8])
    defparam i731_4_lut.init = 16'hccca;
    ORCALUT4 n6_bdd_2_lut_3411_3_lut_4_lut (.A(Brightness_Level[2]), .B(n5369), 
            .C(Brightness_Level[1]), .D(Brightness_Level[3]), .Z(n5290)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam n6_bdd_2_lut_3411_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 mux_251_i3_3_lut_4_lut (.A(Brightness_Level[2]), .B(n5360), 
            .C(n5365), .D(n5359), .Z(n1673)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam mux_251_i3_3_lut_4_lut.init = 16'h1f10;
    ORCALUT4 i1_2_lut_rep_98 (.A(Delay_Counter[9]), .B(Delay_Counter[4]), 
            .Z(n5386)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_98.init = 16'heeee;
    CCU2B add_116_add_4_9 (.A0(Delay_Counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(Delay_Counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4242), .COUT(n4243), .S0(n35), .S1(n32));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(136[22:38])
    defparam add_116_add_4_9.INIT0 = 16'haaaa;
    defparam add_116_add_4_9.INIT1 = 16'haaaa;
    defparam add_116_add_4_9.INJECT1_0 = "NO";
    defparam add_116_add_4_9.INJECT1_1 = "NO";
    CCU2B add_649_add_4_6 (.A0(PWM_Counter[3]), .B0(Duty_Cycle[3]), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[4]), .B1(Duty_Cycle[4]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4231), .COUT(n4232));
    defparam add_649_add_4_6.INIT0 = 16'h999a;
    defparam add_649_add_4_6.INIT1 = 16'h999a;
    defparam add_649_add_4_6.INJECT1_0 = "NO";
    defparam add_649_add_4_6.INJECT1_1 = "NO";
    ORCALUT4 i1_3_lut_4_lut_adj_12 (.A(Delay_Counter[9]), .B(Delay_Counter[4]), 
            .C(n5388), .D(n4489), .Z(n5027)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_12.init = 16'hfffe;
    ORCALUT4 i3283_3_lut_4_lut (.A(Delay_Counter[0]), .B(Delay_Counter[2]), 
            .C(Delay_Counter[1]), .D(Delay_Counter[10]), .Z(n5111)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3283_3_lut_4_lut.init = 16'h8000;
    VLO i1 (.Z(GND_net));
    ORCALUT4 i3292_3_lut_4_lut (.A(Delay_Counter[0]), .B(Delay_Counter[2]), 
            .C(Delay_Counter[10]), .D(Delay_Counter[8]), .Z(n5120)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3292_3_lut_4_lut.init = 16'h8000;
    CCU2B add_649_add_4_4 (.A0(PWM_Counter[1]), .B0(Duty_Cycle[1]), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[2]), .B1(Duty_Cycle[2]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4230), .COUT(n4231));
    defparam add_649_add_4_4.INIT0 = 16'h999a;
    defparam add_649_add_4_4.INIT1 = 16'h999a;
    defparam add_649_add_4_4.INJECT1_0 = "NO";
    defparam add_649_add_4_4.INJECT1_1 = "NO";
    ORCALUT4 i1_3_lut_4_lut_adj_13 (.A(Brightness_Level[3]), .B(n5363), 
            .C(n5375), .D(n1854), .Z(n4710)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_13.init = 16'h2000;
    ORCALUT4 equal_141_i5_2_lut_rep_99 (.A(Bit_Number[0]), .B(Bit_Number[1]), 
            .Z(n5387)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(127[7:32])
    defparam equal_141_i5_2_lut_rep_99.init = 16'hbbbb;
    ORCALUT4 i1_2_lut_3_lut_adj_14 (.A(Bit_Number[0]), .B(Bit_Number[1]), 
            .C(n4831), .Z(n4851)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(127[7:32])
    defparam i1_2_lut_3_lut_adj_14.init = 16'hfbfb;
    ORCALUT4 mux_377_i2_rep_20_3_lut_4_lut_4_lut (.A(Brightness_Level[2]), 
            .B(n5369), .C(Brightness_Level[1]), .D(Brightness_Level[3]), 
            .Z(n5127)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;
    defparam mux_377_i2_rep_20_3_lut_4_lut_4_lut.init = 16'haaa2;
    ORCALUT4 i1733_2_lut_3_lut_4_lut_3_lut (.A(Brightness_Level[2]), .B(Brightness_Level[3]), 
            .C(n5369), .Z(n1930)) /* synthesis lut_function=(!(A (B+!(C)))) */ ;
    defparam i1733_2_lut_3_lut_4_lut_3_lut.init = 16'h7575;
    ORCALUT4 mux_377_i13_3_lut_4_lut_4_lut (.A(Brightness_Level[2]), .B(Brightness_Level[1]), 
            .C(n5363), .D(Brightness_Level[3]), .Z(n1928)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B+(C+(D))))) */ ;
    defparam mux_377_i13_3_lut_4_lut_4_lut.init = 16'h555c;
    ORCALUT4 i1811_2_lut_rep_100 (.A(Bit_Number[0]), .B(Bit_Number[1]), 
            .Z(n5388)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1811_2_lut_rep_100.init = 16'heeee;
    PFUMX i3425 (.BLUT(n5307), .ALUT(n5306), .C0(N_Frames_Counter[2]), 
          .Z(n5308));
    ORCALUT4 i414_4_lut (.A(n5374), .B(LPC_CLK33M_GMUX_c_enable_14), .C(n3603), 
            .D(n5065), .Z(LPC_CLK33M_GMUX_c_enable_17)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;
    defparam i414_4_lut.init = 16'hcdcc;
    CCU2B add_116_add_4_7 (.A0(Delay_Counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(Delay_Counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4241), .COUT(n4242), .S0(n41), .S1(n38));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(136[22:38])
    defparam add_116_add_4_7.INIT0 = 16'haaaa;
    defparam add_116_add_4_7.INIT1 = 16'haaaa;
    defparam add_116_add_4_7.INJECT1_0 = "NO";
    defparam add_116_add_4_7.INJECT1_1 = "NO";
    CCU2B Prescale_Counter_407_add_4_7 (.A0(n18), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n17), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4211), .COUT(n4212), .S0(n115), .S1(n114));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(181[23:43])
    defparam Prescale_Counter_407_add_4_7.INIT0 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_7.INIT1 = 16'haaa0;
    defparam Prescale_Counter_407_add_4_7.INJECT1_0 = "NO";
    defparam Prescale_Counter_407_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i8_4_lut_4_lut_4_lut (.A(n5362), .B(Brightness_Level[1]), .C(n5364), 
            .D(n5354), .Z(n4)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B+!(C (D)))) */ ;
    defparam i8_4_lut_4_lut_4_lut.init = 16'hc5f5;
    ORCALUT4 i430_2_lut_rep_101 (.A(N_Frames_Counter[1]), .B(N_Frames_Counter[0]), 
            .Z(n5389)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(157[24:44])
    defparam i430_2_lut_rep_101.init = 16'h8888;
    ORCALUT4 i1752_3_lut_4_lut (.A(N_Frames_Counter[1]), .B(N_Frames_Counter[0]), 
            .C(n4694), .D(N_Frames_Counter[2]), .Z(n325)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(157[24:44])
    defparam i1752_3_lut_4_lut.init = 16'h0708;
    ORCALUT4 i1_2_lut_adj_15 (.A(Last_Key_Press[1]), .B(Last_Key_Press[0]), 
            .Z(n4777)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_15.init = 16'heeee;
    ORCALUT4 i437_2_lut_rep_90_3_lut (.A(N_Frames_Counter[1]), .B(N_Frames_Counter[0]), 
            .C(N_Frames_Counter[2]), .Z(n5378)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(157[24:44])
    defparam i437_2_lut_rep_90_3_lut.init = 16'h8080;
    ORCALUT4 i444_2_lut_rep_83_3_lut_4_lut (.A(N_Frames_Counter[1]), .B(N_Frames_Counter[0]), 
            .C(N_Frames_Counter[3]), .D(N_Frames_Counter[2]), .Z(n5371)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(157[24:44])
    defparam i444_2_lut_rep_83_3_lut_4_lut.init = 16'h8000;
    ORCALUT4 i1_4_lut_adj_16 (.A(n5383), .B(n5111), .C(n5382), .D(n5087), 
            .Z(n4949)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(127[7:32])
    defparam i1_4_lut_adj_16.init = 16'hbfff;
    ORCALUT4 i1711_3_lut (.A(n5403), .B(Brightness_Level[4]), .C(n5373), 
            .Z(n3474)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam i1711_3_lut.init = 16'hcaca;
    ORCALUT4 mux_380_i12_3_lut_4_lut_4_lut (.A(Brightness_Level[4]), .B(n5373), 
            .C(n5362), .D(Brightness_Level[3]), .Z(n1979)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+!(C+(D))))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam mux_380_i12_3_lut_4_lut_4_lut.init = 16'h4447;
    ORCALUT4 i1716_3_lut_3_lut (.A(Brightness_Level[4]), .B(n5373), .C(n5407), 
            .Z(n3479)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam i1716_3_lut_3_lut.init = 16'h7474;
    ORCALUT4 i1746_3_lut_3_lut (.A(Brightness_Level[4]), .B(n5373), .C(n3583), 
            .Z(n3509)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam i1746_3_lut_3_lut.init = 16'h7474;
    ORCALUT4 i1093_3_lut_3_lut (.A(Brightness_Level[4]), .B(n5373), .C(n1980), 
            .Z(n2860)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam i1093_3_lut_3_lut.init = 16'h7474;
    ORCALUT4 i1_4_lut_adj_17 (.A(n5356), .B(n19), .C(n4763), .D(Decoded_Frame_13__N_176[10]), 
            .Z(n4769)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_17.init = 16'hf7ff;
    ORCALUT4 i1736_2_lut_3_lut_4_lut_4_lut (.A(Brightness_Level[1]), .B(Brightness_Level[3]), 
            .C(n5369), .D(Brightness_Level[2]), .Z(n1933)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam i1736_2_lut_3_lut_4_lut_4_lut.init = 16'h1000;
    ORCALUT4 n1846_bdd_3_lut_3443_4_lut_4_lut_4_lut (.A(Brightness_Level[1]), 
            .B(Brightness_Level[2]), .C(n5369), .D(Brightness_Level[3]), 
            .Z(n5288)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam n1846_bdd_3_lut_3443_4_lut_4_lut_4_lut.init = 16'hdf00;
    ORCALUT4 i1784_3_lut_4_lut_4_lut (.A(n5367), .B(n5372), .C(Duty_Cycle[0]), 
            .D(Brightness_Level[1]), .Z(n3547)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;
    defparam i1784_3_lut_4_lut_4_lut.init = 16'hba10;
    ORCALUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(Brightness_Level[3]), 
            .B(n5370), .C(n5369), .D(Brightness_Level[2]), .Z(n4726)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hf7ff;
    ORCALUT4 mux_380_i10_3_lut_4_lut_4_lut (.A(Brightness_Level[3]), .B(n5370), 
            .C(n5363), .D(n5362), .Z(n3607)) /* synthesis lut_function=(!(A (B (C))+!A !(D))) */ ;
    defparam mux_380_i10_3_lut_4_lut_4_lut.init = 16'h7f2a;
    ORCALUT4 mux_377_i1_3_lut_4_lut_4_lut_4_lut (.A(Brightness_Level[1]), 
            .B(Brightness_Level[3]), .C(n5369), .D(Brightness_Level[2]), 
            .Z(n1940)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam mux_377_i1_3_lut_4_lut_4_lut_4_lut.init = 16'hdf00;
    ORCALUT4 mux_380_i14_3_lut_4_lut (.A(Brightness_Level[2]), .B(n5354), 
            .C(n5364), .D(n1944), .Z(n1977)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam mux_380_i14_3_lut_4_lut.init = 16'h2f20;
    ORCALUT4 n1846_bdd_2_lut_3419_3_lut_4_lut_4_lut (.A(Brightness_Level[1]), 
            .B(Brightness_Level[3]), .C(n5369), .D(Brightness_Level[2]), 
            .Z(n5287)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam n1846_bdd_2_lut_3419_3_lut_4_lut_4_lut.init = 16'h4000;
    ORCALUT4 n1520_bdd_4_lut_4_lut (.A(Brightness_Level[3]), .B(n5370), 
            .C(n5369), .D(Brightness_Level[2]), .Z(n5330)) /* synthesis lut_function=(!((B (D)+!B ((D)+!C))+!A)) */ ;
    defparam n1520_bdd_4_lut_4_lut.init = 16'h00a8;
    ORCALUT4 mux_379_i11_3_lut_4_lut_4_lut_4_lut (.A(Brightness_Level[1]), 
            .B(Brightness_Level[3]), .C(n5369), .D(Brightness_Level[2]), 
            .Z(n1962)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam mux_379_i11_3_lut_4_lut_4_lut_4_lut.init = 16'h7f00;
    PFUMX i1115 (.BLUT(n3548), .ALUT(n3543), .C0(n5142), .Z(n2882));
    ORCALUT4 i1_3_lut_4_lut_adj_18 (.A(Last_Key_Press[0]), .B(Brightness_Level[4]), 
            .C(Brightness_Level[0]), .D(n572), .Z(Brightness_Level_4__N_78[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C))+!A (C (D)+!C !(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(194[8:58])
    defparam i1_3_lut_4_lut_adj_18.init = 16'h0fd2;
    ORCALUT4 i497_2_lut_rep_78_3_lut_4_lut (.A(Last_Key_Press[0]), .B(Brightness_Level[4]), 
            .C(Brightness_Level[0]), .D(n572), .Z(n5366)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C+!(D))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(194[8:58])
    defparam i497_2_lut_rep_78_3_lut_4_lut.init = 16'hf0fd;
    ORCALUT4 i1_4_lut_adj_19 (.A(n4489), .B(Delay_Counter[4]), .C(Delay_Counter[9]), 
            .D(n5059), .Z(n5065)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_19.init = 16'h0100;
    ORCALUT4 i1_3_lut_4_lut_adj_20 (.A(Last_Key_Press[0]), .B(Brightness_Level[4]), 
            .C(Brightness_Level[3]), .D(n6), .Z(Brightness_Level_4__N_78[3])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (C (D)+!C !(D))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(194[8:58])
    defparam i1_3_lut_4_lut_adj_20.init = 16'hd22d;
    ORCALUT4 i3372_3_lut_4_lut (.A(Brightness_Level[3]), .B(n5370), .C(n1854), 
            .D(n5373), .Z(n5137)) /* synthesis lut_function=(A (C+(D))+!A (B+(C+(D)))) */ ;
    defparam i3372_3_lut_4_lut.init = 16'hfff4;
    ORCALUT4 i1719_2_lut_rep_103 (.A(Brightness_Level[3]), .B(Brightness_Level[2]), 
            .Z(n5391)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1719_2_lut_rep_103.init = 16'heeee;
    ORCALUT4 i2_3_lut_4_lut_adj_21 (.A(Brightness_Level[3]), .B(Brightness_Level[2]), 
            .C(Brightness_Level[1]), .D(Brightness_Level[0]), .Z(n4725)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_21.init = 16'hfffe;
    ORCALUT4 i1780_3_lut (.A(n5400), .B(Brightness_Level[4]), .C(n5373), 
            .Z(n3543)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam i1780_3_lut.init = 16'hcaca;
    ORCALUT4 i1822_3_lut_4_lut_4_lut (.A(Brightness_Level[3]), .B(n5370), 
            .C(n3586), .D(n5363), .Z(n3587)) /* synthesis lut_function=(A (C)+!A !(B (D)+!B !(C))) */ ;
    defparam i1822_3_lut_4_lut_4_lut.init = 16'hb0f4;
    ORCALUT4 i1806_3_lut_4_lut (.A(Brightness_Level[3]), .B(n5370), .C(n5127), 
            .D(n3570), .Z(n3571)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i1806_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i3384_2_lut_rep_61_3_lut_4_lut (.A(Brightness_Level[3]), .B(n5370), 
            .C(n5372), .D(n5367), .Z(n5349)) /* synthesis lut_function=(!(A (C+(D))+!A (B+(C+(D))))) */ ;
    defparam i3384_2_lut_rep_61_3_lut_4_lut.init = 16'h000b;
    ORCALUT4 i3350_3_lut_4_lut (.A(Brightness_Level[3]), .B(n5370), .C(n1940), 
            .D(n3547), .Z(n3548)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;
    defparam i3350_3_lut_4_lut.init = 16'hfb40;
    ORCALUT4 i3347_4_lut_4_lut (.A(n5373), .B(n5364), .C(n1979), .D(n1962), 
            .Z(n3513)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(215[36:83])
    defparam i3347_4_lut_4_lut.init = 16'hf4b0;
    ORCALUT4 n6_bdd_2_lut_3439_3_lut_4_lut (.A(n5391), .B(n5369), .C(Duty_Cycle[6]), 
            .D(n5372), .Z(n5291)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam n6_bdd_2_lut_3439_3_lut_4_lut.init = 16'h00b0;
    ORCALUT4 mux_251_i13_4_lut (.A(n5357), .B(n5354), .C(n1854), .D(n5370), 
            .Z(n1663)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam mux_251_i13_4_lut.init = 16'hca0a;
    ORCALUT4 i1_2_lut_rep_67 (.A(Decoded_Frame_13__N_176[1]), .B(Decoded_Frame_13__N_176[0]), 
            .Z(n5355)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(148[7:37])
    defparam i1_2_lut_rep_67.init = 16'hdddd;
    ORCALUT4 i1_4_lut_adj_22 (.A(Decoded_Frame_13__N_176[13]), .B(n4549), 
            .C(Decoded_Frame_13__N_176[0]), .D(Decoded_Frame_13__N_176[1]), 
            .Z(n4694)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;
    defparam i1_4_lut_adj_22.init = 16'h0440;
    ORCALUT4 i3261_2_lut (.A(Delay_Counter[8]), .B(Delay_Counter[5]), .Z(n5087)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3261_2_lut.init = 16'h8888;
    ORCALUT4 i1831_3_lut_4_lut (.A(n5391), .B(n5369), .C(Duty_Cycle[5]), 
            .D(n5372), .Z(n3596)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;
    defparam i1831_3_lut_4_lut.init = 16'h44f4;
    ORCALUT4 i1_3_lut (.A(Delay_Counter[6]), .B(Delay_Counter[9]), .C(Delay_Counter[3]), 
            .Z(n4489)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut.init = 16'hfefe;
    ORCALUT4 i1_4_lut_adj_23 (.A(Delay_Counter[1]), .B(n5087), .C(n5053), 
            .D(Delay_Counter[2]), .Z(n5059)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_23.init = 16'h8000;
    PFUMX i11 (.BLUT(n4), .ALUT(n6_adj_1), .C0(n5139), .Z(n2868));
    ORCALUT4 mux_378_i12_3_lut_4_lut_4_lut (.A(Brightness_Level[3]), .B(n5369), 
            .C(Brightness_Level[1]), .D(Brightness_Level[2]), .Z(n1944)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;
    defparam mux_378_i12_3_lut_4_lut_4_lut.init = 16'haaa2;
    ORCALUT4 i1_2_lut_adj_24 (.A(Delay_Counter[10]), .B(Delay_Counter[0]), 
            .Z(n5053)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_24.init = 16'h8888;
    ORCALUT4 i1_2_lut_3_lut_adj_25 (.A(Decoded_Frame_13__N_176[1]), .B(Decoded_Frame_13__N_176[0]), 
            .C(n4959), .Z(n4977)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(148[7:37])
    defparam i1_2_lut_3_lut_adj_25.init = 16'hfbfb;
    ORCALUT4 i2_2_lut_rep_74_3_lut (.A(Brightness_Level[3]), .B(n5369), 
            .C(Brightness_Level[2]), .Z(n5362)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_2_lut_rep_74_3_lut.init = 16'h0808;
    ORCALUT4 i2688_2_lut_3_lut_2_lut (.A(Decoded_Frame_13__N_176[1]), .B(Decoded_Frame_13__N_176[0]), 
            .Z(n4499)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(148[7:37])
    defparam i2688_2_lut_3_lut_2_lut.init = 16'h9999;
    ORCALUT4 i1_4_lut_adj_26 (.A(Decoded_Frame_13__N_176[11]), .B(Decoded_Frame_13__N_176[5]), 
            .C(Decoded_Frame_13__N_176[3]), .D(Decoded_Frame_13__N_176[9]), 
            .Z(n19)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_26.init = 16'h8000;
    ORCALUT4 mux_267_i9_3_lut_4_lut (.A(n1854), .B(n5365), .C(n5331), 
            .D(n5127), .Z(n1747)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam mux_267_i9_3_lut_4_lut.init = 16'hf4b0;
    ORCALUT4 i1696_2_lut_2_lut_3_lut_4_lut_4_lut (.A(Brightness_Level[3]), 
            .B(n5369), .C(Brightness_Level[2]), .D(n5370), .Z(n1983)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1696_2_lut_2_lut_3_lut_4_lut_4_lut.init = 16'h0008;
    ORCALUT4 i3_2_lut_rep_68 (.A(Decoded_Frame_13__N_176[7]), .B(Decoded_Frame_13__N_176[2]), 
            .Z(n5356)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3_2_lut_rep_68.init = 16'h8888;
    ORCALUT4 i737_4_lut (.A(GMUX_RESET_L_c), .B(Decoded_Frame[10]), .C(n4923), 
            .D(n4622), .Z(Decoded_Frame_13__N_176[10])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(126[15] 134[8])
    defparam i737_4_lut.init = 16'hccca;
    ORCALUT4 i3279_2_lut_3_lut (.A(Decoded_Frame_13__N_176[7]), .B(Decoded_Frame_13__N_176[2]), 
            .C(n19), .Z(n5107)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i3279_2_lut_3_lut.init = 16'h8080;
    ORCALUT4 i735_4_lut (.A(GMUX_RESET_L_c), .B(Decoded_Frame[11]), .C(n4819), 
            .D(n4622), .Z(Decoded_Frame_13__N_176[11])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(126[15] 134[8])
    defparam i735_4_lut.init = 16'hccca;
    PFUMX i1076 (.BLUT(n3587), .ALUT(n3513), .C0(n5142), .Z(n2843));
    ORCALUT4 i743_4_lut (.A(GMUX_RESET_L_c), .B(Decoded_Frame[7]), .C(n4865), 
            .D(n4622), .Z(Decoded_Frame_13__N_176[7])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(126[15] 134[8])
    defparam i743_4_lut.init = 16'hccca;
    ORCALUT4 i1571_3_lut_4_lut_4_lut_4_lut (.A(Brightness_Level[3]), .B(n5369), 
            .C(n5364), .D(Brightness_Level[2]), .Z(n3336)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam i1571_3_lut_4_lut_4_lut_4_lut.init = 16'h30f8;
    ORCALUT4 mux_251_i4_3_lut_4_lut (.A(Brightness_Level[1]), .B(n5367), 
            .C(n5365), .D(n5127), .Z(n1672)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(227[3] 248[6])
    defparam mux_251_i4_3_lut_4_lut.init = 16'h08f8;
    ORCALUT4 i4_2_lut_rep_79_4_lut (.A(Brightness_Level[0]), .B(n5376), 
            .C(Brightness_Level[1]), .D(n5391), .Z(n5367)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (((D)+!C)+!B))) */ ;
    defparam i4_2_lut_rep_79_4_lut.init = 16'h0048;
    ORCALUT4 i3381_2_lut_rep_75_4_lut (.A(Brightness_Level[0]), .B(n5376), 
            .C(Brightness_Level[1]), .D(Brightness_Level[2]), .Z(n5363)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (C (D)))) */ ;
    defparam i3381_2_lut_rep_75_4_lut.init = 16'hb7ff;
    ORCALUT4 i747_4_lut (.A(GMUX_RESET_L_c), .B(Decoded_Frame[5]), .C(n4805), 
            .D(n4622), .Z(Decoded_Frame_13__N_176[5])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(126[15] 134[8])
    defparam i747_4_lut.init = 16'hccca;
    ORCALUT4 i1821_3_lut_4_lut_4_lut (.A(n5367), .B(n5372), .C(Duty_Cycle[11]), 
            .D(Brightness_Level[1]), .Z(n3586)) /* synthesis lut_function=(!(A (D)+!A (B+!(C)))) */ ;
    defparam i1821_3_lut_4_lut_4_lut.init = 16'h10ba;
    ORCALUT4 i1742_2_lut_rep_71_3_lut_4_lut (.A(Brightness_Level[0]), .B(n5376), 
            .C(Brightness_Level[1]), .D(n5391), .Z(n5359)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1742_2_lut_rep_71_3_lut_4_lut.init = 16'h0008;
    ORCALUT4 i1741_2_lut_rep_69_3_lut_4_lut (.A(Brightness_Level[0]), .B(n5376), 
            .C(Brightness_Level[1]), .D(n5391), .Z(n5357)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1741_2_lut_rep_69_3_lut_4_lut.init = 16'h0040;
    ORCALUT4 i753_4_lut (.A(GMUX_RESET_L_c), .B(Decoded_Frame[2]), .C(n4851), 
            .D(n4622), .Z(Decoded_Frame_13__N_176[2])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(126[15] 134[8])
    defparam i753_4_lut.init = 16'hccca;
    ORCALUT4 i751_4_lut (.A(GMUX_RESET_L_c), .B(Decoded_Frame[3]), .C(n4833), 
            .D(n4622), .Z(Decoded_Frame_13__N_176[3])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(126[15] 134[8])
    defparam i751_4_lut.init = 16'hccca;
    ORCALUT4 i1_4_lut_adj_27 (.A(n5374), .B(n3603), .C(n4489), .D(Delay_Counter[4]), 
            .Z(n4622)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_27.init = 16'hfffe;
    ORCALUT4 i3388_2_lut_rep_70_3_lut_4_lut (.A(n5376), .B(n5375), .C(n1854), 
            .D(Brightness_Level[3]), .Z(n5358)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i3388_2_lut_rep_70_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 i739_4_lut (.A(GMUX_RESET_L_c), .B(Decoded_Frame[9]), .C(n4791), 
            .D(n4622), .Z(Decoded_Frame_13__N_176[9])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(126[15] 134[8])
    defparam i739_4_lut.init = 16'hccca;
    ORCALUT4 i1838_4_lut (.A(Delay_Counter[7]), .B(Delay_Counter[8]), .C(n3538), 
            .D(Delay_Counter[6]), .Z(n3603)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1838_4_lut.init = 16'hccc8;
    ORCALUT4 i1775_3_lut (.A(Delay_Counter[3]), .B(Delay_Counter[5]), .C(Delay_Counter[4]), 
            .Z(n3538)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;
    defparam i1775_3_lut.init = 16'hc8c8;
    ORCALUT4 i1748_3_lut_4_lut (.A(N_Frames_Counter[3]), .B(n5378), .C(n4694), 
            .D(N_Frames_Counter[4]), .Z(n323)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(157[24:44])
    defparam i1748_3_lut_4_lut.init = 16'h0708;
    ORCALUT4 i1_3_lut_4_lut_4_lut (.A(n5539), .B(n572), .C(Brightness_Level[1]), 
            .D(Brightness_Level[0]), .Z(Brightness_Level_4__N_78[1])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B (C (D)+!C !(D))+!B (C)))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'h5ab4;
    ORCALUT4 i755_4_lut (.A(GMUX_RESET_L_c), .B(Decoded_Frame[1]), .C(n4749), 
            .D(n4622), .Z(Decoded_Frame_13__N_176[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(126[15] 134[8])
    defparam i755_4_lut.init = 16'hccca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_28 (.A(n5539), .B(n572), .C(Brightness_Level[1]), 
            .D(Brightness_Level[0]), .Z(n2)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_28.init = 16'hf010;
    ORCALUT4 i667_4_lut (.A(GMUX_RESET_L_c), .B(Decoded_Frame[0]), .C(n4883), 
            .D(n3603), .Z(Decoded_Frame_13__N_176[0])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(126[15] 134[8])
    defparam i667_4_lut.init = 16'hccca;
    ORCALUT4 i1_4_lut_adj_29 (.A(n5374), .B(n5120), .C(n5095), .D(n4877), 
            .Z(n4883)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_29.init = 16'hffbf;
    ORCALUT4 i1089_3_lut (.A(n2892), .B(Brightness_Level[4]), .C(n5373), 
            .Z(n2856)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(223[9] 249[5])
    defparam i1089_3_lut.init = 16'hcaca;
    ORCALUT4 i1_2_lut_3_lut_4_lut_adj_30 (.A(n5367), .B(n5372), .C(Duty_Cycle[15]), 
            .D(n5365), .Z(n42)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_30.init = 16'h0010;
    ORCALUT4 i1_2_lut_rep_82_3_lut_4_lut (.A(Brightness_Level[4]), .B(n5384), 
            .C(Brightness_Level[2]), .D(n5385), .Z(n5370)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(215[36:83])
    defparam i1_2_lut_rep_82_3_lut_4_lut.init = 16'h0440;
    ORCALUT4 i3_3_lut_rep_81_4_lut (.A(Brightness_Level[4]), .B(n5384), 
            .C(Brightness_Level[1]), .D(Brightness_Level[0]), .Z(n5369)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(215[36:83])
    defparam i3_3_lut_rep_81_4_lut.init = 16'h0440;
    ORCALUT4 i1_2_lut_rep_73_3_lut_4_lut (.A(n5376), .B(n4725), .C(n5369), 
            .D(n5391), .Z(n5361)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_2_lut_rep_73_3_lut_4_lut.init = 16'h22f2;
    ORCALUT4 i1_4_lut_rep_85 (.A(n4719), .B(n5384), .C(n4725), .D(Brightness_Level[4]), 
            .Z(n5373)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(215[36:83])
    defparam i1_4_lut_rep_85.init = 16'h0c88;
    ORCALUT4 i1751_3_lut_4_lut (.A(N_Frames_Counter[2]), .B(n5389), .C(n4694), 
            .D(N_Frames_Counter[3]), .Z(n324)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(157[24:44])
    defparam i1751_3_lut_4_lut.init = 16'h0708;
    ORCALUT4 i1_4_lut_adj_31 (.A(Decoded_Frame_13__N_176[6]), .B(n5099), 
            .C(Decoded_Frame_13__N_176[13]), .D(Decoded_Frame_13__N_176[8]), 
            .Z(n4763)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_31.init = 16'hf7ff;
    ORCALUT4 i1_3_lut_4_lut_adj_32 (.A(Bit_Number[2]), .B(Bit_Number[3]), 
            .C(n5059), .D(n5387), .Z(n4923)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(127[7:32])
    defparam i1_3_lut_4_lut_adj_32.init = 16'hffbf;
    ORCALUT4 i1_4_lut_adj_33 (.A(n4489), .B(n5386), .C(n5388), .D(n4473), 
            .Z(n4877)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_33.init = 16'hfffe;
    ORCALUT4 i1_3_lut_4_lut_adj_34 (.A(Bit_Number[2]), .B(Bit_Number[3]), 
            .C(n5095), .D(n5033), .Z(n5035)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(127[7:32])
    defparam i1_3_lut_4_lut_adj_34.init = 16'hffbf;
    ORCALUT4 i733_4_lut (.A(GMUX_RESET_L_c), .B(Decoded_Frame[12]), .C(n5019), 
            .D(n3603), .Z(Decoded_Frame_13__N_176[12])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(126[15] 134[8])
    defparam i733_4_lut.init = 16'hccca;
    ORCALUT4 i1_3_lut_4_lut_adj_35 (.A(Bit_Number[2]), .B(Bit_Number[3]), 
            .C(n5059), .D(n5379), .Z(n4819)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(127[7:32])
    defparam i1_3_lut_4_lut_adj_35.init = 16'hbfff;
    ORCALUT4 i1_4_lut_adj_36 (.A(n5120), .B(n5015), .C(n5382), .D(n5027), 
            .Z(n5019)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i1_4_lut_adj_36.init = 16'hffdf;
    ORCALUT4 i1_3_lut_4_lut_adj_37 (.A(Bit_Number[2]), .B(Bit_Number[3]), 
            .C(n5059), .D(n5383), .Z(n4791)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(127[7:32])
    defparam i1_3_lut_4_lut_adj_37.init = 16'hffbf;
    ORCALUT4 i3271_2_lut (.A(Decoded_Frame_13__N_176[4]), .B(Decoded_Frame_13__N_176[12]), 
            .Z(n5099)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3271_2_lut.init = 16'h8888;
    ORCALUT4 i473_2_lut_rep_91 (.A(Bit_Number[1]), .B(Bit_Number[0]), .Z(n5379)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(129[20:34])
    defparam i473_2_lut_rep_91.init = 16'h8888;
    ORCALUT4 i1817_3_lut_4_lut_4_lut (.A(n5367), .B(n5372), .C(Duty_Cycle[7]), 
            .D(Brightness_Level[1]), .Z(n3582)) /* synthesis lut_function=(A (D)+!A !(B+!(C))) */ ;
    defparam i1817_3_lut_4_lut_4_lut.init = 16'hba10;
    ORCALUT4 i1805_3_lut_4_lut_4_lut (.A(n5367), .B(n5372), .C(Duty_Cycle[1]), 
            .D(Brightness_Level[1]), .Z(n3570)) /* synthesis lut_function=(!(A (D)+!A (B+!(C)))) */ ;
    defparam i1805_3_lut_4_lut_4_lut.init = 16'h10ba;
    ORCALUT4 i1_3_lut_4_lut_adj_38 (.A(Bit_Number[1]), .B(Bit_Number[0]), 
            .C(n5380), .D(n5059), .Z(n4865)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(129[20:34])
    defparam i1_3_lut_4_lut_adj_38.init = 16'hf7ff;
    ORCALUT4 i1_2_lut_3_lut_adj_39 (.A(Bit_Number[1]), .B(Bit_Number[0]), 
            .C(n4831), .Z(n4833)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(129[20:34])
    defparam i1_2_lut_3_lut_adj_39.init = 16'hf7f7;
    ORCALUT4 i1_2_lut_rep_92 (.A(Bit_Number[3]), .B(Bit_Number[2]), .Z(n5380)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(127[7:32])
    defparam i1_2_lut_rep_92.init = 16'hbbbb;
    ORCALUT4 i1_3_lut_4_lut_adj_40 (.A(Bit_Number[3]), .B(Bit_Number[2]), 
            .C(n5095), .D(n5033), .Z(n5003)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(127[7:32])
    defparam i1_3_lut_4_lut_adj_40.init = 16'hffbf;
    PFUMX i3459 (.BLUT(n5408), .ALUT(n5409), .C0(Brightness_Level[2]), 
          .Z(n6));
    ORCALUT4 i741_4_lut (.A(GMUX_RESET_L_c), .B(Decoded_Frame[8]), .C(n5035), 
            .D(n3603), .Z(Decoded_Frame_13__N_176[8])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(126[15] 134[8])
    defparam i741_4_lut.init = 16'hccca;
    ORCALUT4 m1_lut (.Z(n5541)) /* synthesis lut_function=1, syn_instantiated=1 */ ;
    defparam m1_lut.init = 16'hffff;
    PFUMX i3457 (.BLUT(n5405), .ALUT(n5406), .C0(Brightness_Level[2]), 
          .Z(n5407));
    ORCALUT4 i3370_2_lut (.A(N_Frames_Counter[0]), .B(n4694), .Z(n3506)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i3370_2_lut.init = 16'h1111;
    PFUMX i3455 (.BLUT(n5401), .ALUT(n5402), .C0(Brightness_Level[2]), 
          .Z(n5403));
    ORCALUT4 i1_3_lut_4_lut_adj_41 (.A(Bit_Number[3]), .B(Bit_Number[2]), 
            .C(n5387), .D(n5059), .Z(n4909)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(127[7:32])
    defparam i1_3_lut_4_lut_adj_41.init = 16'hfbff;
    PFUMX i3453 (.BLUT(n5398), .ALUT(n5399), .C0(Brightness_Level[1]), 
          .Z(n5400));
    ORCALUT4 i1_3_lut_4_lut_adj_42 (.A(Bit_Number[3]), .B(Bit_Number[2]), 
            .C(n5059), .D(n5383), .Z(n4805)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(127[7:32])
    defparam i1_3_lut_4_lut_adj_42.init = 16'hffbf;
    PFUMX i3451 (.BLUT(n5395), .ALUT(n5396), .C0(Brightness_Level[3]), 
          .Z(Brightness_Level_4__N_78[4]));
    ORCALUT4 i539_2_lut_rep_93 (.A(Edge_Event_dly), .B(GMUX_RESET_L_c), 
            .Z(n5381)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(123[6:55])
    defparam i539_2_lut_rep_93.init = 16'h6666;
    PFUMX i3449 (.BLUT(n5392), .ALUT(n5393), .C0(n1854), .Z(n5394));
    PFUMX i1083 (.BLUT(n3343), .ALUT(n2860), .C0(n5142), .Z(n2850));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    L6MUX21 i3414 (.D0(n5292), .D1(n5289), .SD(n1854), .Z(n5293));
    ORCALUT4 i2684_2_lut_rep_86_3_lut (.A(Edge_Event_dly), .B(GMUX_RESET_L_c), 
            .C(Delay_Counter[7]), .Z(n5374)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys/dgmux_bkeys_main.v(123[6:55])
    defparam i2684_2_lut_rep_86_3_lut.init = 16'hf6f6;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

