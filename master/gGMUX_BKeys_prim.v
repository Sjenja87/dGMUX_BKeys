// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Fri Apr 02 00:36:03 2021
//
// Verilog Description of module gGMUX_BKeys
//

module gGMUX_BKeys (LVDS_IG_A_DATA, LVDS_IG_B_DATA, LVDS_IG_A_CLK, LVDS_IG_BKL_ON, 
            LVDS_IG_PANEL_PWR, LVDS_A_DATA, LVDS_B_DATA, LVDS_A_CLK, 
            LVDS_B_CLK, LCD_BKLT_EN, LCD_PWR_EN, LCD_BKLT_PWM, P3V3GPU_EN, 
            P1V5FB1V8GPU_R_EN, P1V0GPU_EN, GPUVCORE_EN, EG_RESET_L, 
            LVDS_DDC_SEL_IG, LVDS_DDC_SEL_EG, LPC_CLK33M_GMUX, GMUX_RESET_L, 
            LPC_AD, LPC_FRAME_L, LPCPLUS_RESET_L) /* synthesis syn_module_defined=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(1[8:19])
    input [2:0]LVDS_IG_A_DATA;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(4[14:28])
    input [2:0]LVDS_IG_B_DATA;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(6[14:28])
    input LVDS_IG_A_CLK;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(8[8:21])
    input LVDS_IG_BKL_ON;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(11[8:22])
    input LVDS_IG_PANEL_PWR;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(12[8:25])
    output [2:0]LVDS_A_DATA;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(15[15:26])
    output [2:0]LVDS_B_DATA;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(17[15:26])
    output LVDS_A_CLK;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(19[9:19])
    output LVDS_B_CLK;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(20[9:19])
    output LCD_BKLT_EN;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(23[9:20])
    output LCD_PWR_EN;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(24[9:19])
    output LCD_BKLT_PWM;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(25[9:21])
    output P3V3GPU_EN;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(28[9:19])
    output P1V5FB1V8GPU_R_EN;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(29[9:26])
    output P1V0GPU_EN;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(30[9:19])
    output GPUVCORE_EN;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(31[9:20])
    output EG_RESET_L;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(32[9:19])
    output LVDS_DDC_SEL_IG;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(35[9:24])
    output LVDS_DDC_SEL_EG;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(36[9:24])
    input LPC_CLK33M_GMUX;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(41[9:24])
    input GMUX_RESET_L;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(45[9:21])
    input [3:0]LPC_AD;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(48[14:20])
    input LPC_FRAME_L;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(49[8:19])
    input LPCPLUS_RESET_L;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(50[8:23])
    
    wire LPC_CLK33M_GMUX_c /* synthesis SET_AS_NETWORK=LPC_CLK33M_GMUX_c, is_clock=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(41[9:24])
    wire Frame_Clock /* synthesis is_clock=1, SET_AS_NETWORK=Frame_Clock */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(110[6:17])
    wire Key_Clock /* synthesis is_clock=1, SET_AS_NETWORK=Key_Clock */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(175[6:15])
    
    wire GND_net, VCC_net, LVDS_A_DATA_c_2_c, LVDS_A_DATA_c_1_c, LVDS_A_DATA_c_0_c, 
        LVDS_B_DATA_c_2_c, LVDS_B_DATA_c_1_c, LVDS_B_DATA_c_0_c, LVDS_B_CLK_c_c, 
        LCD_BKLT_EN_c_c, LCD_PWR_EN_c_c, LCD_BKLT_PWM_c_0, GMUX_RESET_L_c, 
        Edge_Event_dly;
    wire [10:0]Delay_Counter;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(96[12:25])
    wire [13:0]Decoded_Frame;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(98[12:25])
    wire [3:0]Bit_Number;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(100[11:21])
    
    wire n2411, LPC_CLK33M_GMUX_c_enable_27, n4466, n4222, LPC_CLK33M_GMUX_c_enable_29, 
        n4464;
    wire [1:0]Last_Key_Press;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(151[11:25])
    wire [22:0]Prescale_Counter;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(180[12:28])
    
    wire LPC_CLK33M_GMUX_c_enable_24, LPC_CLK33M_GMUX_c_enable_23, LPC_CLK33M_GMUX_c_enable_25, 
        n3757, n2409, n2410, n2412, n2413, n2414;
    wire [4:0]Brightness_Level;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(192[12:28])
    
    wire Brightness_Trigger_dly, n4762, n4456;
    wire [31:0]Duty_Cycle;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(222[13:23])
    wire [16:0]PWM_Counter;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(258[12:23])
    
    wire Delay_Counter_10__N_143, n3236, n4502, n4761, n3756, n3005, 
        n3006, n3733, n4089, n79, n80, n3256, n38, n53, n4117, 
        n3755, n6, n2399, n4312, n9, n1845, n3222, n3754, n82, 
        n3753, n4102, n2867, n4095, n4785, n2845, n14, n3193, 
        n3744, n16, n4521, LPC_CLK33M_GMUX_c_enable_26, n4210, n4787, 
        n3732, LPC_CLK33M_GMUX_c_enable_10, n4430, n88, n4208, n4747;
    wire [16:0]Frame_Counter_16__N_146;
    
    wire n4422, n2647, n3273, n4746, n4168, n6_adj_1, n4745, n3731, 
        n3254, n3752, n2869, n4416, n4296, n3212, n3944, n1841;
    wire [1:0]Last_Key_Press_1__N_182;
    
    wire n4294, n4743, n3267, n3232, n3266, n3715, n4290, n3743, 
        n86, n4741, n120, n119, n118, n117, n116, n90, n115, 
        n3742, n114, n89, n113, n4406, n3751, n112, n111, n4810, 
        n3160, n110, n87, n109, LPC_CLK33M_GMUX_c_enable_34, n565, 
        n108, n35, n3750, n4809;
    wire [4:0]Brightness_Level_4__N_78;
    
    wire n107, n4, n2883, n4740, n3234, n2877, n3714, n3741, 
        n4105, n4_adj_2, n6_adj_3, n83, n106, n105, n84, n104, 
        n103, n102, n101, n4026, n100, n85, n99, n98, n3730, 
        n3720, n2415, n4278, n4734, n4733, n4731, n3740, n3719, 
        n2861, n3739, n4063, n2879, n4198, n4386, n4931, n4930, 
        LPC_CLK33M_GMUX_c_enable_21, LPC_CLK33M_GMUX_c_enable_32, n4929, 
        n4928, n3718, n2865, n10, n47, n4166, n4808, n4807, 
        n4927, n3729, n32, n44, n4926, n4806, n41, n3724, n8, 
        n29, n50, n3728, n3748, n26, n6_adj_4, n3233, n3738, 
        n4730, n3737, n56, LPC_CLK33M_GMUX_c_enable_1, LPC_CLK33M_GMUX_c_enable_30, 
        n3231, LPC_CLK33M_GMUX_c_enable_2, LPC_CLK33M_GMUX_c_enable_28, 
        n4804, n4784, n3723, n3736, n4374, n3747, n81, n80_adj_5, 
        n79_adj_6, n78, n3717, n3735, n3716, n3722, n3727, LPC_CLK33M_GMUX_c_enable_33, 
        n4803, n23, n22, n21, n20, n19, n4258, n1510, n3158, 
        n1513, n6_adj_7, n2853, n2834, n18, n20_adj_8, n1933, 
        n3230, n2401, n1928, n4518, n4106, n1921, n18_adj_9, n17, 
        n22_adj_10, n16_adj_11, n24, n15, n14_adj_12, n26_adj_13, 
        n4802, n74, n13, n28, n12, n1943, n2402, n2403, n1937, 
        n75, n11, n30, n10_adj_14, n76, n9_adj_15, n32_adj_16, 
        n2408, n77, cout, n34, n2404, n8_adj_17, n4509, n4358, 
        n4118, n2405, n1955, n2406, n1953, n7, n3726, LPC_CLK33M_GMUX_c_enable_35, 
        n6_adj_18, n3746, n2407, n5, n4783, n4477, n4244, n2885, 
        n1656, n1659, n1660, n1664, n1665, n2839, n2836, LPC_CLK33M_GMUX_c_enable_36, 
        n1981, n1979, n1978, n1977, n1976, n1973, n1972, n1970, 
        n3289, n4_adj_19, n3721, n4134, n3, n4782, n1983, n2, 
        n4801, n4786, n1736, n1739, n1740, n4800, n1744, n1745, 
        n1746, n4799, n2400, n14_adj_20, n4816, n4532, n4815, 
        n4814, n12_adj_21, n3205, n1847, n3745, n1837, n4796, 
        n4794, n4793, n3954, n6_adj_22, n4792, n4812, n4791, n16_adj_23, 
        n4790, n18_adj_24, n4789, n20_adj_25, n4788, n4811;
    
    VHI i2 (.Z(VCC_net));
    FD1P3IX Decoded_Frame__i13 (.D(GMUX_RESET_L_c), .SP(LPC_CLK33M_GMUX_c_enable_1), 
            .CD(Frame_Counter_16__N_146[16]), .CK(LPC_CLK33M_GMUX_c), .Q(Decoded_Frame[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Decoded_Frame__i13.GSR = "ENABLED";
    FD1S3IX Last_Key_Press__i0 (.D(Last_Key_Press_1__N_182[0]), .CK(Frame_Clock), 
            .CD(GND_net), .Q(Last_Key_Press[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(155[9] 172[5])
    defparam Last_Key_Press__i0.GSR = "ENABLED";
    ORCALUT4 mux_374_i1_3_lut_3_lut (.A(Brightness_Level[1]), .B(n1837), 
            .C(Brightness_Level[2]), .Z(n1933)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_374_i1_3_lut_3_lut.init = 16'h7474;
    FD1P3IX Decoded_Frame__i0 (.D(GMUX_RESET_L_c), .SP(LPC_CLK33M_GMUX_c_enable_2), 
            .CD(Frame_Counter_16__N_146[16]), .CK(LPC_CLK33M_GMUX_c), .Q(Decoded_Frame[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Decoded_Frame__i0.GSR = "ENABLED";
    OB LVDS_A_DATA_pad_0 (.I(LVDS_A_DATA_c_0_c), .O(LVDS_A_DATA[0]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(15[15:26])
    FD1P3IX Delay_Counter__i0 (.D(n56), .SP(LPC_CLK33M_GMUX_c_enable_21), 
            .CD(Delay_Counter_10__N_143), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[0]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Delay_Counter__i0.GSR = "ENABLED";
    FD1S3AX Frame_Clock_101 (.D(Frame_Counter_16__N_146[16]), .CK(LPC_CLK33M_GMUX_c), 
            .Q(Frame_Clock)) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Frame_Clock_101.GSR = "ENABLED";
    FD1S3AX Key_Clock_105 (.D(Prescale_Counter[22]), .CK(LPC_CLK33M_GMUX_c), 
            .Q(Key_Clock)) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(182[9] 190[5])
    defparam Key_Clock_105.GSR = "ENABLED";
    PFUMX i1075 (.BLUT(n3231), .ALUT(n3205), .C0(n4521), .Z(n2839));
    FD1S3AY Duty_Cycle_i0 (.D(n2867), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[0])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam Duty_Cycle_i0.GSR = "ENABLED";
    FD1S3AX Brightness_Trigger_dly_107 (.D(Key_Clock), .CK(LPC_CLK33M_GMUX_c), 
            .Q(Brightness_Trigger_dly)) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(213[9] 217[5])
    defparam Brightness_Trigger_dly_107.GSR = "ENABLED";
    OB LVDS_A_DATA_pad_1 (.I(LVDS_A_DATA_c_1_c), .O(LVDS_A_DATA[1]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(15[15:26])
    FD1S3AX Edge_Event_dly_96 (.D(GMUX_RESET_L_c), .CK(LPC_CLK33M_GMUX_c), 
            .Q(Edge_Event_dly));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(85[9] 88[5])
    defparam Edge_Event_dly_96.GSR = "ENABLED";
    FD1S3AY Brightness_Level_i0 (.D(Brightness_Level_4__N_78[0]), .CK(Key_Clock), 
            .Q(Brightness_Level[0])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(195[9] 204[6])
    defparam Brightness_Level_i0.GSR = "ENABLED";
    FD1S3AY Brightness_Level_i1 (.D(Brightness_Level_4__N_78[1]), .CK(Key_Clock), 
            .Q(Brightness_Level[1])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(195[9] 204[6])
    defparam Brightness_Level_i1.GSR = "ENABLED";
    FD1S3AX Brightness_Level_i2 (.D(Brightness_Level_4__N_78[2]), .CK(Key_Clock), 
            .Q(Brightness_Level[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(195[9] 204[6])
    defparam Brightness_Level_i2.GSR = "ENABLED";
    FD1S3AY Brightness_Level_i3 (.D(Brightness_Level_4__N_78[3]), .CK(Key_Clock), 
            .Q(Brightness_Level[3])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(195[9] 204[6])
    defparam Brightness_Level_i3.GSR = "ENABLED";
    FD1S3AX Brightness_Level_i4 (.D(Brightness_Level_4__N_78[4]), .CK(Key_Clock), 
            .Q(Brightness_Level[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(195[9] 204[6])
    defparam Brightness_Level_i4.GSR = "ENABLED";
    FD1S3AX Duty_Cycle_i1 (.D(n4931), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam Duty_Cycle_i1.GSR = "ENABLED";
    FD1P3JX Duty_Cycle_i2 (.D(n1746), .SP(LPC_CLK33M_GMUX_c_enable_10), 
            .PD(n4783), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[2])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam Duty_Cycle_i2.GSR = "ENABLED";
    FD1P3IX Duty_Cycle_i3 (.D(n1745), .SP(LPC_CLK33M_GMUX_c_enable_10), 
            .CD(n4783), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[3])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam Duty_Cycle_i3.GSR = "ENABLED";
    FD1P3IX Duty_Cycle_i4 (.D(n1744), .SP(LPC_CLK33M_GMUX_c_enable_10), 
            .CD(n4783), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[4])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam Duty_Cycle_i4.GSR = "ENABLED";
    FD1S3AX Duty_Cycle_i5 (.D(n2865), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam Duty_Cycle_i5.GSR = "ENABLED";
    FD1S3IX Duty_Cycle_i6 (.D(n2879), .CK(LPC_CLK33M_GMUX_c), .CD(n4783), 
            .Q(Duty_Cycle[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam Duty_Cycle_i6.GSR = "ENABLED";
    FD1S3AX Duty_Cycle_i7 (.D(n2845), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam Duty_Cycle_i7.GSR = "ENABLED";
    FD1P3IX Duty_Cycle_i8 (.D(n1740), .SP(LPC_CLK33M_GMUX_c_enable_10), 
            .CD(n4783), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[8])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam Duty_Cycle_i8.GSR = "ENABLED";
    FD1P3IX Duty_Cycle_i9 (.D(n1739), .SP(LPC_CLK33M_GMUX_c_enable_10), 
            .CD(n4783), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[9])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam Duty_Cycle_i9.GSR = "ENABLED";
    FD1S3AX Duty_Cycle_i10 (.D(n2836), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam Duty_Cycle_i10.GSR = "ENABLED";
    FD1S3AX Duty_Cycle_i11 (.D(n2839), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam Duty_Cycle_i11.GSR = "ENABLED";
    FD1P3JX Duty_Cycle_i12 (.D(n1736), .SP(LPC_CLK33M_GMUX_c_enable_10), 
            .PD(n4783), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam Duty_Cycle_i12.GSR = "ENABLED";
    FD1S3AX Duty_Cycle_i13 (.D(n2834), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam Duty_Cycle_i13.GSR = "ENABLED";
    FD1S3AY Duty_Cycle_i14 (.D(n2853), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[14])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam Duty_Cycle_i14.GSR = "ENABLED";
    FD1S3JX Duty_Cycle_i15 (.D(n2883), .CK(LPC_CLK33M_GMUX_c), .PD(n4783), 
            .Q(Duty_Cycle[15])) /* synthesis lse_init_val=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam Duty_Cycle_i15.GSR = "ENABLED";
    FD1P3JX Duty_Cycle_i16 (.D(n4134), .SP(LPC_CLK33M_GMUX_c_enable_10), 
            .PD(n4783), .CK(LPC_CLK33M_GMUX_c), .Q(Duty_Cycle[16])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam Duty_Cycle_i16.GSR = "ENABLED";
    FD1P3IX Delay_Counter__i10 (.D(n26), .SP(LPC_CLK33M_GMUX_c_enable_21), 
            .CD(Delay_Counter_10__N_143), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[10]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Delay_Counter__i10.GSR = "ENABLED";
    ORCALUT4 i1469_3_lut (.A(n3230), .B(n1837), .C(n4787), .Z(n3231)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam i1469_3_lut.init = 16'hcaca;
    IB LVDS_A_DATA_c_2_pad (.I(LVDS_IG_A_DATA[2]), .O(LVDS_A_DATA_c_2_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(4[14:28])
    OB LVDS_DDC_SEL_EG_pad (.I(GND_net), .O(LVDS_DDC_SEL_EG));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(36[9:24])
    OB LVDS_DDC_SEL_IG_pad (.I(VCC_net), .O(LVDS_DDC_SEL_IG));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(35[9:24])
    OB EG_RESET_L_pad (.I(GND_net), .O(EG_RESET_L));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(32[9:19])
    ORCALUT4 i1456_4_lut_4_lut_4_lut (.A(Bit_Number[3]), .B(Bit_Number[2]), 
            .C(Bit_Number[0]), .D(Bit_Number[1]), .Z(n79)) /* synthesis lut_function=(!(A (B (C+(D)))+!A !(B (C (D))))) */ ;
    defparam i1456_4_lut_4_lut_4_lut.init = 16'h622a;
    OB GPUVCORE_EN_pad (.I(GND_net), .O(GPUVCORE_EN));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(31[9:20])
    OB P1V0GPU_EN_pad (.I(GND_net), .O(P1V0GPU_EN));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(30[9:19])
    ORCALUT4 i1_4_lut (.A(Last_Key_Press[1]), .B(n3954), .C(Decoded_Frame[1]), 
            .D(Decoded_Frame[0]), .Z(Last_Key_Press_1__N_182[1])) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A (((D)+!C)+!B))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(160[12] 165[6])
    defparam i1_4_lut.init = 16'h08c0;
    OB P1V5FB1V8GPU_R_EN_pad (.I(GND_net), .O(P1V5FB1V8GPU_R_EN));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(29[9:26])
    OB P3V3GPU_EN_pad (.I(GND_net), .O(P3V3GPU_EN));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(28[9:19])
    OB LCD_BKLT_PWM_pad (.I(LCD_BKLT_PWM_c_0), .O(LCD_BKLT_PWM));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(25[9:21])
    ORCALUT4 i1_2_lut (.A(Decoded_Frame[13]), .B(n3944), .Z(n3954)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(160[12] 165[6])
    defparam i1_2_lut.init = 16'h4444;
    ORCALUT4 i884_2_lut (.A(GMUX_RESET_L_c), .B(n2415), .Z(n2647)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam i884_2_lut.init = 16'heeee;
    ORCALUT4 i24_2_lut_rep_89 (.A(Brightness_Level[0]), .B(Brightness_Level[1]), 
            .Z(n4801)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i24_2_lut_rep_89.init = 16'h6666;
    OB LCD_PWR_EN_pad (.I(LCD_PWR_EN_c_c), .O(LCD_PWR_EN));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(24[9:19])
    OB LCD_BKLT_EN_pad (.I(LCD_BKLT_EN_c_c), .O(LCD_BKLT_EN));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(23[9:20])
    OB LVDS_B_CLK_pad (.I(LVDS_B_CLK_c_c), .O(LVDS_B_CLK));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(20[9:19])
    OB LVDS_A_CLK_pad (.I(LVDS_B_CLK_c_c), .O(LVDS_A_CLK));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(19[9:19])
    OB LVDS_B_DATA_pad_0 (.I(LVDS_B_DATA_c_0_c), .O(LVDS_B_DATA[0]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(17[15:26])
    ORCALUT4 i1457_3_lut_4_lut_4_lut_4_lut (.A(Bit_Number[3]), .B(Bit_Number[2]), 
            .C(Bit_Number[1]), .D(Bit_Number[0]), .Z(n80)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A (B (C (D))+!B !(C (D))))) */ ;
    defparam i1457_3_lut_4_lut_4_lut_4_lut.init = 16'h344c;
    ORCALUT4 i2673_3_lut_4_lut_then_4_lut (.A(Brightness_Level[0]), .B(Brightness_Level[1]), 
            .C(Brightness_Level[4]), .D(Brightness_Level[2]), .Z(n4815)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i2673_3_lut_4_lut_then_4_lut.init = 16'h070f;
    ORCALUT4 i1_3_lut_3_lut (.A(Brightness_Level[0]), .B(Brightness_Level[1]), 
            .C(Brightness_Level[4]), .Z(n4466)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i1_3_lut_3_lut.init = 16'hfdfd;
    ORCALUT4 i1_4_lut_4_lut (.A(Brightness_Trigger_dly), .B(n4804), .C(n4406), 
            .D(Key_Clock), .Z(n4117)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[59:82])
    defparam i1_4_lut_4_lut.init = 16'h4000;
    PFUMX i1243 (.BLUT(n4105), .ALUT(n3006), .C0(n1847), .Z(n2883));
    OB LVDS_B_DATA_pad_1 (.I(LVDS_B_DATA_c_1_c), .O(LVDS_B_DATA[1]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(17[15:26])
    ORCALUT4 i2673_3_lut_4_lut_else_4_lut (.A(Brightness_Level[0]), .B(Brightness_Level[1]), 
            .C(Brightness_Level[4]), .D(Brightness_Level[2]), .Z(n4814)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i2673_3_lut_4_lut_else_4_lut.init = 16'h0f08;
    ORCALUT4 equal_140_i6_2_lut (.A(Bit_Number[2]), .B(Bit_Number[3]), .Z(n6)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(122[7:32])
    defparam equal_140_i6_2_lut.init = 16'hdddd;
    OB LVDS_B_DATA_pad_2 (.I(LVDS_B_DATA_c_2_c), .O(LVDS_B_DATA[2]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(17[15:26])
    ORCALUT4 i1_4_lut_4_lut_adj_1 (.A(Brightness_Trigger_dly), .B(n4244), 
            .C(n4406), .D(Key_Clock), .Z(n4106)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[59:82])
    defparam i1_4_lut_4_lut_adj_1.init = 16'h4000;
    ORCALUT4 i1_4_lut_4_lut_adj_2 (.A(Brightness_Trigger_dly), .B(n4294), 
            .C(n4312), .D(Key_Clock), .Z(n1510)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[59:82])
    defparam i1_4_lut_4_lut_adj_2.init = 16'h4000;
    ORCALUT4 i2720_3_lut_4_lut_4_lut (.A(Brightness_Level[2]), .B(n4063), 
            .C(n4787), .D(n1837), .Z(n2877)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;
    defparam i2720_3_lut_4_lut_4_lut.init = 16'hfc5c;
    ORCALUT4 mux_374_i13_3_lut_3_lut (.A(Brightness_Level[2]), .B(n1837), 
            .C(Brightness_Level[1]), .Z(n1921)) /* synthesis lut_function=(A (B (C))+!A ((C)+!B)) */ ;
    defparam mux_374_i13_3_lut_3_lut.init = 16'hd1d1;
    ORCALUT4 i1_3_lut_3_lut_adj_3 (.A(Brightness_Level[4]), .B(Brightness_Level[0]), 
            .C(Brightness_Level[1]), .Z(n4406)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_3_lut_3_lut_adj_3.init = 16'h0404;
    ORCALUT4 i1432_3_lut_3_lut (.A(Brightness_Level[4]), .B(n4783), .C(n3267), 
            .Z(n3193)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam i1432_3_lut_3_lut.init = 16'h7474;
    CCU2B Prescale_Counter_401_add_4_23 (.A0(n2), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(Prescale_Counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3724), .S0(n99), .S1(n98));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401_add_4_23.INIT0 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_23.INIT1 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_23.INJECT1_0 = "NO";
    defparam Prescale_Counter_401_add_4_23.INJECT1_1 = "NO";
    CCU2B add_656_15 (.A0(n8), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n6_adj_4), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n3756), 
          .COUT(n3757), .S0(n2401), .S1(n2400));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_656_15.INIT0 = 16'haaaa;
    defparam add_656_15.INIT1 = 16'haaaa;
    defparam add_656_15.INJECT1_0 = "NO";
    defparam add_656_15.INJECT1_1 = "NO";
    CCU2B Prescale_Counter_401_add_4_21 (.A0(n4_adj_19), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n3), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3723), .COUT(n3724), .S0(n101), .S1(n100));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401_add_4_21.INIT0 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_21.INIT1 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_21.INJECT1_0 = "NO";
    defparam Prescale_Counter_401_add_4_21.INJECT1_1 = "NO";
    CCU2B Prescale_Counter_401_add_4_19 (.A0(n6_adj_18), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n5), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3722), .COUT(n3723), .S0(n103), .S1(n102));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401_add_4_19.INIT0 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_19.INIT1 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_19.INJECT1_0 = "NO";
    defparam Prescale_Counter_401_add_4_19.INJECT1_1 = "NO";
    CCU2B add_656_13 (.A0(n12_adj_21), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n10), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n3755), 
          .COUT(n3756), .S0(n2403), .S1(n2402));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_656_13.INIT0 = 16'haaaa;
    defparam add_656_13.INIT1 = 16'haaaa;
    defparam add_656_13.INJECT1_0 = "NO";
    defparam add_656_13.INJECT1_1 = "NO";
    CCU2B add_656_11 (.A0(n16), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n14), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n3754), 
          .COUT(n3755), .S0(n2405), .S1(n2404));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_656_11.INIT0 = 16'haaaa;
    defparam add_656_11.INIT1 = 16'haaaa;
    defparam add_656_11.INJECT1_0 = "NO";
    defparam add_656_11.INJECT1_1 = "NO";
    CCU2B add_656_9 (.A0(n20_adj_8), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n18), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n3753), 
          .COUT(n3754), .S0(n2407), .S1(n2406));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_656_9.INIT0 = 16'haaaa;
    defparam add_656_9.INIT1 = 16'haaaa;
    defparam add_656_9.INJECT1_0 = "NO";
    defparam add_656_9.INJECT1_1 = "NO";
    ORCALUT4 i2772_4_lut (.A(Bit_Number[0]), .B(LPC_CLK33M_GMUX_c_enable_32), 
            .C(Bit_Number[1]), .D(n4803), .Z(LPC_CLK33M_GMUX_c_enable_30)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam i2772_4_lut.init = 16'h0080;
    CCU2B PWM_Counter_402_add_4_15 (.A0(PWM_Counter[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(PWM_Counter[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3732), .COUT(n3733), .S0(n77), 
          .S1(n76));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402_add_4_15.INIT0 = 16'haaa0;
    defparam PWM_Counter_402_add_4_15.INIT1 = 16'haaa0;
    defparam PWM_Counter_402_add_4_15.INJECT1_0 = "NO";
    defparam PWM_Counter_402_add_4_15.INJECT1_1 = "NO";
    ORCALUT4 i1097_3_lut_3_lut (.A(Brightness_Level[4]), .B(n4783), .C(n1973), 
            .Z(n2861)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam i1097_3_lut_3_lut.init = 16'h7474;
    ORCALUT4 n6_bdd_3_lut (.A(n6_adj_7), .B(n1513), .C(Duty_Cycle[1]), 
            .Z(n4929)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n6_bdd_3_lut.init = 16'hd8d8;
    PFUMX mux_377_i1 (.BLUT(n4106), .ALUT(n4477), .C0(n1845), .Z(n1983));
    ORCALUT4 i10_4_lut_4_lut (.A(n4787), .B(n4783), .C(Brightness_Level[4]), 
            .D(n4290), .Z(n6_adj_3)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam i10_4_lut_4_lut.init = 16'hd1c0;
    ORCALUT4 i2659_3_lut_4_lut (.A(n4258), .B(n4785), .C(Key_Clock), .D(Brightness_Trigger_dly), 
            .Z(n6_adj_7)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i2659_3_lut_4_lut.init = 16'h00b0;
    ORCALUT4 i2718_4_lut_4_lut (.A(n4783), .B(n1845), .C(n1972), .D(n1955), 
            .Z(n3205)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i2718_4_lut_4_lut.init = 16'hf4b0;
    ORCALUT4 i1_3_lut_rep_71 (.A(Key_Clock), .B(Brightness_Trigger_dly), 
            .C(n9), .Z(n4783)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_3_lut_rep_71.init = 16'h2020;
    ORCALUT4 mux_375_i12_3_lut (.A(Brightness_Level[3]), .B(Brightness_Level[1]), 
            .C(n4793), .Z(n1937)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_375_i12_3_lut.init = 16'hcaca;
    ORCALUT4 n4783_bdd_4_lut_2924 (.A(n4793), .B(n1845), .C(n1841), .D(Brightness_Level[2]), 
            .Z(n4927)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B (C+(D)))) */ ;
    defparam n4783_bdd_4_lut_2924.init = 16'heee2;
    ORCALUT4 i1105_3_lut (.A(n4762), .B(Brightness_Level[4]), .C(n4783), 
            .Z(n2869)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam i1105_3_lut.init = 16'hcaca;
    CCU2B add_656_7 (.A0(n24), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n22_adj_10), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3752), .COUT(n3753), .S0(n2409), .S1(n2408));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_656_7.INIT0 = 16'haaaa;
    defparam add_656_7.INIT1 = 16'haaaa;
    defparam add_656_7.INJECT1_0 = "NO";
    defparam add_656_7.INJECT1_1 = "NO";
    ORCALUT4 i7_4_lut (.A(Decoded_Frame[4]), .B(Decoded_Frame[9]), .C(Decoded_Frame[10]), 
            .D(Decoded_Frame[8]), .Z(n18_adj_24)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    ORCALUT4 n4783_bdd_1_lut_2927 (.A(Brightness_Level[4]), .Z(n4926)) /* synthesis lut_function=(!(A)) */ ;
    defparam n4783_bdd_1_lut_2927.init = 16'h5555;
    CCU2B add_656_5 (.A0(n28), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n26_adj_13), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3751), .COUT(n3752), .S0(n2411), .S1(n2410));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_656_5.INIT0 = 16'haaaa;
    defparam add_656_5.INIT1 = 16'haaaa;
    defparam add_656_5.INJECT1_0 = "NO";
    defparam add_656_5.INJECT1_1 = "NO";
    ORCALUT4 mux_377_i14_3_lut (.A(n1937), .B(n1953), .C(n1845), .Z(n1970)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_377_i14_3_lut.init = 16'hcaca;
    ORCALUT4 i2748_2_lut_4_lut (.A(Key_Clock), .B(Brightness_Trigger_dly), 
            .C(n9), .D(n1847), .Z(n4532)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (D))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i2748_2_lut_4_lut.init = 16'h20ff;
    CCU2B PWM_Counter_402_add_4_13 (.A0(PWM_Counter[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(PWM_Counter[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3731), .COUT(n3732), .S0(n79_adj_6), 
          .S1(n78));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402_add_4_13.INIT0 = 16'haaa0;
    defparam PWM_Counter_402_add_4_13.INIT1 = 16'haaa0;
    defparam PWM_Counter_402_add_4_13.INJECT1_0 = "NO";
    defparam PWM_Counter_402_add_4_13.INJECT1_1 = "NO";
    ORCALUT4 i2746_2_lut_4_lut (.A(Key_Clock), .B(Brightness_Trigger_dly), 
            .C(n9), .D(n1847), .Z(n4521)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i2746_2_lut_4_lut.init = 16'hff20;
    CCU2B add_656_3 (.A0(n32_adj_16), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n30), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n3750), 
          .COUT(n3751), .S0(n2413), .S1(n2412));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_656_3.INIT0 = 16'haaaa;
    defparam add_656_3.INIT1 = 16'haaaa;
    defparam add_656_3.INJECT1_0 = "NO";
    defparam add_656_3.INJECT1_1 = "NO";
    FD1P3IX Delay_Counter__i9 (.D(n29), .SP(LPC_CLK33M_GMUX_c_enable_21), 
            .CD(Delay_Counter_10__N_143), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[9]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Delay_Counter__i9.GSR = "ENABLED";
    CCU2B add_643_add_4_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n3743), .S0(cout));
    defparam add_643_add_4_cout.INIT0 = 16'h0000;
    defparam add_643_add_4_cout.INIT1 = 16'h0000;
    defparam add_643_add_4_cout.INJECT1_0 = "NO";
    defparam add_643_add_4_cout.INJECT1_1 = "NO";
    FD1P3IX Bit_Number__i0 (.D(n3289), .SP(LPC_CLK33M_GMUX_c_enable_32), 
            .CD(Frame_Counter_16__N_146[16]), .CK(LPC_CLK33M_GMUX_c), .Q(Bit_Number[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Bit_Number__i0.GSR = "ENABLED";
    PFUMX mux_264_i13 (.BLUT(n1921), .ALUT(n1656), .C0(n4784), .Z(n1736));
    PFUMX mux_264_i5 (.BLUT(n1664), .ALUT(n1979), .C0(n1847), .Z(n1744));
    PFUMX i1081 (.BLUT(n3266), .ALUT(n3193), .C0(n4518), .Z(n2845));
    ORCALUT4 i2738_3_lut_4_lut (.A(Brightness_Level[4]), .B(n4791), .C(Brightness_Trigger_dly), 
            .D(Key_Clock), .Z(n3234)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2738_3_lut_4_lut.init = 16'hfeff;
    ORCALUT4 Brightness_Level_2__bdd_4_lut_2830 (.A(n4806), .B(n565), .C(Brightness_Level[1]), 
            .D(Brightness_Level[0]), .Z(n4731)) /* synthesis lut_function=(A ((C+(D))+!B)) */ ;
    defparam Brightness_Level_2__bdd_4_lut_2830.init = 16'haaa2;
    GSR GSR_INST (.GSR(VCC_net));
    FD1S3IX Prescale_Counter_401__i0 (.D(n120), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n23)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i0.GSR = "ENABLED";
    FD1P3IX Delay_Counter__i8 (.D(n32), .SP(LPC_CLK33M_GMUX_c_enable_21), 
            .CD(Delay_Counter_10__N_143), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[8]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Delay_Counter__i8.GSR = "ENABLED";
    ORCALUT4 mux_377_i12_3_lut_4_lut_4_lut (.A(Brightness_Level[4]), .B(n4783), 
            .C(n4793), .D(Brightness_Level[3]), .Z(n1972)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A !(B+!(C+(D))))) */ ;
    defparam mux_377_i12_3_lut_4_lut_4_lut.init = 16'h4447;
    ORCALUT4 i1490_2_lut_rep_90 (.A(Bit_Number[0]), .B(Bit_Number[1]), .Z(n4802)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1490_2_lut_rep_90.init = 16'heeee;
    ORCALUT4 i2732_3_lut_4_lut (.A(Bit_Number[0]), .B(Bit_Number[1]), .C(LPC_CLK33M_GMUX_c_enable_32), 
            .D(n4803), .Z(LPC_CLK33M_GMUX_c_enable_2)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2732_3_lut_4_lut.init = 16'h0010;
    CCU2B add_656_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n34), .B1(GMUX_RESET_L_c), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3750), .S1(n2414));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_656_1.INIT0 = 16'h0000;
    defparam add_656_1.INIT1 = 16'h999a;
    defparam add_656_1.INJECT1_0 = "NO";
    defparam add_656_1.INJECT1_1 = "NO";
    FD1P3IX Delay_Counter__i7 (.D(n35), .SP(LPC_CLK33M_GMUX_c_enable_21), 
            .CD(Delay_Counter_10__N_143), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[7]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Delay_Counter__i7.GSR = "ENABLED";
    FD1P3IX Delay_Counter__i6 (.D(n38), .SP(LPC_CLK33M_GMUX_c_enable_21), 
            .CD(Delay_Counter_10__N_143), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[6]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Delay_Counter__i6.GSR = "ENABLED";
    FD1P3IX Delay_Counter__i5 (.D(n41), .SP(LPC_CLK33M_GMUX_c_enable_21), 
            .CD(Delay_Counter_10__N_143), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[5]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Delay_Counter__i5.GSR = "ENABLED";
    FD1P3IX Delay_Counter__i4 (.D(n44), .SP(LPC_CLK33M_GMUX_c_enable_21), 
            .CD(Delay_Counter_10__N_143), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[4]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Delay_Counter__i4.GSR = "ENABLED";
    FD1P3IX Delay_Counter__i3 (.D(n47), .SP(LPC_CLK33M_GMUX_c_enable_21), 
            .CD(Delay_Counter_10__N_143), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[3]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Delay_Counter__i3.GSR = "ENABLED";
    FD1P3IX Delay_Counter__i2 (.D(n50), .SP(LPC_CLK33M_GMUX_c_enable_21), 
            .CD(Delay_Counter_10__N_143), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[2]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Delay_Counter__i2.GSR = "ENABLED";
    FD1P3IX Delay_Counter__i1 (.D(n53), .SP(LPC_CLK33M_GMUX_c_enable_21), 
            .CD(Delay_Counter_10__N_143), .CK(LPC_CLK33M_GMUX_c), .Q(Delay_Counter[1]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Delay_Counter__i1.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_adj_4 (.A(Brightness_Trigger_dly), .B(Key_Clock), 
            .C(n4374), .D(n4801), .Z(n3005)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_4.init = 16'hfbff;
    ORCALUT4 i1_2_lut_adj_5 (.A(Brightness_Level[2]), .B(Brightness_Level[4]), 
            .Z(n4374)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_5.init = 16'hdddd;
    ORCALUT4 i1_2_lut_3_lut (.A(Brightness_Level[0]), .B(Brightness_Level[1]), 
            .C(Brightness_Level[4]), .Z(n4294)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h0606;
    ORCALUT4 i2652_2_lut_rep_73_3_lut_4_lut (.A(n4800), .B(Brightness_Level[1]), 
            .C(Brightness_Level[4]), .D(Brightness_Level[0]), .Z(n4785)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2652_2_lut_rep_73_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1474_3_lut (.A(n3234), .B(n4794), .C(Duty_Cycle[5]), .Z(n3236)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam i1474_3_lut.init = 16'hecec;
    FD1S3IX Last_Key_Press__i1 (.D(Last_Key_Press_1__N_182[1]), .CK(Frame_Clock), 
            .CD(GND_net), .Q(Last_Key_Press[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(155[9] 172[5])
    defparam Last_Key_Press__i1.GSR = "ENABLED";
    FD1S3AX PWM_Counter_402__i0 (.D(n90), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402__i0.GSR = "ENABLED";
    ORCALUT4 i2760_3_lut_4_lut (.A(Bit_Number[0]), .B(Bit_Number[1]), .C(LPC_CLK33M_GMUX_c_enable_32), 
            .D(n4809), .Z(LPC_CLK33M_GMUX_c_enable_24)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2760_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_2_lut_adj_6 (.A(Brightness_Level[3]), .B(Brightness_Level[2]), 
            .Z(n4464)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_6.init = 16'hbbbb;
    CCU2B add_116_add_4_11 (.A0(Delay_Counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(Delay_Counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3748), .S0(n29), .S1(n26));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(132[22:38])
    defparam add_116_add_4_11.INIT0 = 16'haaaa;
    defparam add_116_add_4_11.INIT1 = 16'haaaa;
    defparam add_116_add_4_11.INJECT1_0 = "NO";
    defparam add_116_add_4_11.INJECT1_1 = "NO";
    ORCALUT4 i2770_3_lut_4_lut (.A(Bit_Number[0]), .B(Bit_Number[1]), .C(LPC_CLK33M_GMUX_c_enable_32), 
            .D(n6), .Z(LPC_CLK33M_GMUX_c_enable_33)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2770_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_4_lut_rep_81 (.A(Key_Clock), .B(Brightness_Trigger_dly), 
            .C(n4244), .D(n4294), .Z(n4793)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_4_lut_rep_81.init = 16'h2000;
    ORCALUT4 i1_2_lut_rep_91 (.A(Bit_Number[2]), .B(Bit_Number[3]), .Z(n4803)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(122[7:32])
    defparam i1_2_lut_rep_91.init = 16'heeee;
    ORCALUT4 Brightness_Level_4__N_227_bdd_4_lut (.A(Brightness_Level[2]), 
            .B(n565), .C(Brightness_Level[1]), .D(Brightness_Level[0]), 
            .Z(n4733)) /* synthesis lut_function=(A ((C+(D))+!B)+!A !((C+(D))+!B)) */ ;
    defparam Brightness_Level_4__N_227_bdd_4_lut.init = 16'haaa6;
    ORCALUT4 Brightness_Level_4__N_227_bdd_3_lut (.A(Brightness_Level[2]), 
            .B(Brightness_Level[1]), .C(Brightness_Level[0]), .Z(n4734)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;
    defparam Brightness_Level_4__N_227_bdd_3_lut.init = 16'h6a6a;
    CCU2B add_116_add_4_9 (.A0(Delay_Counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(Delay_Counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3747), .COUT(n3748), .S0(n35), .S1(n32));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(132[22:38])
    defparam add_116_add_4_9.INIT0 = 16'haaaa;
    defparam add_116_add_4_9.INIT1 = 16'haaaa;
    defparam add_116_add_4_9.INJECT1_0 = "NO";
    defparam add_116_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 i2774_3_lut_4_lut (.A(Bit_Number[2]), .B(Bit_Number[3]), .C(LPC_CLK33M_GMUX_c_enable_32), 
            .D(n4807), .Z(LPC_CLK33M_GMUX_c_enable_29)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(122[7:32])
    defparam i2774_3_lut_4_lut.init = 16'h0010;
    CCU2B Prescale_Counter_401_add_4_3 (.A0(n22), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n21), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3714), .COUT(n3715), .S0(n119), .S1(n118));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401_add_4_3.INIT0 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_3.INIT1 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_3.INJECT1_0 = "NO";
    defparam Prescale_Counter_401_add_4_3.INJECT1_1 = "NO";
    CCU2B add_643_add_4_18 (.A0(PWM_Counter[15]), .B0(Duty_Cycle[15]), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[16]), .B1(Duty_Cycle[16]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3742), .COUT(n3743));
    defparam add_643_add_4_18.INIT0 = 16'h999a;
    defparam add_643_add_4_18.INIT1 = 16'h999a;
    defparam add_643_add_4_18.INJECT1_0 = "NO";
    defparam add_643_add_4_18.INJECT1_1 = "NO";
    ORCALUT4 i2776_3_lut_4_lut (.A(Bit_Number[2]), .B(Bit_Number[3]), .C(LPC_CLK33M_GMUX_c_enable_32), 
            .D(n4808), .Z(LPC_CLK33M_GMUX_c_enable_28)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(122[7:32])
    defparam i2776_3_lut_4_lut.init = 16'h0010;
    ORCALUT4 i1_2_lut_rep_92 (.A(Brightness_Level[2]), .B(Brightness_Level[3]), 
            .Z(n4804)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_2_lut_rep_92.init = 16'h8888;
    FD1S3IX add_117_e1_i0_i0 (.D(n2414), .CK(LPC_CLK33M_GMUX_c), .CD(n2647), 
            .Q(n34));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_117_e1_i0_i0.GSR = "ENABLED";
    ORCALUT4 i80_4_lut (.A(Last_Key_Press[1]), .B(n4166), .C(n4168), .D(Brightness_Level[3]), 
            .Z(n565)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(199[16:64])
    defparam i80_4_lut.init = 16'haaa8;
    ORCALUT4 i1_3_lut_4_lut (.A(Brightness_Level[2]), .B(Brightness_Level[3]), 
            .C(n4466), .D(Brightness_Trigger_dly), .Z(n4456)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_3_lut_4_lut.init = 16'hfff7;
    ORCALUT4 mux_377_i5_4_lut_4_lut (.A(n4793), .B(n1845), .C(n4786), 
            .D(Brightness_Level[3]), .Z(n1979)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(D)))) */ ;
    defparam mux_377_i5_4_lut_4_lut.init = 16'h1d0c;
    ORCALUT4 i1_2_lut_adj_7 (.A(Brightness_Level[4]), .B(Brightness_Level[0]), 
            .Z(n4166)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_7.init = 16'heeee;
    ORCALUT4 i2651_3_lut_4_lut (.A(Brightness_Level[2]), .B(Brightness_Level[3]), 
            .C(n4358), .D(Key_Clock), .Z(n4477)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i2651_3_lut_4_lut.init = 16'h7fff;
    ORCALUT4 i1408_2_lut_rep_74 (.A(Brightness_Level[2]), .B(n1841), .Z(n4786)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam i1408_2_lut_rep_74.init = 16'heeee;
    ORCALUT4 i1_2_lut_adj_8 (.A(Brightness_Level[2]), .B(Brightness_Level[1]), 
            .Z(n4168)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_8.init = 16'heeee;
    ORCALUT4 i2713_3_lut (.A(n3232), .B(n1933), .C(n4787), .Z(n3233)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam i2713_3_lut.init = 16'hcaca;
    FD1P3IX Bit_Number__i1 (.D(n6_adj_22), .SP(LPC_CLK33M_GMUX_c_enable_32), 
            .CD(Frame_Counter_16__N_146[16]), .CK(LPC_CLK33M_GMUX_c), .Q(Bit_Number[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Bit_Number__i1.GSR = "ENABLED";
    ORCALUT4 i1_3_lut_4_lut_4_lut (.A(n4806), .B(n565), .C(Brightness_Level[1]), 
            .D(Brightness_Level[0]), .Z(Brightness_Level_4__N_78[1])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C))+!A !(C (D)+!C !(D))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'ha578;
    OB LVDS_A_DATA_pad_2 (.I(LVDS_A_DATA_c_2_c), .O(LVDS_A_DATA[2]));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(15[15:26])
    ORCALUT4 n4744_bdd_3_lut_4_lut (.A(Brightness_Level[4]), .B(Last_Key_Press[0]), 
            .C(Brightness_Level[2]), .D(n4743), .Z(n4745)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam n4744_bdd_3_lut_4_lut.init = 16'hf101;
    IB LVDS_A_DATA_c_1_pad (.I(LVDS_IG_A_DATA[1]), .O(LVDS_A_DATA_c_1_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(4[14:28])
    IB LVDS_A_DATA_c_0_pad (.I(LVDS_IG_A_DATA[0]), .O(LVDS_A_DATA_c_0_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(4[14:28])
    IB LVDS_B_DATA_c_2_pad (.I(LVDS_IG_B_DATA[2]), .O(LVDS_B_DATA_c_2_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(6[14:28])
    IB LVDS_B_DATA_c_1_pad (.I(LVDS_IG_B_DATA[1]), .O(LVDS_B_DATA_c_1_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(6[14:28])
    IB LVDS_B_DATA_c_0_pad (.I(LVDS_IG_B_DATA[0]), .O(LVDS_B_DATA_c_0_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(6[14:28])
    IB LVDS_B_CLK_c_pad (.I(LVDS_IG_A_CLK), .O(LVDS_B_CLK_c_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(8[8:21])
    IB LCD_BKLT_EN_c_pad (.I(LVDS_IG_BKL_ON), .O(LCD_BKLT_EN_c_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(11[8:22])
    IB LCD_PWR_EN_c_pad (.I(LVDS_IG_PANEL_PWR), .O(LCD_PWR_EN_c_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(12[8:25])
    IB LPC_CLK33M_GMUX_pad (.I(LPC_CLK33M_GMUX), .O(LPC_CLK33M_GMUX_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(41[9:24])
    IB GMUX_RESET_L_pad (.I(GMUX_RESET_L), .O(GMUX_RESET_L_c));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(45[9:21])
    CCU2B Prescale_Counter_401_add_4_13 (.A0(n12), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n11), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3719), .COUT(n3720), .S0(n109), .S1(n108));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401_add_4_13.INIT0 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_13.INIT1 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_13.INJECT1_0 = "NO";
    defparam Prescale_Counter_401_add_4_13.INJECT1_1 = "NO";
    PFUMX mux_264_i4 (.BLUT(n1665), .ALUT(n4118), .C0(n1847), .Z(n1745));
    CCU2B PWM_Counter_402_add_4_11 (.A0(PWM_Counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3730), .COUT(n3731), .S0(n81), .S1(n80_adj_5));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402_add_4_11.INIT0 = 16'haaa0;
    defparam PWM_Counter_402_add_4_11.INIT1 = 16'haaa0;
    defparam PWM_Counter_402_add_4_11.INJECT1_0 = "NO";
    defparam PWM_Counter_402_add_4_11.INJECT1_1 = "NO";
    CCU2B add_643_add_4_16 (.A0(PWM_Counter[13]), .B0(Duty_Cycle[13]), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[14]), .B1(Duty_Cycle[14]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3741), .COUT(n3742));
    defparam add_643_add_4_16.INIT0 = 16'h999a;
    defparam add_643_add_4_16.INIT1 = 16'h999a;
    defparam add_643_add_4_16.INJECT1_0 = "NO";
    defparam add_643_add_4_16.INJECT1_1 = "NO";
    CCU2B Prescale_Counter_401_add_4_17 (.A0(n8_adj_17), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n7), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3721), .COUT(n3722), .S0(n105), .S1(n104));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401_add_4_17.INIT0 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_17.INIT1 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_17.INJECT1_0 = "NO";
    defparam Prescale_Counter_401_add_4_17.INJECT1_1 = "NO";
    CCU2B PWM_Counter_402_add_4_9 (.A0(PWM_Counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3729), .COUT(n3730), .S0(n83), .S1(n82));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402_add_4_9.INIT0 = 16'haaa0;
    defparam PWM_Counter_402_add_4_9.INIT1 = 16'haaa0;
    defparam PWM_Counter_402_add_4_9.INJECT1_0 = "NO";
    defparam PWM_Counter_402_add_4_9.INJECT1_1 = "NO";
    CCU2B add_643_add_4_14 (.A0(PWM_Counter[11]), .B0(Duty_Cycle[11]), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[12]), .B1(Duty_Cycle[12]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3740), .COUT(n3741));
    defparam add_643_add_4_14.INIT0 = 16'h999a;
    defparam add_643_add_4_14.INIT1 = 16'h999a;
    defparam add_643_add_4_14.INJECT1_0 = "NO";
    defparam add_643_add_4_14.INJECT1_1 = "NO";
    CCU2B add_116_add_4_7 (.A0(Delay_Counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(Delay_Counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3746), .COUT(n3747), .S0(n41), .S1(n38));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(132[22:38])
    defparam add_116_add_4_7.INIT0 = 16'haaaa;
    defparam add_116_add_4_7.INIT1 = 16'haaaa;
    defparam add_116_add_4_7.INJECT1_0 = "NO";
    defparam add_116_add_4_7.INJECT1_1 = "NO";
    CCU2B add_643_add_4_12 (.A0(PWM_Counter[9]), .B0(Duty_Cycle[9]), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[10]), .B1(Duty_Cycle[10]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3739), .COUT(n3740));
    defparam add_643_add_4_12.INIT0 = 16'h999a;
    defparam add_643_add_4_12.INIT1 = 16'h999a;
    defparam add_643_add_4_12.INJECT1_0 = "NO";
    defparam add_643_add_4_12.INJECT1_1 = "NO";
    ORCALUT4 i2787_2_lut_rep_94 (.A(Last_Key_Press[0]), .B(Brightness_Level[4]), 
            .Z(n4806)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(199[13] 203[7])
    defparam i2787_2_lut_rep_94.init = 16'hdddd;
    FD1P3IX Decoded_Frame__i7 (.D(GMUX_RESET_L_c), .SP(LPC_CLK33M_GMUX_c_enable_23), 
            .CD(Frame_Counter_16__N_146[16]), .CK(LPC_CLK33M_GMUX_c), .Q(Decoded_Frame[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Decoded_Frame__i7.GSR = "ENABLED";
    ORCALUT4 Brightness_Level_2__bdd_3_lut_4_lut (.A(Last_Key_Press[0]), .B(Brightness_Level[4]), 
            .C(Brightness_Level[0]), .D(Brightness_Level[1]), .Z(n4730)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(199[13] 203[7])
    defparam Brightness_Level_2__bdd_3_lut_4_lut.init = 16'hfddd;
    FD1P3IX Decoded_Frame__i8 (.D(GMUX_RESET_L_c), .SP(LPC_CLK33M_GMUX_c_enable_24), 
            .CD(Frame_Counter_16__N_146[16]), .CK(LPC_CLK33M_GMUX_c), .Q(Decoded_Frame[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Decoded_Frame__i8.GSR = "ENABLED";
    FD1P3IX Decoded_Frame__i9 (.D(GMUX_RESET_L_c), .SP(LPC_CLK33M_GMUX_c_enable_25), 
            .CD(Frame_Counter_16__N_146[16]), .CK(LPC_CLK33M_GMUX_c), .Q(Decoded_Frame[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Decoded_Frame__i9.GSR = "ENABLED";
    FD1P3IX Decoded_Frame__i10 (.D(GMUX_RESET_L_c), .SP(LPC_CLK33M_GMUX_c_enable_26), 
            .CD(Frame_Counter_16__N_146[16]), .CK(LPC_CLK33M_GMUX_c), .Q(Decoded_Frame[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Decoded_Frame__i10.GSR = "ENABLED";
    FD1P3IX Decoded_Frame__i11 (.D(GMUX_RESET_L_c), .SP(LPC_CLK33M_GMUX_c_enable_27), 
            .CD(Frame_Counter_16__N_146[16]), .CK(LPC_CLK33M_GMUX_c), .Q(Decoded_Frame[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Decoded_Frame__i11.GSR = "ENABLED";
    CCU2B add_643_add_4_10 (.A0(PWM_Counter[7]), .B0(Duty_Cycle[7]), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[8]), .B1(Duty_Cycle[8]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3738), .COUT(n3739));
    defparam add_643_add_4_10.INIT0 = 16'h999a;
    defparam add_643_add_4_10.INIT1 = 16'h999a;
    defparam add_643_add_4_10.INJECT1_0 = "NO";
    defparam add_643_add_4_10.INJECT1_1 = "NO";
    ORCALUT4 i1_3_lut_4_lut_adj_9 (.A(Last_Key_Press[0]), .B(Brightness_Level[4]), 
            .C(Brightness_Level[0]), .D(n565), .Z(Brightness_Level_4__N_78[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C))+!A (C (D)+!C !(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(199[13] 203[7])
    defparam i1_3_lut_4_lut_adj_9.init = 16'h0fd2;
    CCU2B add_116_add_4_5 (.A0(Delay_Counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(Delay_Counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3745), .COUT(n3746), .S0(n47), .S1(n44));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(132[22:38])
    defparam add_116_add_4_5.INIT0 = 16'haaaa;
    defparam add_116_add_4_5.INIT1 = 16'haaaa;
    defparam add_116_add_4_5.INJECT1_0 = "NO";
    defparam add_116_add_4_5.INJECT1_1 = "NO";
    CCU2B Prescale_Counter_401_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n23), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3714), .S1(n120));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401_add_4_1.INIT0 = 16'h0000;
    defparam Prescale_Counter_401_add_4_1.INIT1 = 16'h555f;
    defparam Prescale_Counter_401_add_4_1.INJECT1_0 = "NO";
    defparam Prescale_Counter_401_add_4_1.INJECT1_1 = "NO";
    ORCALUT4 Brightness_Level_4__bdd_4_lut_2831 (.A(Brightness_Level[4]), 
            .B(Brightness_Level[3]), .C(Last_Key_Press[0]), .D(n6_adj_1), 
            .Z(n4740)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam Brightness_Level_4__bdd_4_lut_2831.init = 16'hfac9;
    CCU2B add_643_add_4_8 (.A0(PWM_Counter[5]), .B0(Duty_Cycle[5]), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[6]), .B1(Duty_Cycle[6]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3737), .COUT(n3738));
    defparam add_643_add_4_8.INIT0 = 16'h999a;
    defparam add_643_add_4_8.INIT1 = 16'h999a;
    defparam add_643_add_4_8.INJECT1_0 = "NO";
    defparam add_643_add_4_8.INJECT1_1 = "NO";
    CCU2B add_116_add_4_3 (.A0(Delay_Counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(Delay_Counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3744), .COUT(n3745), .S0(n53), .S1(n50));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(132[22:38])
    defparam add_116_add_4_3.INIT0 = 16'haaaa;
    defparam add_116_add_4_3.INIT1 = 16'haaaa;
    defparam add_116_add_4_3.INJECT1_0 = "NO";
    defparam add_116_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 Brightness_Level_4__bdd_4_lut_2895 (.A(Brightness_Level[4]), 
            .B(n565), .C(Last_Key_Press[0]), .D(Brightness_Level[0]), 
            .Z(n4741)) /* synthesis lut_function=(A ((D)+!B)+!A (B (C (D)+!C !(D))+!B (C (D)))) */ ;
    defparam Brightness_Level_4__bdd_4_lut_2895.init = 16'hfa26;
    ORCALUT4 i1399_3_lut (.A(n1978), .B(Brightness_Level[4]), .C(n4783), 
            .Z(n3160)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam i1399_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_4_lut_4_lut (.A(n4794), .B(n3234), .C(Duty_Cycle[15]), 
            .D(n4787), .Z(n4105)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0040;
    ORCALUT4 n4747_bdd_3_lut_4_lut (.A(Last_Key_Press[0]), .B(Brightness_Level[4]), 
            .C(n4740), .D(n4747), .Z(Brightness_Level_4__N_78[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(199[13] 203[7])
    defparam n4747_bdd_3_lut_4_lut.init = 16'hf2d0;
    ORCALUT4 i1_3_lut_4_lut_adj_10 (.A(Last_Key_Press[0]), .B(Brightness_Level[4]), 
            .C(Brightness_Level[3]), .D(n6_adj_1), .Z(Brightness_Level_4__N_78[3])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (C (D)+!C !(D))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(199[13] 203[7])
    defparam i1_3_lut_4_lut_adj_10.init = 16'hd22d;
    ORCALUT4 i1430_4_lut_4_lut (.A(Key_Clock), .B(n4430), .C(Brightness_Trigger_dly), 
            .D(Brightness_Level[2]), .Z(n1928)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(182[9] 190[5])
    defparam i1430_4_lut_4_lut.init = 16'hfd00;
    FD1P3IX Decoded_Frame__i1 (.D(GMUX_RESET_L_c), .SP(LPC_CLK33M_GMUX_c_enable_28), 
            .CD(Frame_Counter_16__N_146[16]), .CK(LPC_CLK33M_GMUX_c), .Q(Decoded_Frame[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Decoded_Frame__i1.GSR = "ENABLED";
    FD1P3IX Decoded_Frame__i2 (.D(GMUX_RESET_L_c), .SP(LPC_CLK33M_GMUX_c_enable_29), 
            .CD(Frame_Counter_16__N_146[16]), .CK(LPC_CLK33M_GMUX_c), .Q(Decoded_Frame[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Decoded_Frame__i2.GSR = "ENABLED";
    FD1P3IX Decoded_Frame__i3 (.D(GMUX_RESET_L_c), .SP(LPC_CLK33M_GMUX_c_enable_30), 
            .CD(Frame_Counter_16__N_146[16]), .CK(LPC_CLK33M_GMUX_c), .Q(Decoded_Frame[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Decoded_Frame__i3.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_4_lut_adj_11 (.A(Key_Clock), .B(n4464), .C(n4466), 
            .D(Brightness_Trigger_dly), .Z(n4095)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(182[9] 190[5])
    defparam i1_4_lut_4_lut_adj_11.init = 16'hfffd;
    CCU2B PWM_Counter_402_add_4_7 (.A0(PWM_Counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3728), .COUT(n3729), .S0(n85), .S1(n84));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402_add_4_7.INIT0 = 16'haaa0;
    defparam PWM_Counter_402_add_4_7.INIT1 = 16'haaa0;
    defparam PWM_Counter_402_add_4_7.INJECT1_0 = "NO";
    defparam PWM_Counter_402_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_adj_12 (.A(n4222), .B(Frame_Counter_16__N_146[16]), 
            .C(n4026), .D(Delay_Counter_10__N_143), .Z(LPC_CLK33M_GMUX_c_enable_32)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_12.init = 16'hccce;
    ORCALUT4 i1_3_lut_3_lut_adj_13 (.A(n4794), .B(Duty_Cycle[14]), .C(n3234), 
            .Z(n4290)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_3_lut_3_lut_adj_13.init = 16'h4040;
    CCU2B Prescale_Counter_401_add_4_11 (.A0(n14_adj_12), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(n13), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3718), .COUT(n3719), .S0(n111), .S1(n110));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401_add_4_11.INIT0 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_11.INIT1 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_11.INJECT1_0 = "NO";
    defparam Prescale_Counter_401_add_4_11.INJECT1_1 = "NO";
    CCU2B Prescale_Counter_401_add_4_9 (.A0(n16_adj_11), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n15), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3717), .COUT(n3718), .S0(n113), .S1(n112));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401_add_4_9.INIT0 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_9.INIT1 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_9.INJECT1_0 = "NO";
    defparam Prescale_Counter_401_add_4_9.INJECT1_1 = "NO";
    ORCALUT4 i8_4_lut_4_lut_4_lut (.A(Key_Clock), .B(n4456), .C(n1845), 
            .D(n4793), .Z(n4_adj_2)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(182[9] 190[5])
    defparam i8_4_lut_4_lut_4_lut.init = 16'hd0df;
    ORCALUT4 i2789_3_lut_3_lut (.A(n4787), .B(n1847), .C(n4783), .Z(n4518)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2789_3_lut_3_lut.init = 16'hfefe;
    ORCALUT4 Brightness_Level_4__bdd_2_lut_2896 (.A(Brightness_Level[4]), 
            .B(Last_Key_Press[0]), .Z(n4746)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam Brightness_Level_4__bdd_2_lut_2896.init = 16'h1111;
    ORCALUT4 equal_135_i5_2_lut_rep_95 (.A(Bit_Number[0]), .B(Bit_Number[1]), 
            .Z(n4807)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(122[7:32])
    defparam equal_135_i5_2_lut_rep_95.init = 16'hbbbb;
    ORCALUT4 i1_3_lut_3_lut_adj_14 (.A(n4794), .B(Duty_Cycle[10]), .C(n3234), 
            .Z(n4063)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_3_lut_3_lut_adj_14.init = 16'h4040;
    ORCALUT4 i1_3_lut_3_lut_adj_15 (.A(n4794), .B(Duty_Cycle[6]), .C(n3234), 
            .Z(n4089)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_3_lut_3_lut_adj_15.init = 16'h4040;
    ORCALUT4 i2762_2_lut_rep_72 (.A(n1847), .B(n4787), .Z(n4784)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam i2762_2_lut_rep_72.init = 16'hbbbb;
    PFUMX i1101 (.BLUT(n3212), .ALUT(n3160), .C0(n4521), .Z(n2865));
    ORCALUT4 mux_264_i9_3_lut_4_lut (.A(n1847), .B(n4787), .C(n1660), 
            .D(n4509), .Z(n1740)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_264_i9_3_lut_4_lut.init = 16'hf4b0;
    ORCALUT4 i1_3_lut (.A(Brightness_Level[1]), .B(Brightness_Level[4]), 
            .C(Brightness_Level[0]), .Z(n4358)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_3_lut.init = 16'h0202;
    CCU2B PWM_Counter_402_add_4_5 (.A0(PWM_Counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3727), .COUT(n3728), .S0(n87), .S1(n86));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402_add_4_5.INIT0 = 16'haaa0;
    defparam PWM_Counter_402_add_4_5.INIT1 = 16'haaa0;
    defparam PWM_Counter_402_add_4_5.INJECT1_0 = "NO";
    defparam PWM_Counter_402_add_4_5.INJECT1_1 = "NO";
    CCU2B Prescale_Counter_401_add_4_7 (.A0(n18_adj_9), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n17), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3716), .COUT(n3717), .S0(n115), .S1(n114));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401_add_4_7.INIT0 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_7.INIT1 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_7.INJECT1_0 = "NO";
    defparam Prescale_Counter_401_add_4_7.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_rep_75 (.A(Key_Clock), .B(Brightness_Trigger_dly), 
            .C(n4792), .D(Brightness_Level[4]), .Z(n4787)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_4_lut_rep_75.init = 16'h0020;
    PFUMX i1103 (.BLUT(n3233), .ALUT(n3158), .C0(n4521), .Z(n2867));
    ORCALUT4 i2766_3_lut_4_lut (.A(Bit_Number[0]), .B(Bit_Number[1]), .C(n6), 
            .D(LPC_CLK33M_GMUX_c_enable_32), .Z(LPC_CLK33M_GMUX_c_enable_36)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(122[7:32])
    defparam i2766_3_lut_4_lut.init = 16'h0400;
    ORCALUT4 i2756_3_lut_4_lut (.A(Bit_Number[0]), .B(Bit_Number[1]), .C(n4809), 
            .D(LPC_CLK33M_GMUX_c_enable_32), .Z(LPC_CLK33M_GMUX_c_enable_26)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(122[7:32])
    defparam i2756_3_lut_4_lut.init = 16'h0400;
    ORCALUT4 i1_2_lut_adj_16 (.A(Brightness_Level[3]), .B(Brightness_Level[2]), 
            .Z(n4244)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_2_lut_adj_16.init = 16'h2222;
    ORCALUT4 i1_2_lut_rep_96 (.A(Bit_Number[1]), .B(Bit_Number[0]), .Z(n4808)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(122[7:32])
    defparam i1_2_lut_rep_96.init = 16'hbbbb;
    ORCALUT4 i2758_3_lut_4_lut (.A(Bit_Number[1]), .B(Bit_Number[0]), .C(n4809), 
            .D(LPC_CLK33M_GMUX_c_enable_32), .Z(LPC_CLK33M_GMUX_c_enable_25)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(122[7:32])
    defparam i2758_3_lut_4_lut.init = 16'h0400;
    CCU2B add_116_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(Delay_Counter[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3744), .S1(n56));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(132[22:38])
    defparam add_116_add_4_1.INIT0 = 16'h0000;
    defparam add_116_add_4_1.INIT1 = 16'h555a;
    defparam add_116_add_4_1.INJECT1_0 = "NO";
    defparam add_116_add_4_1.INJECT1_1 = "NO";
    CCU2B PWM_Counter_402_add_4_3 (.A0(PWM_Counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3726), .COUT(n3727), .S0(n89), .S1(n88));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402_add_4_3.INIT0 = 16'haaa0;
    defparam PWM_Counter_402_add_4_3.INIT1 = 16'haaa0;
    defparam PWM_Counter_402_add_4_3.INJECT1_0 = "NO";
    defparam PWM_Counter_402_add_4_3.INJECT1_1 = "NO";
    ORCALUT4 i2768_3_lut_4_lut (.A(Bit_Number[1]), .B(Bit_Number[0]), .C(n6), 
            .D(LPC_CLK33M_GMUX_c_enable_32), .Z(LPC_CLK33M_GMUX_c_enable_35)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(122[7:32])
    defparam i2768_3_lut_4_lut.init = 16'h0400;
    FD1P3IX Bit_Number__i2 (.D(n80), .SP(LPC_CLK33M_GMUX_c_enable_32), .CD(Frame_Counter_16__N_146[16]), 
            .CK(LPC_CLK33M_GMUX_c), .Q(Bit_Number[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Bit_Number__i2.GSR = "ENABLED";
    FD1P3IX Bit_Number__i3 (.D(n79), .SP(LPC_CLK33M_GMUX_c_enable_32), .CD(Frame_Counter_16__N_146[16]), 
            .CK(LPC_CLK33M_GMUX_c), .Q(Bit_Number[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Bit_Number__i3.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i1 (.D(n119), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n22)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i1.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i2 (.D(n118), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n21)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i2.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i3 (.D(n117), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n20)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i3.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i4 (.D(n116), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i4.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i5 (.D(n115), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n18_adj_9)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i5.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i6 (.D(n114), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n17)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i6.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i7 (.D(n113), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n16_adj_11)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i7.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i8 (.D(n112), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n15)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i8.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i9 (.D(n111), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n14_adj_12)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i9.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i10 (.D(n110), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n13)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i10.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i11 (.D(n109), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n12)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i11.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i12 (.D(n108), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n11)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i12.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i13 (.D(n107), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n10_adj_14)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i13.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i14 (.D(n106), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n9_adj_15)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i14.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i15 (.D(n105), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n8_adj_17)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i15.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i16 (.D(n104), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n7)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i16.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i17 (.D(n103), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n6_adj_18)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i17.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i18 (.D(n102), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n5)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i18.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i19 (.D(n101), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n4_adj_19)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i19.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i20 (.D(n100), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n3)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i20.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i21 (.D(n99), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(n2)) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i21.GSR = "ENABLED";
    FD1S3IX Prescale_Counter_401__i22 (.D(n98), .CK(LPC_CLK33M_GMUX_c), 
            .CD(Prescale_Counter[22]), .Q(Prescale_Counter[22])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401__i22.GSR = "ENABLED";
    FD1S3AX PWM_Counter_402__i1 (.D(n89), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402__i1.GSR = "ENABLED";
    FD1S3AX PWM_Counter_402__i2 (.D(n88), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402__i2.GSR = "ENABLED";
    FD1S3AX PWM_Counter_402__i3 (.D(n87), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402__i3.GSR = "ENABLED";
    FD1S3AX PWM_Counter_402__i4 (.D(n86), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402__i4.GSR = "ENABLED";
    FD1S3AX PWM_Counter_402__i5 (.D(n85), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402__i5.GSR = "ENABLED";
    FD1S3AX PWM_Counter_402__i6 (.D(n84), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402__i6.GSR = "ENABLED";
    FD1S3AX PWM_Counter_402__i7 (.D(n83), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402__i7.GSR = "ENABLED";
    FD1S3AX PWM_Counter_402__i8 (.D(n82), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402__i8.GSR = "ENABLED";
    FD1S3AX PWM_Counter_402__i9 (.D(n81), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402__i9.GSR = "ENABLED";
    FD1S3AX PWM_Counter_402__i10 (.D(n80_adj_5), .CK(LPC_CLK33M_GMUX_c), 
            .Q(PWM_Counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402__i10.GSR = "ENABLED";
    FD1S3AX PWM_Counter_402__i11 (.D(n79_adj_6), .CK(LPC_CLK33M_GMUX_c), 
            .Q(PWM_Counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402__i11.GSR = "ENABLED";
    FD1S3AX PWM_Counter_402__i12 (.D(n78), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402__i12.GSR = "ENABLED";
    FD1S3AX PWM_Counter_402__i13 (.D(n77), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402__i13.GSR = "ENABLED";
    FD1S3AX PWM_Counter_402__i14 (.D(n76), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402__i14.GSR = "ENABLED";
    FD1S3AX PWM_Counter_402__i15 (.D(n75), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402__i15.GSR = "ENABLED";
    FD1S3AX PWM_Counter_402__i16 (.D(n74), .CK(LPC_CLK33M_GMUX_c), .Q(PWM_Counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402__i16.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i1 (.D(n2413), .CK(LPC_CLK33M_GMUX_c), .CD(n2647), 
            .Q(n32_adj_16));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_117_e1_i0_i1.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i2 (.D(n2412), .CK(LPC_CLK33M_GMUX_c), .CD(n2647), 
            .Q(n30));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_117_e1_i0_i2.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i3 (.D(n2411), .CK(LPC_CLK33M_GMUX_c), .CD(n2647), 
            .Q(n28));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_117_e1_i0_i3.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i4 (.D(n2410), .CK(LPC_CLK33M_GMUX_c), .CD(n2647), 
            .Q(n26_adj_13));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_117_e1_i0_i4.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i5 (.D(n2409), .CK(LPC_CLK33M_GMUX_c), .CD(n2647), 
            .Q(n24));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_117_e1_i0_i5.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i6 (.D(n2408), .CK(LPC_CLK33M_GMUX_c), .CD(n2647), 
            .Q(n22_adj_10));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_117_e1_i0_i6.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i7 (.D(n2407), .CK(LPC_CLK33M_GMUX_c), .CD(n2647), 
            .Q(n20_adj_8));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_117_e1_i0_i7.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i8 (.D(n2406), .CK(LPC_CLK33M_GMUX_c), .CD(n2647), 
            .Q(n18));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_117_e1_i0_i8.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i9 (.D(n2405), .CK(LPC_CLK33M_GMUX_c), .CD(n2647), 
            .Q(n16));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_117_e1_i0_i9.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i10 (.D(n2404), .CK(LPC_CLK33M_GMUX_c), .CD(n2647), 
            .Q(n14));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_117_e1_i0_i10.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i11 (.D(n2403), .CK(LPC_CLK33M_GMUX_c), .CD(n2647), 
            .Q(n12_adj_21));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_117_e1_i0_i11.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i12 (.D(n2402), .CK(LPC_CLK33M_GMUX_c), .CD(n2647), 
            .Q(n10));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_117_e1_i0_i12.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i13 (.D(n2401), .CK(LPC_CLK33M_GMUX_c), .CD(n2647), 
            .Q(n8));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_117_e1_i0_i13.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i14 (.D(n2400), .CK(LPC_CLK33M_GMUX_c), .CD(n2647), 
            .Q(n6_adj_4));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_117_e1_i0_i14.GSR = "ENABLED";
    FD1S3IX add_117_e1_i0_i15 (.D(n2399), .CK(LPC_CLK33M_GMUX_c), .CD(n2647), 
            .Q(n4));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_117_e1_i0_i15.GSR = "ENABLED";
    ORCALUT4 i1_4_lut_adj_17 (.A(Last_Key_Press[0]), .B(n3954), .C(Decoded_Frame[0]), 
            .D(Decoded_Frame[1]), .Z(Last_Key_Press_1__N_182[0])) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A (((D)+!C)+!B))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(160[12] 165[6])
    defparam i1_4_lut_adj_17.init = 16'h08c0;
    CCU2B add_643_add_4_6 (.A0(PWM_Counter[3]), .B0(Duty_Cycle[3]), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[4]), .B1(Duty_Cycle[4]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3736), .COUT(n3737));
    defparam add_643_add_4_6.INIT0 = 16'h999a;
    defparam add_643_add_4_6.INIT1 = 16'h999a;
    defparam add_643_add_4_6.INJECT1_0 = "NO";
    defparam add_643_add_4_6.INJECT1_1 = "NO";
    ORCALUT4 equal_134_i6_2_lut_rep_97 (.A(Bit_Number[2]), .B(Bit_Number[3]), 
            .Z(n4809)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(122[7:32])
    defparam equal_134_i6_2_lut_rep_97.init = 16'hbbbb;
    ORCALUT4 i2754_3_lut_4_lut (.A(Bit_Number[2]), .B(Bit_Number[3]), .C(n4810), 
            .D(LPC_CLK33M_GMUX_c_enable_32), .Z(LPC_CLK33M_GMUX_c_enable_27)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(122[7:32])
    defparam i2754_3_lut_4_lut.init = 16'h4000;
    CCU2B Prescale_Counter_401_add_4_15 (.A0(n10_adj_14), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(n9_adj_15), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3720), .COUT(n3721), .S0(n107), 
          .S1(n106));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401_add_4_15.INIT0 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_15.INIT1 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_15.INJECT1_0 = "NO";
    defparam Prescale_Counter_401_add_4_15.INJECT1_1 = "NO";
    ORCALUT4 i1_3_lut_4_lut_adj_18 (.A(Brightness_Level[0]), .B(Brightness_Level[1]), 
            .C(Brightness_Level[4]), .D(n4464), .Z(n4430)) /* synthesis lut_function=(A (B+(C+(D)))+!A ((C+(D))+!B)) */ ;
    defparam i1_3_lut_4_lut_adj_18.init = 16'hfff9;
    ORCALUT4 i2667_4_lut (.A(Brightness_Trigger_dly), .B(Key_Clock), .C(n4816), 
            .D(n4782), .Z(LPC_CLK33M_GMUX_c_enable_10)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;
    defparam i2667_4_lut.init = 16'h4440;
    ORCALUT4 i1_4_lut_4_lut_adj_19 (.A(Brightness_Trigger_dly), .B(n4296), 
            .C(n4406), .D(Key_Clock), .Z(n4102)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[59:82])
    defparam i1_4_lut_4_lut_adj_19.init = 16'h4000;
    ORCALUT4 i1424_2_lut_rep_76 (.A(Brightness_Level[2]), .B(n1837), .Z(n4788)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam i1424_2_lut_rep_76.init = 16'heeee;
    ORCALUT4 i467_2_lut_rep_98 (.A(Bit_Number[1]), .B(Bit_Number[0]), .Z(n4810)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(125[20:34])
    defparam i467_2_lut_rep_98.init = 16'h8888;
    ORCALUT4 i1447_2_lut (.A(n2415), .B(GMUX_RESET_L_c), .Z(Frame_Counter_16__N_146[16])) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(138[8] 140[6])
    defparam i1447_2_lut.init = 16'h2222;
    ORCALUT4 i2792_3_lut_rep_78_3_lut (.A(Brightness_Trigger_dly), .B(n4278), 
            .C(Brightness_Level[3]), .Z(n4790)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[59:82])
    defparam i2792_3_lut_rep_78_3_lut.init = 16'hbfbf;
    ORCALUT4 i1460_2_lut_4_lut_4_lut (.A(Brightness_Trigger_dly), .B(n4793), 
            .C(n4278), .D(Brightness_Level[3]), .Z(n1976)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[59:82])
    defparam i1460_2_lut_4_lut_4_lut.init = 16'h8ccc;
    FD1P3IX Decoded_Frame__i4 (.D(GMUX_RESET_L_c), .SP(LPC_CLK33M_GMUX_c_enable_33), 
            .CD(Frame_Counter_16__N_146[16]), .CK(LPC_CLK33M_GMUX_c), .Q(Decoded_Frame[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Decoded_Frame__i4.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    FD1P3IX Decoded_Frame__i12 (.D(GMUX_RESET_L_c), .SP(LPC_CLK33M_GMUX_c_enable_34), 
            .CD(Frame_Counter_16__N_146[16]), .CK(LPC_CLK33M_GMUX_c), .Q(Decoded_Frame[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Decoded_Frame__i12.GSR = "ENABLED";
    ORCALUT4 mux_248_i10_3_lut_4_lut (.A(Brightness_Level[2]), .B(n1837), 
            .C(n4787), .D(n1513), .Z(n1659)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_248_i10_3_lut_4_lut.init = 16'h1f10;
    PFUMX i2843 (.BLUT(n4761), .ALUT(n4788), .C0(n4787), .Z(n4762));
    CCU2B add_643_add_4_4 (.A0(PWM_Counter[1]), .B0(Duty_Cycle[1]), .C0(GND_net), 
          .D0(VCC_net), .A1(PWM_Counter[2]), .B1(Duty_Cycle[2]), .C1(GND_net), 
          .D1(VCC_net), .CIN(n3735), .COUT(n3736));
    defparam add_643_add_4_4.INIT0 = 16'h999a;
    defparam add_643_add_4_4.INIT1 = 16'h999a;
    defparam add_643_add_4_4.INJECT1_0 = "NO";
    defparam add_643_add_4_4.INJECT1_1 = "NO";
    ORCALUT4 i2764_3_lut_4_lut (.A(Bit_Number[1]), .B(Bit_Number[0]), .C(LPC_CLK33M_GMUX_c_enable_32), 
            .D(n6), .Z(LPC_CLK33M_GMUX_c_enable_23)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(125[20:34])
    defparam i2764_3_lut_4_lut.init = 16'h0080;
    CCU2B Prescale_Counter_401_add_4_5 (.A0(n20), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n19), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n3715), .COUT(n3716), .S0(n117), .S1(n116));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(184[23:43])
    defparam Prescale_Counter_401_add_4_5.INIT0 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_5.INIT1 = 16'haaa0;
    defparam Prescale_Counter_401_add_4_5.INJECT1_0 = "NO";
    defparam Prescale_Counter_401_add_4_5.INJECT1_1 = "NO";
    FD1P3IX Decoded_Frame__i5 (.D(GMUX_RESET_L_c), .SP(LPC_CLK33M_GMUX_c_enable_35), 
            .CD(Frame_Counter_16__N_146[16]), .CK(LPC_CLK33M_GMUX_c), .Q(Decoded_Frame[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Decoded_Frame__i5.GSR = "ENABLED";
    ORCALUT4 mux_248_i5_3_lut_4_lut (.A(Brightness_Level[2]), .B(n1837), 
            .C(n4787), .D(n1510), .Z(n1664)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_248_i5_3_lut_4_lut.init = 16'hefe0;
    ORCALUT4 mux_264_i3_3_lut (.A(n1659), .B(n1981), .C(n1847), .Z(n1746)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_264_i3_3_lut.init = 16'hcaca;
    ORCALUT4 mux_377_i3_3_lut_4_lut (.A(Brightness_Level[2]), .B(n1841), 
            .C(n1845), .D(n4789), .Z(n1981)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_377_i3_3_lut_4_lut.init = 16'hdfd0;
    PFUMX i2836 (.BLUT(n4746), .ALUT(n4745), .C0(Brightness_Level[3]), 
          .Z(n4747));
    ORCALUT4 i1387_2_lut_rep_87 (.A(Brightness_Level[1]), .B(Brightness_Level[0]), 
            .Z(n4799)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1387_2_lut_rep_87.init = 16'h8888;
    FD1P3IX Decoded_Frame__i6 (.D(GMUX_RESET_L_c), .SP(LPC_CLK33M_GMUX_c_enable_36), 
            .CD(Frame_Counter_16__N_146[16]), .CK(LPC_CLK33M_GMUX_c), .Q(Decoded_Frame[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(116[9] 149[5])
    defparam Decoded_Frame__i6.GSR = "ENABLED";
    ORCALUT4 i1_2_lut_3_lut_adj_20 (.A(Brightness_Level[2]), .B(n1841), 
            .C(n4790), .Z(n4118)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam i1_2_lut_3_lut_adj_20.init = 16'hfdfd;
    ORCALUT4 n3234_bdd_3_lut_2850 (.A(n3234), .B(Duty_Cycle[13]), .C(n4794), 
            .Z(n4761)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n3234_bdd_3_lut_2850.init = 16'h0808;
    ORCALUT4 i2743_2_lut_rep_77 (.A(Brightness_Level[3]), .B(n4793), .Z(n4789)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i2743_2_lut_rep_77.init = 16'h1111;
    PFUMX i2832 (.BLUT(n4746), .ALUT(n4741), .C0(Brightness_Level[1]), 
          .Z(n4743));
    CCU2B PWM_Counter_402_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(PWM_Counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n3726), .S1(n90));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402_add_4_1.INIT0 = 16'h0000;
    defparam PWM_Counter_402_add_4_1.INIT1 = 16'h555f;
    defparam PWM_Counter_402_add_4_1.INJECT1_0 = "NO";
    defparam PWM_Counter_402_add_4_1.INJECT1_1 = "NO";
    CCU2B add_643_add_4_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(PWM_Counter[0]), .B1(Duty_Cycle[0]), .C1(GND_net), .D1(VCC_net), 
          .COUT(n3735));
    defparam add_643_add_4_2.INIT0 = 16'h000f;
    defparam add_643_add_4_2.INIT1 = 16'h999a;
    defparam add_643_add_4_2.INJECT1_0 = "NO";
    defparam add_643_add_4_2.INJECT1_1 = "NO";
    ORCALUT4 i1_4_lut_adj_21 (.A(Key_Clock), .B(Brightness_Trigger_dly), 
            .C(n4804), .D(n4294), .Z(n1841)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_4_lut_adj_21.init = 16'h2000;
    CCU2B add_656_17 (.A0(n4), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n3757), 
          .S0(n2399), .S1(n2415));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(139[20:37])
    defparam add_656_17.INIT0 = 16'haaaa;
    defparam add_656_17.INIT1 = 16'h0000;
    defparam add_656_17.INJECT1_0 = "NO";
    defparam add_656_17.INJECT1_1 = "NO";
    ORCALUT4 i10_4_lut (.A(Decoded_Frame[7]), .B(n20_adj_25), .C(n16_adj_23), 
            .D(Decoded_Frame[5]), .Z(n3944)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i10_4_lut.init = 16'h8000;
    ORCALUT4 i2715_3_lut (.A(n3236), .B(n1928), .C(n4787), .Z(n3212)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam i2715_3_lut.init = 16'hcaca;
    ORCALUT4 i9_4_lut (.A(Decoded_Frame[3]), .B(n18_adj_24), .C(Decoded_Frame[11]), 
            .D(Decoded_Frame[6]), .Z(n20_adj_25)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i9_4_lut.init = 16'h8000;
    ORCALUT4 mux_376_i11_3_lut_3_lut (.A(Brightness_Level[1]), .B(n1841), 
            .C(Brightness_Level[2]), .Z(n1955)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_376_i11_3_lut_3_lut.init = 16'h7474;
    ORCALUT4 i1_2_lut_rep_70_3_lut_4_lut (.A(Brightness_Level[0]), .B(n4796), 
            .C(n4258), .D(Brightness_Level[4]), .Z(n4782)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i1_2_lut_rep_70_3_lut_4_lut.init = 16'hf0f1;
    ORCALUT4 i5_2_lut (.A(Decoded_Frame[2]), .B(Decoded_Frame[12]), .Z(n16_adj_23)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut.init = 16'h8888;
    PFUMX i1505 (.BLUT(n4102), .ALUT(n1976), .C0(n1847), .Z(n3267));
    ORCALUT4 i1_3_lut_rep_82 (.A(Key_Clock), .B(Brightness_Trigger_dly), 
            .C(n4258), .Z(n4794)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_3_lut_rep_82.init = 16'h2020;
    ORCALUT4 i1_4_lut_adj_22 (.A(n4502), .B(n4210), .C(Delay_Counter[4]), 
            .D(n4208), .Z(n4222)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_22.init = 16'h0400;
    ORCALUT4 mux_374_i2_rep_20_3_lut (.A(Brightness_Level[2]), .B(Brightness_Level[1]), 
            .C(n1837), .Z(n4509)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_374_i2_rep_20_3_lut.init = 16'hcaca;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    ORCALUT4 i1402_3_lut (.A(Brightness_Level[2]), .B(Brightness_Level[3]), 
            .C(n3005), .Z(n1953)) /* synthesis lut_function=(A ((C)+!B)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam i1402_3_lut.init = 16'ha2a2;
    PFUMX i1121 (.BLUT(n4089), .ALUT(n4095), .C0(n4787), .Z(n2885));
    ORCALUT4 mux_264_i10_3_lut (.A(n1659), .B(n3273), .C(n1847), .Z(n1739)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_264_i10_3_lut.init = 16'h3a3a;
    ORCALUT4 mux_248_i4_3_lut (.A(n1510), .B(n4509), .C(n4787), .Z(n1665)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_248_i4_3_lut.init = 16'h3a3a;
    CCU2B PWM_Counter_402_add_4_17 (.A0(PWM_Counter[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(PWM_Counter[16]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n3733), .S0(n75), .S1(n74));   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(261[20:35])
    defparam PWM_Counter_402_add_4_17.INIT0 = 16'haaa0;
    defparam PWM_Counter_402_add_4_17.INIT1 = 16'haaa0;
    defparam PWM_Counter_402_add_4_17.INJECT1_0 = "NO";
    defparam PWM_Counter_402_add_4_17.INJECT1_1 = "NO";
    PFUMX i2828 (.BLUT(n4734), .ALUT(n4733), .C0(n4806), .Z(Brightness_Level_4__N_78[2]));
    ORCALUT4 mux_377_i10_4_lut (.A(n4789), .B(n4416), .C(n1845), .D(Brightness_Trigger_dly), 
            .Z(n3273)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_377_i10_4_lut.init = 16'h05c5;
    PFUMX mux_377_i7 (.BLUT(n1943), .ALUT(n4117), .C0(n1845), .Z(n1977));
    ORCALUT4 i1_4_lut_adj_23 (.A(Key_Clock), .B(Brightness_Level[2]), .C(n4801), 
            .D(Brightness_Level[4]), .Z(n4416)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_4_lut_adj_23.init = 16'h0080;
    ORCALUT4 i1_4_lut_adj_24 (.A(Key_Clock), .B(Brightness_Level[3]), .C(n4801), 
            .D(Brightness_Level[4]), .Z(n4422)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_4_lut_adj_24.init = 16'h0080;
    ORCALUT4 i1_3_lut_adj_25 (.A(n1847), .B(n1841), .C(n4278), .Z(n4134)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_25.init = 16'h8080;
    PFUMX i2826 (.BLUT(n4731), .ALUT(n4730), .C0(Brightness_Level[2]), 
          .Z(n6_adj_1));
    ORCALUT4 i2670_4_lut (.A(Delay_Counter[3]), .B(Delay_Counter[9]), .C(Delay_Counter[7]), 
            .D(Delay_Counter[6]), .Z(n4502)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2670_4_lut.init = 16'hfffe;
    ORCALUT4 i1_4_lut_adj_26 (.A(Delay_Counter[5]), .B(Delay_Counter[0]), 
            .C(Delay_Counter[1]), .D(Delay_Counter[2]), .Z(n4210)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_26.init = 16'h8000;
    ORCALUT4 i1_2_lut_adj_27 (.A(Delay_Counter[8]), .B(Delay_Counter[10]), 
            .Z(n4208)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_27.init = 16'h8888;
    ORCALUT4 i1523_rep_5_4_lut (.A(n4198), .B(Delay_Counter[8]), .C(n3254), 
            .D(Delay_Counter[5]), .Z(n4026)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i1523_rep_5_4_lut.init = 16'hc888;
    ORCALUT4 i1_2_lut_adj_28 (.A(Delay_Counter[7]), .B(Delay_Counter[6]), 
            .Z(n4198)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_28.init = 16'heeee;
    ORCALUT4 mux_248_i9_4_lut (.A(n1513), .B(Brightness_Level[2]), .C(n1847), 
            .D(n3222), .Z(n1660)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_248_i9_4_lut.init = 16'h3a0a;
    ORCALUT4 mux_377_i9_4_lut (.A(n4422), .B(n3005), .C(n1845), .D(Brightness_Trigger_dly), 
            .Z(n3222)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_377_i9_4_lut.init = 16'hc0ca;
    ORCALUT4 i1492_2_lut (.A(Delay_Counter[3]), .B(Delay_Counter[4]), .Z(n3254)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1492_2_lut.init = 16'heeee;
    L6MUX21 i2918 (.D0(n4930), .D1(n4928), .SD(n4521), .Z(n4931));
    ORCALUT4 i524_2_lut (.A(Edge_Event_dly), .B(GMUX_RESET_L_c), .Z(Delay_Counter_10__N_143)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(118[6:55])
    defparam i524_2_lut.init = 16'h6666;
    PFUMX i2916 (.BLUT(n4929), .ALUT(n4509), .C0(n4787), .Z(n4930));
    ORCALUT4 i2752_3_lut_4_lut (.A(Bit_Number[3]), .B(Bit_Number[2]), .C(n4802), 
            .D(LPC_CLK33M_GMUX_c_enable_32), .Z(LPC_CLK33M_GMUX_c_enable_34)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2752_3_lut_4_lut.init = 16'h0800;
    ORCALUT4 i1_4_lut_adj_29 (.A(Delay_Counter_10__N_143), .B(n4026), .C(Delay_Counter[10]), 
            .D(Delay_Counter[9]), .Z(LPC_CLK33M_GMUX_c_enable_21)) /* synthesis lut_function=(A+!(B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_29.init = 16'hafbf;
    ORCALUT4 i1468_3_lut (.A(Duty_Cycle[11]), .B(n1513), .C(n6_adj_7), 
            .Z(n3230)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam i1468_3_lut.init = 16'hcaca;
    ORCALUT4 i1_4_lut_adj_30 (.A(Key_Clock), .B(Brightness_Trigger_dly), 
            .C(n4296), .D(n4294), .Z(n1837)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_4_lut_adj_30.init = 16'h2000;
    PFUMX i1070 (.BLUT(n1970), .ALUT(n2869), .C0(n4532), .Z(n2834));
    ORCALUT4 mux_375_i6_3_lut_3_lut (.A(Brightness_Level[1]), .B(n4793), 
            .C(Brightness_Level[3]), .Z(n1943)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_375_i6_3_lut_3_lut.init = 16'h7474;
    ORCALUT4 mux_377_i11_3_lut (.A(n3256), .B(n1841), .C(n1845), .Z(n1973)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_377_i11_3_lut.init = 16'hc5c5;
    ORCALUT4 i344_1_lut (.A(cout), .Z(LCD_BKLT_PWM_c_0)) /* synthesis lut_function=(!(A)) */ ;
    defparam i344_1_lut.init = 16'h5555;
    ORCALUT4 i20_4_lut_else_4_lut (.A(Brightness_Level[4]), .B(Brightness_Level[2]), 
            .C(Brightness_Level[0]), .D(Brightness_Level[1]), .Z(n4811)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i20_4_lut_else_4_lut.init = 16'h0002;
    ORCALUT4 i1_2_lut_3_lut_4_lut (.A(Brightness_Level[1]), .B(Brightness_Level[0]), 
            .C(Brightness_Level[3]), .D(Brightness_Level[2]), .Z(n4386)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h7080;
    L6MUX21 i1115 (.D0(n2885), .D1(n1977), .SD(n1847), .Z(n2879));
    ORCALUT4 i1504_3_lut (.A(Duty_Cycle[7]), .B(n1510), .C(n6_adj_7), 
            .Z(n3266)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam i1504_3_lut.init = 16'hcaca;
    PFUMX i11 (.BLUT(n4_adj_2), .ALUT(n6_adj_3), .C0(n4532), .Z(n2853));
    ORCALUT4 i1_2_lut_rep_80_3_lut_4_lut (.A(Brightness_Level[1]), .B(Brightness_Level[0]), 
            .C(Brightness_Level[3]), .D(Brightness_Level[2]), .Z(n4792)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (C+!(D)))) */ ;
    defparam i1_2_lut_rep_80_3_lut_4_lut.init = 16'h0708;
    ORCALUT4 i1_2_lut_adj_31 (.A(Brightness_Level[2]), .B(Brightness_Level[3]), 
            .Z(n4296)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_2_lut_adj_31.init = 16'h2222;
    ORCALUT4 i1445_2_lut_rep_88 (.A(Brightness_Level[3]), .B(Brightness_Level[2]), 
            .Z(n4800)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1445_2_lut_rep_88.init = 16'heeee;
    ORCALUT4 i1_2_lut_3_lut_adj_32 (.A(Brightness_Level[3]), .B(Brightness_Level[2]), 
            .C(Brightness_Level[1]), .Z(n4312)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_32.init = 16'h1010;
    ORCALUT4 i1_3_lut_4_lut_adj_33 (.A(n4799), .B(Brightness_Level[2]), 
            .C(Brightness_Level[4]), .D(Key_Clock), .Z(n4278)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A ((C+!(D))+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_33.init = 16'h0600;
    ORCALUT4 i1_4_lut_adj_34 (.A(Key_Clock), .B(Brightness_Trigger_dly), 
            .C(n4386), .D(Brightness_Level[4]), .Z(n1845)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_4_lut_adj_34.init = 16'h0020;
    ORCALUT4 i1_2_lut_rep_84_3_lut (.A(Brightness_Level[3]), .B(Brightness_Level[2]), 
            .C(Brightness_Level[1]), .Z(n4796)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_84_3_lut.init = 16'hfefe;
    ORCALUT4 i2_2_lut_rep_79_3_lut_4_lut (.A(Brightness_Level[3]), .B(Brightness_Level[2]), 
            .C(Brightness_Level[0]), .D(Brightness_Level[1]), .Z(n4791)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_2_lut_rep_79_3_lut_4_lut.init = 16'hfffe;
    ORCALUT4 i1_4_lut_adj_35 (.A(Key_Clock), .B(Brightness_Trigger_dly), 
            .C(n4796), .D(n4294), .Z(n1513)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_4_lut_adj_35.init = 16'h0200;
    ORCALUT4 mux_248_i13_4_lut (.A(n1510), .B(n1841), .C(n1847), .D(n4278), 
            .Z(n1656)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_248_i13_4_lut.init = 16'hca0a;
    ORCALUT4 i1_3_lut_4_lut_adj_36 (.A(Brightness_Level[3]), .B(Brightness_Level[2]), 
            .C(Brightness_Level[4]), .D(n4801), .Z(n4258)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_36.init = 16'h0100;
    ORCALUT4 i1470_3_lut (.A(Duty_Cycle[0]), .B(n1510), .C(n6_adj_7), 
            .Z(n3232)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam i1470_3_lut.init = 16'hcaca;
    PFUMX i2914 (.BLUT(n4927), .ALUT(n4926), .C0(n4783), .Z(n4928));
    ORCALUT4 i20_4_lut_then_4_lut (.A(Brightness_Level[4]), .B(Brightness_Level[2]), 
            .C(Brightness_Level[0]), .D(Brightness_Level[1]), .Z(n4812)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i20_4_lut_then_4_lut.init = 16'h4000;
    ORCALUT4 i1397_3_lut (.A(n1983), .B(Brightness_Level[4]), .C(n4783), 
            .Z(n3158)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(226[9] 252[5])
    defparam i1397_3_lut.init = 16'hcaca;
    ORCALUT4 i1242_3_lut (.A(n4793), .B(n3005), .C(n1845), .Z(n3006)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i1242_3_lut.init = 16'hcaca;
    ORCALUT4 i2750_3_lut_4_lut (.A(Bit_Number[3]), .B(Bit_Number[2]), .C(LPC_CLK33M_GMUX_c_enable_32), 
            .D(n4808), .Z(LPC_CLK33M_GMUX_c_enable_1)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2750_3_lut_4_lut.init = 16'h0080;
    ORCALUT4 i1_4_lut_adj_37 (.A(Key_Clock), .B(Brightness_Trigger_dly), 
            .C(n14_adj_20), .D(Brightness_Level[4]), .Z(n1847)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_4_lut_adj_37.init = 16'h0020;
    ORCALUT4 i2172_4_lut (.A(Brightness_Level[0]), .B(Brightness_Level[3]), 
            .C(Brightness_Level[2]), .D(Brightness_Level[1]), .Z(n14_adj_20)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(B))) */ ;
    defparam i2172_4_lut.init = 16'h6ccc;
    ORCALUT4 mux_377_i6_3_lut (.A(n3256), .B(n1953), .C(n1845), .Z(n1978)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(230[3] 251[6])
    defparam mux_377_i6_3_lut.init = 16'hcaca;
    ORCALUT4 i2779_3_lut_4_lut (.A(Bit_Number[3]), .B(Bit_Number[2]), .C(Bit_Number[1]), 
            .D(Bit_Number[0]), .Z(n3289)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (D))) */ ;
    defparam i2779_3_lut_4_lut.init = 16'h007f;
    PFUMX i2861 (.BLUT(n4814), .ALUT(n4815), .C0(Brightness_Level[3]), 
          .Z(n4816));
    ORCALUT4 i2795_3_lut_4_lut (.A(Bit_Number[3]), .B(Bit_Number[2]), .C(Bit_Number[1]), 
            .D(Bit_Number[0]), .Z(n6_adj_22)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;
    defparam i2795_3_lut_4_lut.init = 16'h0770;
    PFUMX i1072 (.BLUT(n2877), .ALUT(n2861), .C0(n4521), .Z(n2836));
    PFUMX i2859 (.BLUT(n4811), .ALUT(n4812), .C0(Brightness_Level[3]), 
          .Z(n9));
    ORCALUT4 i1_4_lut_adj_38 (.A(Key_Clock), .B(Brightness_Trigger_dly), 
            .C(n4358), .D(n4244), .Z(n3256)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/sjenja/source/repos/dgmux/dgmux_bkeys_main.v(218[36:83])
    defparam i1_4_lut_adj_38.init = 16'h2000;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

