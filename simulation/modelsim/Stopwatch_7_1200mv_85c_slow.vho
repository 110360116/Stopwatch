-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "06/05/2024 10:35:03"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Stopwatch IS
    PORT (
	iCLK : IN std_logic;
	reset : IN std_logic;
	mode : IN std_logic;
	Btn_start_stop : IN std_logic;
	Btn_split : IN std_logic;
	segA : BUFFER std_logic_vector(6 DOWNTO 0);
	segB : BUFFER std_logic_vector(7 DOWNTO 0);
	segC : BUFFER std_logic_vector(6 DOWNTO 0);
	segD : BUFFER std_logic_vector(6 DOWNTO 0);
	segE : BUFFER std_logic_vector(6 DOWNTO 0);
	LCD_DATA : BUFFER std_logic_vector(7 DOWNTO 0);
	LCD_RW : BUFFER std_logic;
	LCD_EN : BUFFER std_logic;
	LCD_RS : BUFFER std_logic
	);
END Stopwatch;

-- Design Ports Information
-- segA[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segA[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segA[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segA[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segA[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segA[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segA[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segB[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segB[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segB[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segB[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segB[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segB[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segB[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segB[7]	=>  Location: PIN_R27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segC[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segC[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segC[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segC[3]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segC[4]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segC[5]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segC[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segD[0]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segD[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segD[2]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segD[3]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segD[4]	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segD[5]	=>  Location: PIN_AF19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segD[6]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segE[0]	=>  Location: PIN_AD18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segE[1]	=>  Location: PIN_AC18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segE[2]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segE[3]	=>  Location: PIN_AH19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segE[4]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segE[5]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segE[6]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_DATA[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RW	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_EN	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LCD_RS	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- iCLK	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Btn_split	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Btn_start_stop	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Stopwatch IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_iCLK : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_mode : std_logic;
SIGNAL ww_Btn_start_stop : std_logic;
SIGNAL ww_Btn_split : std_logic;
SIGNAL ww_segA : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_segC : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segD : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segE : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LCD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_EN : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL \iCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \segA[0]~output_o\ : std_logic;
SIGNAL \segA[1]~output_o\ : std_logic;
SIGNAL \segA[2]~output_o\ : std_logic;
SIGNAL \segA[3]~output_o\ : std_logic;
SIGNAL \segA[4]~output_o\ : std_logic;
SIGNAL \segA[5]~output_o\ : std_logic;
SIGNAL \segA[6]~output_o\ : std_logic;
SIGNAL \segB[0]~output_o\ : std_logic;
SIGNAL \segB[1]~output_o\ : std_logic;
SIGNAL \segB[2]~output_o\ : std_logic;
SIGNAL \segB[3]~output_o\ : std_logic;
SIGNAL \segB[4]~output_o\ : std_logic;
SIGNAL \segB[5]~output_o\ : std_logic;
SIGNAL \segB[6]~output_o\ : std_logic;
SIGNAL \segB[7]~output_o\ : std_logic;
SIGNAL \segC[0]~output_o\ : std_logic;
SIGNAL \segC[1]~output_o\ : std_logic;
SIGNAL \segC[2]~output_o\ : std_logic;
SIGNAL \segC[3]~output_o\ : std_logic;
SIGNAL \segC[4]~output_o\ : std_logic;
SIGNAL \segC[5]~output_o\ : std_logic;
SIGNAL \segC[6]~output_o\ : std_logic;
SIGNAL \segD[0]~output_o\ : std_logic;
SIGNAL \segD[1]~output_o\ : std_logic;
SIGNAL \segD[2]~output_o\ : std_logic;
SIGNAL \segD[3]~output_o\ : std_logic;
SIGNAL \segD[4]~output_o\ : std_logic;
SIGNAL \segD[5]~output_o\ : std_logic;
SIGNAL \segD[6]~output_o\ : std_logic;
SIGNAL \segE[0]~output_o\ : std_logic;
SIGNAL \segE[1]~output_o\ : std_logic;
SIGNAL \segE[2]~output_o\ : std_logic;
SIGNAL \segE[3]~output_o\ : std_logic;
SIGNAL \segE[4]~output_o\ : std_logic;
SIGNAL \segE[5]~output_o\ : std_logic;
SIGNAL \segE[6]~output_o\ : std_logic;
SIGNAL \LCD_DATA[0]~output_o\ : std_logic;
SIGNAL \LCD_DATA[1]~output_o\ : std_logic;
SIGNAL \LCD_DATA[2]~output_o\ : std_logic;
SIGNAL \LCD_DATA[3]~output_o\ : std_logic;
SIGNAL \LCD_DATA[4]~output_o\ : std_logic;
SIGNAL \LCD_DATA[5]~output_o\ : std_logic;
SIGNAL \LCD_DATA[6]~output_o\ : std_logic;
SIGNAL \LCD_DATA[7]~output_o\ : std_logic;
SIGNAL \LCD_RW~output_o\ : std_logic;
SIGNAL \LCD_EN~output_o\ : std_logic;
SIGNAL \LCD_RS~output_o\ : std_logic;
SIGNAL \iCLK~input_o\ : std_logic;
SIGNAL \iCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \debounce_counter_start_stop[0]~20_combout\ : std_logic;
SIGNAL \Btn_start_stop~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \debounce_counter_start_stop[3]~60_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[3]~61_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[0]~21\ : std_logic;
SIGNAL \debounce_counter_start_stop[1]~22_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[1]~23\ : std_logic;
SIGNAL \debounce_counter_start_stop[2]~24_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[2]~25\ : std_logic;
SIGNAL \debounce_counter_start_stop[3]~26_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[3]~27\ : std_logic;
SIGNAL \debounce_counter_start_stop[4]~28_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[4]~29\ : std_logic;
SIGNAL \debounce_counter_start_stop[5]~30_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[5]~31\ : std_logic;
SIGNAL \debounce_counter_start_stop[6]~32_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[6]~33\ : std_logic;
SIGNAL \debounce_counter_start_stop[7]~34_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[7]~35\ : std_logic;
SIGNAL \debounce_counter_start_stop[8]~36_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[8]~37\ : std_logic;
SIGNAL \debounce_counter_start_stop[9]~38_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[9]~39\ : std_logic;
SIGNAL \debounce_counter_start_stop[10]~40_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[10]~41\ : std_logic;
SIGNAL \debounce_counter_start_stop[11]~42_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[11]~43\ : std_logic;
SIGNAL \debounce_counter_start_stop[12]~44_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[12]~45\ : std_logic;
SIGNAL \debounce_counter_start_stop[13]~46_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[13]~47\ : std_logic;
SIGNAL \debounce_counter_start_stop[14]~48_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[14]~49\ : std_logic;
SIGNAL \debounce_counter_start_stop[15]~50_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[15]~51\ : std_logic;
SIGNAL \debounce_counter_start_stop[16]~52_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[16]~53\ : std_logic;
SIGNAL \debounce_counter_start_stop[17]~54_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[17]~55\ : std_logic;
SIGNAL \debounce_counter_start_stop[18]~56_combout\ : std_logic;
SIGNAL \debounce_counter_start_stop[18]~57\ : std_logic;
SIGNAL \debounce_counter_start_stop[19]~58_combout\ : std_logic;
SIGNAL \Btn_start_stop_stable~0_combout\ : std_logic;
SIGNAL \Btn_start_stop_stable~1_combout\ : std_logic;
SIGNAL \Btn_start_stop_stable~q\ : std_logic;
SIGNAL \preBtn_start_stop_stable~0_combout\ : std_logic;
SIGNAL \preBtn_start_stop_stable~q\ : std_logic;
SIGNAL \count_enable~0_combout\ : std_logic;
SIGNAL \count_enable~q\ : std_logic;
SIGNAL \BCD[1]~6_combout\ : std_logic;
SIGNAL \BCD[2]~9_combout\ : std_logic;
SIGNAL \BCD[2]~10_combout\ : std_logic;
SIGNAL \BCD[2]~11_combout\ : std_logic;
SIGNAL \Add11~1_combout\ : std_logic;
SIGNAL \BCD[16]~1_combout\ : std_logic;
SIGNAL \BCD~17_combout\ : std_logic;
SIGNAL \BCD[8]~30_combout\ : std_logic;
SIGNAL \BCD~16_combout\ : std_logic;
SIGNAL \BCD~18_combout\ : std_logic;
SIGNAL \BCD[6]~23_combout\ : std_logic;
SIGNAL \Add10~1_combout\ : std_logic;
SIGNAL \BCD[6]~24_combout\ : std_logic;
SIGNAL \BCD[6]~25_combout\ : std_logic;
SIGNAL \BCD[7]~27_combout\ : std_logic;
SIGNAL \BCD[7]~28_combout\ : std_logic;
SIGNAL \BCD[7]~26_combout\ : std_logic;
SIGNAL \BCD[7]~29_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \BCD[8]~31_combout\ : std_logic;
SIGNAL \BCD[8]~35_combout\ : std_logic;
SIGNAL \BCD[9]~36_combout\ : std_logic;
SIGNAL \BCD[10]~43_combout\ : std_logic;
SIGNAL \BCD[10]~42_combout\ : std_logic;
SIGNAL \BCD[9]~41_combout\ : std_logic;
SIGNAL \BCD[10]~44_combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \BCD[9]~37_combout\ : std_logic;
SIGNAL \BCD[9]~40_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \BCD[12]~49_combout\ : std_logic;
SIGNAL \BCD[12]~50_combout\ : std_logic;
SIGNAL \BCD[12]~48_combout\ : std_logic;
SIGNAL \BCD[12]~51_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \BCD[13]~52_combout\ : std_logic;
SIGNAL \BCD[13]~54_combout\ : std_logic;
SIGNAL \BCD[9]~38_combout\ : std_logic;
SIGNAL \BCD[13]~53_combout\ : std_logic;
SIGNAL \BCD[13]~55_combout\ : std_logic;
SIGNAL \BCD[13]~56_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \Add8~1_combout\ : std_logic;
SIGNAL \BCD[14]~58_combout\ : std_logic;
SIGNAL \BCD[14]~57_combout\ : std_logic;
SIGNAL \BCD[14]~59_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \BCD[15]~61_combout\ : std_logic;
SIGNAL \BCD[15]~62_combout\ : std_logic;
SIGNAL \BCD[15]~60_combout\ : std_logic;
SIGNAL \BCD[15]~63_combout\ : std_logic;
SIGNAL \BCD[19]~73_combout\ : std_logic;
SIGNAL \BCD[17]~65_combout\ : std_logic;
SIGNAL \BCD[17]~66_combout\ : std_logic;
SIGNAL \BCD[17]~67_combout\ : std_logic;
SIGNAL \BCD[19]~74_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \BCD[17]~64_combout\ : std_logic;
SIGNAL \BCD[17]~68_combout\ : std_logic;
SIGNAL \Add7~1_combout\ : std_logic;
SIGNAL \BCD[18]~69_combout\ : std_logic;
SIGNAL \BCD[18]~70_combout\ : std_logic;
SIGNAL \BCD[18]~71_combout\ : std_logic;
SIGNAL \BCD[18]~72_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \BCD[16]~32_combout\ : std_logic;
SIGNAL \BCD[16]~33_combout\ : std_logic;
SIGNAL \BCD[16]~34_combout\ : std_logic;
SIGNAL \BCD[16]~77_combout\ : std_logic;
SIGNAL \BCD[16]~78_combout\ : std_logic;
SIGNAL \BCD[16]~75_combout\ : std_logic;
SIGNAL \BCD[16]~76_combout\ : std_logic;
SIGNAL \BCD[16]~79_combout\ : std_logic;
SIGNAL \BCD[16]~3_combout\ : std_logic;
SIGNAL \BCD[16]~_emulated_q\ : std_logic;
SIGNAL \BCD[16]~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \BCD[3]~12_combout\ : std_logic;
SIGNAL \BCD[3]~13_combout\ : std_logic;
SIGNAL \BCD[3]~14_combout\ : std_logic;
SIGNAL \BCD[3]~15_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \BCD[1]~7_combout\ : std_logic;
SIGNAL \BCD[1]~8_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \BCD[5]~20_combout\ : std_logic;
SIGNAL \BCD[5]~21_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \BCD[5]~19_combout\ : std_logic;
SIGNAL \BCD[5]~22_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \BCD[9]~39_combout\ : std_logic;
SIGNAL \BCD[11]~45_combout\ : std_logic;
SIGNAL \BCD[11]~46_combout\ : std_logic;
SIGNAL \BCD[11]~47_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal6~1_combout\ : std_logic;
SIGNAL \Equal6~2_combout\ : std_logic;
SIGNAL \Equal6~3_combout\ : std_logic;
SIGNAL \BCD~5_combout\ : std_logic;
SIGNAL \WideOr12~0_combout\ : std_logic;
SIGNAL \WideOr11~0_combout\ : std_logic;
SIGNAL \WideOr10~0_combout\ : std_logic;
SIGNAL \WideOr9~0_combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \WideOr20~0_combout\ : std_logic;
SIGNAL \WideOr19~0_combout\ : std_logic;
SIGNAL \WideOr18~0_combout\ : std_logic;
SIGNAL \WideOr17~0_combout\ : std_logic;
SIGNAL \WideOr16~0_combout\ : std_logic;
SIGNAL \WideOr15~0_combout\ : std_logic;
SIGNAL \WideOr14~0_combout\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
SIGNAL \WideOr27~0_combout\ : std_logic;
SIGNAL \WideOr26~0_combout\ : std_logic;
SIGNAL \WideOr25~0_combout\ : std_logic;
SIGNAL \WideOr24~0_combout\ : std_logic;
SIGNAL \WideOr23~0_combout\ : std_logic;
SIGNAL \WideOr22~0_combout\ : std_logic;
SIGNAL \WideOr21~0_combout\ : std_logic;
SIGNAL \WideOr34~0_combout\ : std_logic;
SIGNAL \WideOr33~0_combout\ : std_logic;
SIGNAL \WideOr32~0_combout\ : std_logic;
SIGNAL \WideOr31~0_combout\ : std_logic;
SIGNAL \WideOr30~0_combout\ : std_logic;
SIGNAL \WideOr29~0_combout\ : std_logic;
SIGNAL \WideOr28~0_combout\ : std_logic;
SIGNAL \WideOr41~0_combout\ : std_logic;
SIGNAL \WideOr40~0_combout\ : std_logic;
SIGNAL \WideOr39~0_combout\ : std_logic;
SIGNAL \WideOr38~0_combout\ : std_logic;
SIGNAL \WideOr37~0_combout\ : std_logic;
SIGNAL \WideOr36~0_combout\ : std_logic;
SIGNAL \WideOr35~0_combout\ : std_logic;
SIGNAL \Btn_split~input_o\ : std_logic;
SIGNAL \debounce_counter_split[0]~20_combout\ : std_logic;
SIGNAL \debounce_counter_split[9]~60_combout\ : std_logic;
SIGNAL \debounce_counter_split[13]~47\ : std_logic;
SIGNAL \debounce_counter_split[14]~48_combout\ : std_logic;
SIGNAL \debounce_counter_split[14]~49\ : std_logic;
SIGNAL \debounce_counter_split[15]~50_combout\ : std_logic;
SIGNAL \debounce_counter_split[15]~51\ : std_logic;
SIGNAL \debounce_counter_split[16]~52_combout\ : std_logic;
SIGNAL \debounce_counter_split[16]~53\ : std_logic;
SIGNAL \debounce_counter_split[17]~54_combout\ : std_logic;
SIGNAL \debounce_counter_split[17]~55\ : std_logic;
SIGNAL \debounce_counter_split[18]~56_combout\ : std_logic;
SIGNAL \debounce_counter_split[18]~57\ : std_logic;
SIGNAL \debounce_counter_split[19]~58_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \debounce_counter_split[9]~61_combout\ : std_logic;
SIGNAL \debounce_counter_split[0]~21\ : std_logic;
SIGNAL \debounce_counter_split[1]~22_combout\ : std_logic;
SIGNAL \debounce_counter_split[1]~23\ : std_logic;
SIGNAL \debounce_counter_split[2]~24_combout\ : std_logic;
SIGNAL \debounce_counter_split[2]~25\ : std_logic;
SIGNAL \debounce_counter_split[3]~26_combout\ : std_logic;
SIGNAL \debounce_counter_split[3]~27\ : std_logic;
SIGNAL \debounce_counter_split[4]~28_combout\ : std_logic;
SIGNAL \debounce_counter_split[4]~29\ : std_logic;
SIGNAL \debounce_counter_split[5]~30_combout\ : std_logic;
SIGNAL \debounce_counter_split[5]~31\ : std_logic;
SIGNAL \debounce_counter_split[6]~32_combout\ : std_logic;
SIGNAL \debounce_counter_split[6]~33\ : std_logic;
SIGNAL \debounce_counter_split[7]~34_combout\ : std_logic;
SIGNAL \debounce_counter_split[7]~35\ : std_logic;
SIGNAL \debounce_counter_split[8]~36_combout\ : std_logic;
SIGNAL \debounce_counter_split[8]~37\ : std_logic;
SIGNAL \debounce_counter_split[9]~38_combout\ : std_logic;
SIGNAL \debounce_counter_split[9]~39\ : std_logic;
SIGNAL \debounce_counter_split[10]~40_combout\ : std_logic;
SIGNAL \debounce_counter_split[10]~41\ : std_logic;
SIGNAL \debounce_counter_split[11]~42_combout\ : std_logic;
SIGNAL \debounce_counter_split[11]~43\ : std_logic;
SIGNAL \debounce_counter_split[12]~44_combout\ : std_logic;
SIGNAL \debounce_counter_split[12]~45\ : std_logic;
SIGNAL \debounce_counter_split[13]~46_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \Btn_split_stable~0_combout\ : std_logic;
SIGNAL \Btn_split_stable~1_combout\ : std_logic;
SIGNAL \Btn_split_stable~q\ : std_logic;
SIGNAL \LUT_INDEX[0]~6_combout\ : std_logic;
SIGNAL \Cont[0]~20_combout\ : std_logic;
SIGNAL \Cont[18]~54_combout\ : std_logic;
SIGNAL \Cont[0]~21\ : std_logic;
SIGNAL \Cont[1]~22_combout\ : std_logic;
SIGNAL \Cont[1]~23\ : std_logic;
SIGNAL \Cont[2]~24_combout\ : std_logic;
SIGNAL \Cont[2]~25\ : std_logic;
SIGNAL \Cont[3]~26_combout\ : std_logic;
SIGNAL \Cont[3]~27\ : std_logic;
SIGNAL \Cont[4]~28_combout\ : std_logic;
SIGNAL \Cont[4]~29\ : std_logic;
SIGNAL \Cont[5]~30_combout\ : std_logic;
SIGNAL \Cont[5]~31\ : std_logic;
SIGNAL \Cont[6]~32_combout\ : std_logic;
SIGNAL \Cont[6]~33\ : std_logic;
SIGNAL \Cont[7]~34_combout\ : std_logic;
SIGNAL \Cont[7]~35\ : std_logic;
SIGNAL \Cont[8]~36_combout\ : std_logic;
SIGNAL \Cont[8]~37\ : std_logic;
SIGNAL \Cont[9]~38_combout\ : std_logic;
SIGNAL \Cont[9]~39\ : std_logic;
SIGNAL \Cont[10]~40_combout\ : std_logic;
SIGNAL \Cont[10]~41\ : std_logic;
SIGNAL \Cont[11]~42_combout\ : std_logic;
SIGNAL \Equal12~4_combout\ : std_logic;
SIGNAL \Cont[11]~43\ : std_logic;
SIGNAL \Cont[12]~44_combout\ : std_logic;
SIGNAL \Cont[12]~45\ : std_logic;
SIGNAL \Cont[13]~46_combout\ : std_logic;
SIGNAL \Cont[13]~47\ : std_logic;
SIGNAL \Cont[14]~48_combout\ : std_logic;
SIGNAL \Cont[14]~49\ : std_logic;
SIGNAL \Cont[15]~50_combout\ : std_logic;
SIGNAL \Cont[15]~51\ : std_logic;
SIGNAL \Cont[16]~52_combout\ : std_logic;
SIGNAL \Cont[16]~53\ : std_logic;
SIGNAL \Cont[17]~55_combout\ : std_logic;
SIGNAL \Cont[17]~56\ : std_logic;
SIGNAL \Cont[18]~57_combout\ : std_logic;
SIGNAL \Cont[18]~58\ : std_logic;
SIGNAL \Cont[19]~59_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \Equal12~2_combout\ : std_logic;
SIGNAL \Equal12~3_combout\ : std_logic;
SIGNAL \Equal12~5_combout\ : std_logic;
SIGNAL \Equal12~6_combout\ : std_logic;
SIGNAL \oRESET~0_combout\ : std_logic;
SIGNAL \oRESET~q\ : std_logic;
SIGNAL \Trigger~0_combout\ : std_logic;
SIGNAL \mDLY[0]~20_combout\ : std_logic;
SIGNAL \mDLY[13]~57_combout\ : std_logic;
SIGNAL \LUT_INDEX[4]~16\ : std_logic;
SIGNAL \LUT_INDEX[5]~17_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \mDLY[13]~24_combout\ : std_logic;
SIGNAL \mDLY[0]~21\ : std_logic;
SIGNAL \mDLY[1]~22_combout\ : std_logic;
SIGNAL \mDLY[1]~23\ : std_logic;
SIGNAL \mDLY[2]~25_combout\ : std_logic;
SIGNAL \mDLY[2]~26\ : std_logic;
SIGNAL \mDLY[3]~27_combout\ : std_logic;
SIGNAL \mDLY[3]~28\ : std_logic;
SIGNAL \mDLY[4]~29_combout\ : std_logic;
SIGNAL \mDLY[4]~30\ : std_logic;
SIGNAL \mDLY[5]~31_combout\ : std_logic;
SIGNAL \mDLY[5]~32\ : std_logic;
SIGNAL \mDLY[6]~33_combout\ : std_logic;
SIGNAL \mDLY[6]~34\ : std_logic;
SIGNAL \mDLY[7]~35_combout\ : std_logic;
SIGNAL \mDLY[7]~36\ : std_logic;
SIGNAL \mDLY[8]~37_combout\ : std_logic;
SIGNAL \mDLY[8]~38\ : std_logic;
SIGNAL \mDLY[9]~39_combout\ : std_logic;
SIGNAL \mDLY[9]~40\ : std_logic;
SIGNAL \mDLY[10]~41_combout\ : std_logic;
SIGNAL \mDLY[10]~42\ : std_logic;
SIGNAL \mDLY[11]~43_combout\ : std_logic;
SIGNAL \mDLY[11]~44\ : std_logic;
SIGNAL \mDLY[12]~45_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \mDLY[12]~46\ : std_logic;
SIGNAL \mDLY[13]~47_combout\ : std_logic;
SIGNAL \mDLY[13]~48\ : std_logic;
SIGNAL \mDLY[14]~49_combout\ : std_logic;
SIGNAL \mDLY[14]~50\ : std_logic;
SIGNAL \mDLY[15]~51_combout\ : std_logic;
SIGNAL \mDLY[15]~52\ : std_logic;
SIGNAL \mDLY[16]~53_combout\ : std_logic;
SIGNAL \mDLY[16]~54\ : std_logic;
SIGNAL \mDLY[17]~55_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \mLCD_ST~22_combout\ : std_logic;
SIGNAL \mLCD_Start~0_combout\ : std_logic;
SIGNAL \mLCD_Start~1_combout\ : std_logic;
SIGNAL \mLCD_Start~q\ : std_logic;
SIGNAL \u0|ST.00~0_combout\ : std_logic;
SIGNAL \u0|ST.00~q\ : std_logic;
SIGNAL \u0|ST.01~0_combout\ : std_logic;
SIGNAL \u0|ST.01~q\ : std_logic;
SIGNAL \u0|Selector2~0_combout\ : std_logic;
SIGNAL \u0|ST.10~q\ : std_logic;
SIGNAL \u0|Selector5~0_combout\ : std_logic;
SIGNAL \u0|Selector2~1_combout\ : std_logic;
SIGNAL \u0|Add0~0_combout\ : std_logic;
SIGNAL \u0|Selector8~0_combout\ : std_logic;
SIGNAL \u0|Add0~1\ : std_logic;
SIGNAL \u0|Add0~2_combout\ : std_logic;
SIGNAL \u0|Selector7~0_combout\ : std_logic;
SIGNAL \u0|Add0~3\ : std_logic;
SIGNAL \u0|Add0~4_combout\ : std_logic;
SIGNAL \u0|Selector6~0_combout\ : std_logic;
SIGNAL \u0|Add0~5\ : std_logic;
SIGNAL \u0|Add0~6_combout\ : std_logic;
SIGNAL \u0|Selector5~1_combout\ : std_logic;
SIGNAL \u0|Add0~7\ : std_logic;
SIGNAL \u0|Add0~8_combout\ : std_logic;
SIGNAL \u0|Selector4~0_combout\ : std_logic;
SIGNAL \u0|Selector4~1_combout\ : std_logic;
SIGNAL \u0|ST~14_combout\ : std_logic;
SIGNAL \u0|ST.11~q\ : std_logic;
SIGNAL \u0|preStart~q\ : std_logic;
SIGNAL \u0|mStart~0_combout\ : std_logic;
SIGNAL \u0|mStart~q\ : std_logic;
SIGNAL \u0|oDone~0_combout\ : std_logic;
SIGNAL \u0|oDone~1_combout\ : std_logic;
SIGNAL \u0|oDone~q\ : std_logic;
SIGNAL \mLCD_ST~18_combout\ : std_logic;
SIGNAL \mLCD_ST~19_combout\ : std_logic;
SIGNAL \mLCD_ST~23_combout\ : std_logic;
SIGNAL \mLCD_ST.000001~q\ : std_logic;
SIGNAL \mLCD_ST~24_combout\ : std_logic;
SIGNAL \mLCD_ST~25_combout\ : std_logic;
SIGNAL \mLCD_ST~26_combout\ : std_logic;
SIGNAL \mLCD_ST.000010~q\ : std_logic;
SIGNAL \mLCD_ST~21_combout\ : std_logic;
SIGNAL \mLCD_ST.000011~q\ : std_logic;
SIGNAL \LUT_INDEX[0]~12_combout\ : std_logic;
SIGNAL \LUT_INDEX[0]~7\ : std_logic;
SIGNAL \LUT_INDEX[1]~8_combout\ : std_logic;
SIGNAL \LUT_INDEX[1]~9\ : std_logic;
SIGNAL \LUT_INDEX[2]~10_combout\ : std_logic;
SIGNAL \LUT_INDEX[2]~11\ : std_logic;
SIGNAL \LUT_INDEX[3]~13_combout\ : std_logic;
SIGNAL \LUT_INDEX[3]~14\ : std_logic;
SIGNAL \LUT_INDEX[4]~15_combout\ : std_logic;
SIGNAL \time_records~0_combout\ : std_logic;
SIGNAL \preBtn_split_stable~0_combout\ : std_logic;
SIGNAL \preBtn_split_stable~q\ : std_logic;
SIGNAL \record_index[0]~1_combout\ : std_logic;
SIGNAL \time_records[1][5]~1_combout\ : std_logic;
SIGNAL \Add14~0_combout\ : std_logic;
SIGNAL \record_index[1]~0_combout\ : std_logic;
SIGNAL \time_records[3][9]~9_combout\ : std_logic;
SIGNAL \time_records[3][12]~q\ : std_logic;
SIGNAL \time_records~7_combout\ : std_logic;
SIGNAL \time_records[3][8]~feeder_combout\ : std_logic;
SIGNAL \time_records[3][8]~q\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \time_records~8_combout\ : std_logic;
SIGNAL \time_records[3][0]~q\ : std_logic;
SIGNAL \time_records~6_combout\ : std_logic;
SIGNAL \time_records[3][4]~feeder_combout\ : std_logic;
SIGNAL \time_records[3][4]~q\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \time_records[0][12]~feeder_combout\ : std_logic;
SIGNAL \time_records[0][3]~4_combout\ : std_logic;
SIGNAL \time_records[0][3]~5_combout\ : std_logic;
SIGNAL \time_records[0][12]~q\ : std_logic;
SIGNAL \time_records~3_combout\ : std_logic;
SIGNAL \time_records[0][16]~q\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \time_records[1][12]~feeder_combout\ : std_logic;
SIGNAL \time_records[1][5]~2_combout\ : std_logic;
SIGNAL \time_records[1][12]~q\ : std_logic;
SIGNAL \time_records[1][16]~q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \time_records[0][0]~q\ : std_logic;
SIGNAL \time_records[0][4]~q\ : std_logic;
SIGNAL \time_records[0][8]~q\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \time_records[1][4]~q\ : std_logic;
SIGNAL \time_records[1][8]~q\ : std_logic;
SIGNAL \Mux3~13_combout\ : std_logic;
SIGNAL \time_records[2][18]~10_combout\ : std_logic;
SIGNAL \time_records[2][4]~q\ : std_logic;
SIGNAL \time_records[2][8]~q\ : std_logic;
SIGNAL \Mux3~12_combout\ : std_logic;
SIGNAL \Mux3~14_combout\ : std_logic;
SIGNAL \time_records[3][16]~q\ : std_logic;
SIGNAL \time_records[2][0]~q\ : std_logic;
SIGNAL \Mux3~15_combout\ : std_logic;
SIGNAL \time_records[1][0]~q\ : std_logic;
SIGNAL \time_records[2][16]~q\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \time_records[2][12]~q\ : std_logic;
SIGNAL \Mux3~11_combout\ : std_logic;
SIGNAL \Mux3~16_combout\ : std_logic;
SIGNAL \Mux3~17_combout\ : std_logic;
SIGNAL \mLCD_DATA~0_combout\ : std_logic;
SIGNAL \mLCD_ST~20_combout\ : std_logic;
SIGNAL \mLCD_ST.000000~q\ : std_logic;
SIGNAL \mLCD_DATA[0]~1_combout\ : std_logic;
SIGNAL \LUT_DATA[3]~29_combout\ : std_logic;
SIGNAL \time_records~15_combout\ : std_logic;
SIGNAL \time_records[3][9]~q\ : std_logic;
SIGNAL \time_records~14_combout\ : std_logic;
SIGNAL \time_records[3][5]~q\ : std_logic;
SIGNAL \LUT_DATA[3]~32_combout\ : std_logic;
SIGNAL \LUT_DATA[3]~31_combout\ : std_logic;
SIGNAL \time_records~11_combout\ : std_logic;
SIGNAL \time_records[3][13]~q\ : std_logic;
SIGNAL \time_records~13_combout\ : std_logic;
SIGNAL \time_records[3][1]~q\ : std_logic;
SIGNAL \LUT_DATA~30_combout\ : std_logic;
SIGNAL \LUT_DATA~33_combout\ : std_logic;
SIGNAL \LUT_DATA~34_combout\ : std_logic;
SIGNAL \LUT_DATA~35_combout\ : std_logic;
SIGNAL \time_records[1][1]~q\ : std_logic;
SIGNAL \LUT_DATA~9_combout\ : std_logic;
SIGNAL \LUT_DATA[3]~10_combout\ : std_logic;
SIGNAL \time_records~12_combout\ : std_logic;
SIGNAL \time_records[2][17]~q\ : std_logic;
SIGNAL \LUT_DATA[3]~3_combout\ : std_logic;
SIGNAL \time_records[2][13]~q\ : std_logic;
SIGNAL \time_records[0][17]~q\ : std_logic;
SIGNAL \LUT_DATA~4_combout\ : std_logic;
SIGNAL \LUT_DATA[3]~5_combout\ : std_logic;
SIGNAL \time_records[0][13]~q\ : std_logic;
SIGNAL \LUT_DATA[3]~6_combout\ : std_logic;
SIGNAL \LUT_DATA~7_combout\ : std_logic;
SIGNAL \LUT_DATA~8_combout\ : std_logic;
SIGNAL \LUT_DATA[3]~25_combout\ : std_logic;
SIGNAL \LUT_DATA[3]~26_combout\ : std_logic;
SIGNAL \LUT_DATA[3]~20_combout\ : std_logic;
SIGNAL \time_records[2][1]~q\ : std_logic;
SIGNAL \LUT_DATA~19_combout\ : std_logic;
SIGNAL \time_records[3][17]~q\ : std_logic;
SIGNAL \time_records[1][13]~q\ : std_logic;
SIGNAL \time_records[1][17]~q\ : std_logic;
SIGNAL \LUT_DATA[3]~21_combout\ : std_logic;
SIGNAL \LUT_DATA~22_combout\ : std_logic;
SIGNAL \LUT_DATA~23_combout\ : std_logic;
SIGNAL \LUT_DATA~24_combout\ : std_logic;
SIGNAL \time_records[0][1]~q\ : std_logic;
SIGNAL \LUT_DATA~11_combout\ : std_logic;
SIGNAL \LUT_DATA[3]~12_combout\ : std_logic;
SIGNAL \time_records[2][5]~q\ : std_logic;
SIGNAL \time_records[1][5]~q\ : std_logic;
SIGNAL \time_records[0][5]~q\ : std_logic;
SIGNAL \LUT_DATA[3]~13_combout\ : std_logic;
SIGNAL \time_records[2][9]~q\ : std_logic;
SIGNAL \time_records[1][9]~q\ : std_logic;
SIGNAL \time_records[0][9]~q\ : std_logic;
SIGNAL \LUT_DATA~14_combout\ : std_logic;
SIGNAL \LUT_DATA~15_combout\ : std_logic;
SIGNAL \LUT_DATA~16_combout\ : std_logic;
SIGNAL \LUT_DATA~17_combout\ : std_logic;
SIGNAL \LUT_DATA~18_combout\ : std_logic;
SIGNAL \LUT_DATA~27_combout\ : std_logic;
SIGNAL \LUT_DATA~28_combout\ : std_logic;
SIGNAL \LUT_DATA[1]~0_combout\ : std_logic;
SIGNAL \WideOr2~4_combout\ : std_logic;
SIGNAL \WideOr2~0_combout\ : std_logic;
SIGNAL \WideOr2~1_combout\ : std_logic;
SIGNAL \WideOr2~2_combout\ : std_logic;
SIGNAL \WideOr2~3_combout\ : std_logic;
SIGNAL \WideOr2~5_combout\ : std_logic;
SIGNAL \mLCD_DATA~2_combout\ : std_logic;
SIGNAL \time_records~18_combout\ : std_logic;
SIGNAL \time_records[3][2]~q\ : std_logic;
SIGNAL \LUT_DATA~52_combout\ : std_logic;
SIGNAL \time_records~16_combout\ : std_logic;
SIGNAL \time_records[3][14]~q\ : std_logic;
SIGNAL \LUT_DATA~53_combout\ : std_logic;
SIGNAL \time_records~20_combout\ : std_logic;
SIGNAL \time_records[3][10]~q\ : std_logic;
SIGNAL \time_records~19_combout\ : std_logic;
SIGNAL \time_records[3][6]~q\ : std_logic;
SIGNAL \LUT_DATA~54_combout\ : std_logic;
SIGNAL \LUT_DATA~55_combout\ : std_logic;
SIGNAL \time_records[1][2]~q\ : std_logic;
SIGNAL \LUT_DATA~39_combout\ : std_logic;
SIGNAL \time_records[2][14]~feeder_combout\ : std_logic;
SIGNAL \time_records[2][14]~q\ : std_logic;
SIGNAL \time_records~17_combout\ : std_logic;
SIGNAL \time_records[2][18]~q\ : std_logic;
SIGNAL \time_records[0][18]~q\ : std_logic;
SIGNAL \LUT_DATA~36_combout\ : std_logic;
SIGNAL \time_records[0][14]~q\ : std_logic;
SIGNAL \LUT_DATA~37_combout\ : std_logic;
SIGNAL \LUT_DATA~38_combout\ : std_logic;
SIGNAL \time_records[3][18]~q\ : std_logic;
SIGNAL \time_records[1][14]~q\ : std_logic;
SIGNAL \time_records[1][18]~q\ : std_logic;
SIGNAL \LUT_DATA~47_combout\ : std_logic;
SIGNAL \time_records[2][2]~q\ : std_logic;
SIGNAL \LUT_DATA~46_combout\ : std_logic;
SIGNAL \LUT_DATA~48_combout\ : std_logic;
SIGNAL \LUT_DATA~49_combout\ : std_logic;
SIGNAL \time_records[0][2]~q\ : std_logic;
SIGNAL \LUT_DATA~40_combout\ : std_logic;
SIGNAL \time_records[2][6]~q\ : std_logic;
SIGNAL \time_records[1][6]~q\ : std_logic;
SIGNAL \time_records[0][6]~q\ : std_logic;
SIGNAL \time_records[2][10]~q\ : std_logic;
SIGNAL \time_records[1][10]~q\ : std_logic;
SIGNAL \time_records[0][10]~q\ : std_logic;
SIGNAL \LUT_DATA~41_combout\ : std_logic;
SIGNAL \LUT_DATA~42_combout\ : std_logic;
SIGNAL \LUT_DATA~43_combout\ : std_logic;
SIGNAL \LUT_DATA~44_combout\ : std_logic;
SIGNAL \LUT_DATA~45_combout\ : std_logic;
SIGNAL \LUT_DATA~50_combout\ : std_logic;
SIGNAL \LUT_DATA~51_combout\ : std_logic;
SIGNAL \LUT_DATA[2]~1_combout\ : std_logic;
SIGNAL \WideOr1~0_combout\ : std_logic;
SIGNAL \WideOr1~1_combout\ : std_logic;
SIGNAL \mLCD_DATA~3_combout\ : std_logic;
SIGNAL \time_records~24_combout\ : std_logic;
SIGNAL \time_records[3][7]~q\ : std_logic;
SIGNAL \time_records~25_combout\ : std_logic;
SIGNAL \time_records[3][11]~q\ : std_logic;
SIGNAL \time_records~23_combout\ : std_logic;
SIGNAL \time_records[3][3]~q\ : std_logic;
SIGNAL \LUT_DATA~72_combout\ : std_logic;
SIGNAL \time_records~21_combout\ : std_logic;
SIGNAL \time_records[3][15]~q\ : std_logic;
SIGNAL \LUT_DATA~73_combout\ : std_logic;
SIGNAL \LUT_DATA~74_combout\ : std_logic;
SIGNAL \LUT_DATA~75_combout\ : std_logic;
SIGNAL \time_records[2][15]~q\ : std_logic;
SIGNAL \time_records~22_combout\ : std_logic;
SIGNAL \time_records[2][19]~q\ : std_logic;
SIGNAL \time_records[0][19]~q\ : std_logic;
SIGNAL \LUT_DATA~56_combout\ : std_logic;
SIGNAL \time_records[0][15]~q\ : std_logic;
SIGNAL \LUT_DATA~57_combout\ : std_logic;
SIGNAL \LUT_DATA~58_combout\ : std_logic;
SIGNAL \time_records[1][3]~q\ : std_logic;
SIGNAL \LUT_DATA~59_combout\ : std_logic;
SIGNAL \time_records[2][3]~q\ : std_logic;
SIGNAL \LUT_DATA~66_combout\ : std_logic;
SIGNAL \time_records[1][15]~q\ : std_logic;
SIGNAL \time_records[1][19]~q\ : std_logic;
SIGNAL \LUT_DATA~67_combout\ : std_logic;
SIGNAL \time_records[3][19]~q\ : std_logic;
SIGNAL \LUT_DATA~68_combout\ : std_logic;
SIGNAL \LUT_DATA~69_combout\ : std_logic;
SIGNAL \time_records[0][3]~q\ : std_logic;
SIGNAL \LUT_DATA~60_combout\ : std_logic;
SIGNAL \time_records[2][7]~q\ : std_logic;
SIGNAL \time_records[1][7]~q\ : std_logic;
SIGNAL \time_records[0][7]~q\ : std_logic;
SIGNAL \time_records[2][11]~q\ : std_logic;
SIGNAL \time_records[1][11]~q\ : std_logic;
SIGNAL \time_records[0][11]~q\ : std_logic;
SIGNAL \LUT_DATA~61_combout\ : std_logic;
SIGNAL \LUT_DATA~62_combout\ : std_logic;
SIGNAL \LUT_DATA~63_combout\ : std_logic;
SIGNAL \LUT_DATA~64_combout\ : std_logic;
SIGNAL \LUT_DATA~65_combout\ : std_logic;
SIGNAL \LUT_DATA~70_combout\ : std_logic;
SIGNAL \LUT_DATA~71_combout\ : std_logic;
SIGNAL \LUT_DATA[3]~2_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr0~2_combout\ : std_logic;
SIGNAL \mLCD_DATA~4_combout\ : std_logic;
SIGNAL \WideOr5~3_combout\ : std_logic;
SIGNAL \WideOr5~1_combout\ : std_logic;
SIGNAL \WideOr5~0_combout\ : std_logic;
SIGNAL \WideOr5~2_combout\ : std_logic;
SIGNAL \WideOr5~4_combout\ : std_logic;
SIGNAL \mLCD_DATA~5_combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr4~1_combout\ : std_logic;
SIGNAL \mLCD_DATA~6_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \mLCD_DATA~7_combout\ : std_logic;
SIGNAL \LUT_DATA~76_combout\ : std_logic;
SIGNAL \LUT_DATA~77_combout\ : std_logic;
SIGNAL \mLCD_DATA~8_combout\ : std_logic;
SIGNAL \u0|Selector3~0_combout\ : std_logic;
SIGNAL \u0|LCD_EN~q\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \WideOr3~1_combout\ : std_logic;
SIGNAL \mLCD_RS~0_combout\ : std_logic;
SIGNAL \mLCD_RS~q\ : std_logic;
SIGNAL LUT_DATA : std_logic_vector(8 DOWNTO 0);
SIGNAL LUT_INDEX : std_logic_vector(5 DOWNTO 0);
SIGNAL Cont : std_logic_vector(19 DOWNTO 0);
SIGNAL debounce_counter_split : std_logic_vector(19 DOWNTO 0);
SIGNAL debounce_counter_start_stop : std_logic_vector(19 DOWNTO 0);
SIGNAL mDLY : std_logic_vector(17 DOWNTO 0);
SIGNAL BCD : std_logic_vector(19 DOWNTO 0);
SIGNAL record_index : std_logic_vector(1 DOWNTO 0);
SIGNAL mLCD_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|Cont\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_WideOr35~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr28~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr21~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr14~0_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr6~0_combout\ : std_logic;

BEGIN

ww_iCLK <= iCLK;
ww_reset <= reset;
ww_mode <= mode;
ww_Btn_start_stop <= Btn_start_stop;
ww_Btn_split <= Btn_split;
segA <= ww_segA;
segB <= ww_segB;
segC <= ww_segC;
segD <= ww_segD;
segE <= ww_segE;
LCD_DATA <= ww_LCD_DATA;
LCD_RW <= ww_LCD_RW;
LCD_EN <= ww_LCD_EN;
LCD_RS <= ww_LCD_RS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\iCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \iCLK~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_WideOr35~0_combout\ <= NOT \WideOr35~0_combout\;
\ALT_INV_WideOr28~0_combout\ <= NOT \WideOr28~0_combout\;
\ALT_INV_WideOr21~0_combout\ <= NOT \WideOr21~0_combout\;
\ALT_INV_WideOr14~0_combout\ <= NOT \WideOr14~0_combout\;
\ALT_INV_WideOr6~0_combout\ <= NOT \WideOr6~0_combout\;

-- Location: IOOBUF_X115_Y41_N2
\segA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr12~0_combout\,
	devoe => ww_devoe,
	o => \segA[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\segA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr11~0_combout\,
	devoe => ww_devoe,
	o => \segA[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\segA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr10~0_combout\,
	devoe => ww_devoe,
	o => \segA[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\segA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr9~0_combout\,
	devoe => ww_devoe,
	o => \segA[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\segA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr8~0_combout\,
	devoe => ww_devoe,
	o => \segA[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\segA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr7~0_combout\,
	devoe => ww_devoe,
	o => \segA[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\segA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \segA[6]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\segB[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr20~0_combout\,
	devoe => ww_devoe,
	o => \segB[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\segB[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr19~0_combout\,
	devoe => ww_devoe,
	o => \segB[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\segB[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr18~0_combout\,
	devoe => ww_devoe,
	o => \segB[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\segB[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr17~0_combout\,
	devoe => ww_devoe,
	o => \segB[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\segB[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr16~0_combout\,
	devoe => ww_devoe,
	o => \segB[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\segB[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr15~0_combout\,
	devoe => ww_devoe,
	o => \segB[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\segB[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr14~0_combout\,
	devoe => ww_devoe,
	o => \segB[6]~output_o\);

-- Location: IOOBUF_X115_Y34_N16
\segB[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr13~0_combout\,
	devoe => ww_devoe,
	o => \segB[7]~output_o\);

-- Location: IOOBUF_X115_Y25_N16
\segC[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr27~0_combout\,
	devoe => ww_devoe,
	o => \segC[0]~output_o\);

-- Location: IOOBUF_X115_Y29_N2
\segC[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr26~0_combout\,
	devoe => ww_devoe,
	o => \segC[1]~output_o\);

-- Location: IOOBUF_X100_Y0_N2
\segC[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr25~0_combout\,
	devoe => ww_devoe,
	o => \segC[2]~output_o\);

-- Location: IOOBUF_X111_Y0_N2
\segC[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr24~0_combout\,
	devoe => ww_devoe,
	o => \segC[3]~output_o\);

-- Location: IOOBUF_X105_Y0_N23
\segC[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr23~0_combout\,
	devoe => ww_devoe,
	o => \segC[4]~output_o\);

-- Location: IOOBUF_X105_Y0_N9
\segC[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr22~0_combout\,
	devoe => ww_devoe,
	o => \segC[5]~output_o\);

-- Location: IOOBUF_X105_Y0_N2
\segC[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr21~0_combout\,
	devoe => ww_devoe,
	o => \segC[6]~output_o\);

-- Location: IOOBUF_X98_Y0_N23
\segD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr34~0_combout\,
	devoe => ww_devoe,
	o => \segD[0]~output_o\);

-- Location: IOOBUF_X107_Y0_N9
\segD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr33~0_combout\,
	devoe => ww_devoe,
	o => \segD[1]~output_o\);

-- Location: IOOBUF_X74_Y0_N9
\segD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr32~0_combout\,
	devoe => ww_devoe,
	o => \segD[2]~output_o\);

-- Location: IOOBUF_X74_Y0_N2
\segD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr31~0_combout\,
	devoe => ww_devoe,
	o => \segD[3]~output_o\);

-- Location: IOOBUF_X83_Y0_N23
\segD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr30~0_combout\,
	devoe => ww_devoe,
	o => \segD[4]~output_o\);

-- Location: IOOBUF_X83_Y0_N16
\segD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr29~0_combout\,
	devoe => ww_devoe,
	o => \segD[5]~output_o\);

-- Location: IOOBUF_X79_Y0_N23
\segD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr28~0_combout\,
	devoe => ww_devoe,
	o => \segD[6]~output_o\);

-- Location: IOOBUF_X85_Y0_N9
\segE[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr41~0_combout\,
	devoe => ww_devoe,
	o => \segE[0]~output_o\);

-- Location: IOOBUF_X87_Y0_N16
\segE[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr40~0_combout\,
	devoe => ww_devoe,
	o => \segE[1]~output_o\);

-- Location: IOOBUF_X98_Y0_N16
\segE[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr39~0_combout\,
	devoe => ww_devoe,
	o => \segE[2]~output_o\);

-- Location: IOOBUF_X72_Y0_N2
\segE[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr38~0_combout\,
	devoe => ww_devoe,
	o => \segE[3]~output_o\);

-- Location: IOOBUF_X72_Y0_N9
\segE[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr37~0_combout\,
	devoe => ww_devoe,
	o => \segE[4]~output_o\);

-- Location: IOOBUF_X79_Y0_N16
\segE[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WideOr36~0_combout\,
	devoe => ww_devoe,
	o => \segE[5]~output_o\);

-- Location: IOOBUF_X69_Y0_N2
\segE[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_WideOr35~0_combout\,
	devoe => ww_devoe,
	o => \segE[6]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\LCD_DATA[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(0),
	devoe => ww_devoe,
	o => \LCD_DATA[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\LCD_DATA[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(1),
	devoe => ww_devoe,
	o => \LCD_DATA[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\LCD_DATA[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(2),
	devoe => ww_devoe,
	o => \LCD_DATA[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\LCD_DATA[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(3),
	devoe => ww_devoe,
	o => \LCD_DATA[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\LCD_DATA[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(4),
	devoe => ww_devoe,
	o => \LCD_DATA[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\LCD_DATA[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(5),
	devoe => ww_devoe,
	o => \LCD_DATA[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\LCD_DATA[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(6),
	devoe => ww_devoe,
	o => \LCD_DATA[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\LCD_DATA[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => mLCD_DATA(7),
	devoe => ww_devoe,
	o => \LCD_DATA[7]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\LCD_RW~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LCD_RW~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\LCD_EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|LCD_EN~q\,
	devoe => ww_devoe,
	o => \LCD_EN~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\LCD_RS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mLCD_RS~q\,
	devoe => ww_devoe,
	o => \LCD_RS~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\iCLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_iCLK,
	o => \iCLK~input_o\);

-- Location: CLKCTRL_G4
\iCLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \iCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \iCLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y17_N1
\mode~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode,
	o => \mode~input_o\);

-- Location: LCCOMB_X114_Y32_N12
\debounce_counter_start_stop[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[0]~20_combout\ = debounce_counter_start_stop(0) $ (VCC)
-- \debounce_counter_start_stop[0]~21\ = CARRY(debounce_counter_start_stop(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_start_stop(0),
	datad => VCC,
	combout => \debounce_counter_start_stop[0]~20_combout\,
	cout => \debounce_counter_start_stop[0]~21\);

-- Location: IOIBUF_X115_Y53_N15
\Btn_start_stop~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Btn_start_stop,
	o => \Btn_start_stop~input_o\);

-- Location: IOIBUF_X115_Y35_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X114_Y32_N0
\debounce_counter_start_stop[3]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[3]~60_combout\ = (\Btn_start_stop~input_o\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Btn_start_stop~input_o\,
	datad => \reset~input_o\,
	combout => \debounce_counter_start_stop[3]~60_combout\);

-- Location: LCCOMB_X114_Y31_N26
\LessThan2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = (((!debounce_counter_start_stop(15)) # (!debounce_counter_start_stop(17))) # (!debounce_counter_start_stop(18))) # (!debounce_counter_start_stop(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_start_stop(16),
	datab => debounce_counter_start_stop(18),
	datac => debounce_counter_start_stop(17),
	datad => debounce_counter_start_stop(15),
	combout => \LessThan2~3_combout\);

-- Location: LCCOMB_X114_Y32_N4
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ((!debounce_counter_start_stop(7) & (!debounce_counter_start_stop(5) & !debounce_counter_start_stop(6)))) # (!debounce_counter_start_stop(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_start_stop(7),
	datab => debounce_counter_start_stop(8),
	datac => debounce_counter_start_stop(5),
	datad => debounce_counter_start_stop(6),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X114_Y32_N6
\LessThan2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (!debounce_counter_start_stop(11) & (!debounce_counter_start_stop(10) & (!debounce_counter_start_stop(9) & !debounce_counter_start_stop(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_start_stop(11),
	datab => debounce_counter_start_stop(10),
	datac => debounce_counter_start_stop(9),
	datad => debounce_counter_start_stop(12),
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X114_Y32_N8
\LessThan2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (!debounce_counter_start_stop(14) & (((\LessThan2~0_combout\ & \LessThan2~1_combout\)) # (!debounce_counter_start_stop(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_start_stop(13),
	datab => debounce_counter_start_stop(14),
	datac => \LessThan2~0_combout\,
	datad => \LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X114_Y32_N10
\debounce_counter_start_stop[3]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[3]~61_combout\ = (\debounce_counter_start_stop[3]~60_combout\) # ((!debounce_counter_start_stop(19) & ((\LessThan2~3_combout\) # (\LessThan2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~3_combout\,
	datab => debounce_counter_start_stop(19),
	datac => \debounce_counter_start_stop[3]~60_combout\,
	datad => \LessThan2~2_combout\,
	combout => \debounce_counter_start_stop[3]~61_combout\);

-- Location: FF_X114_Y32_N13
\debounce_counter_start_stop[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[0]~20_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(0));

-- Location: LCCOMB_X114_Y32_N14
\debounce_counter_start_stop[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[1]~22_combout\ = (debounce_counter_start_stop(1) & (!\debounce_counter_start_stop[0]~21\)) # (!debounce_counter_start_stop(1) & ((\debounce_counter_start_stop[0]~21\) # (GND)))
-- \debounce_counter_start_stop[1]~23\ = CARRY((!\debounce_counter_start_stop[0]~21\) # (!debounce_counter_start_stop(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_start_stop(1),
	datad => VCC,
	cin => \debounce_counter_start_stop[0]~21\,
	combout => \debounce_counter_start_stop[1]~22_combout\,
	cout => \debounce_counter_start_stop[1]~23\);

-- Location: FF_X114_Y32_N15
\debounce_counter_start_stop[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[1]~22_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(1));

-- Location: LCCOMB_X114_Y32_N16
\debounce_counter_start_stop[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[2]~24_combout\ = (debounce_counter_start_stop(2) & (\debounce_counter_start_stop[1]~23\ $ (GND))) # (!debounce_counter_start_stop(2) & (!\debounce_counter_start_stop[1]~23\ & VCC))
-- \debounce_counter_start_stop[2]~25\ = CARRY((debounce_counter_start_stop(2) & !\debounce_counter_start_stop[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_start_stop(2),
	datad => VCC,
	cin => \debounce_counter_start_stop[1]~23\,
	combout => \debounce_counter_start_stop[2]~24_combout\,
	cout => \debounce_counter_start_stop[2]~25\);

-- Location: FF_X114_Y32_N17
\debounce_counter_start_stop[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[2]~24_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(2));

-- Location: LCCOMB_X114_Y32_N18
\debounce_counter_start_stop[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[3]~26_combout\ = (debounce_counter_start_stop(3) & (!\debounce_counter_start_stop[2]~25\)) # (!debounce_counter_start_stop(3) & ((\debounce_counter_start_stop[2]~25\) # (GND)))
-- \debounce_counter_start_stop[3]~27\ = CARRY((!\debounce_counter_start_stop[2]~25\) # (!debounce_counter_start_stop(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_start_stop(3),
	datad => VCC,
	cin => \debounce_counter_start_stop[2]~25\,
	combout => \debounce_counter_start_stop[3]~26_combout\,
	cout => \debounce_counter_start_stop[3]~27\);

-- Location: FF_X114_Y32_N19
\debounce_counter_start_stop[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[3]~26_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(3));

-- Location: LCCOMB_X114_Y32_N20
\debounce_counter_start_stop[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[4]~28_combout\ = (debounce_counter_start_stop(4) & (\debounce_counter_start_stop[3]~27\ $ (GND))) # (!debounce_counter_start_stop(4) & (!\debounce_counter_start_stop[3]~27\ & VCC))
-- \debounce_counter_start_stop[4]~29\ = CARRY((debounce_counter_start_stop(4) & !\debounce_counter_start_stop[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_start_stop(4),
	datad => VCC,
	cin => \debounce_counter_start_stop[3]~27\,
	combout => \debounce_counter_start_stop[4]~28_combout\,
	cout => \debounce_counter_start_stop[4]~29\);

-- Location: FF_X114_Y32_N21
\debounce_counter_start_stop[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[4]~28_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(4));

-- Location: LCCOMB_X114_Y32_N22
\debounce_counter_start_stop[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[5]~30_combout\ = (debounce_counter_start_stop(5) & (!\debounce_counter_start_stop[4]~29\)) # (!debounce_counter_start_stop(5) & ((\debounce_counter_start_stop[4]~29\) # (GND)))
-- \debounce_counter_start_stop[5]~31\ = CARRY((!\debounce_counter_start_stop[4]~29\) # (!debounce_counter_start_stop(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_start_stop(5),
	datad => VCC,
	cin => \debounce_counter_start_stop[4]~29\,
	combout => \debounce_counter_start_stop[5]~30_combout\,
	cout => \debounce_counter_start_stop[5]~31\);

-- Location: FF_X114_Y32_N23
\debounce_counter_start_stop[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[5]~30_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(5));

-- Location: LCCOMB_X114_Y32_N24
\debounce_counter_start_stop[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[6]~32_combout\ = (debounce_counter_start_stop(6) & (\debounce_counter_start_stop[5]~31\ $ (GND))) # (!debounce_counter_start_stop(6) & (!\debounce_counter_start_stop[5]~31\ & VCC))
-- \debounce_counter_start_stop[6]~33\ = CARRY((debounce_counter_start_stop(6) & !\debounce_counter_start_stop[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_start_stop(6),
	datad => VCC,
	cin => \debounce_counter_start_stop[5]~31\,
	combout => \debounce_counter_start_stop[6]~32_combout\,
	cout => \debounce_counter_start_stop[6]~33\);

-- Location: FF_X114_Y32_N25
\debounce_counter_start_stop[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[6]~32_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(6));

-- Location: LCCOMB_X114_Y32_N26
\debounce_counter_start_stop[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[7]~34_combout\ = (debounce_counter_start_stop(7) & (!\debounce_counter_start_stop[6]~33\)) # (!debounce_counter_start_stop(7) & ((\debounce_counter_start_stop[6]~33\) # (GND)))
-- \debounce_counter_start_stop[7]~35\ = CARRY((!\debounce_counter_start_stop[6]~33\) # (!debounce_counter_start_stop(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_start_stop(7),
	datad => VCC,
	cin => \debounce_counter_start_stop[6]~33\,
	combout => \debounce_counter_start_stop[7]~34_combout\,
	cout => \debounce_counter_start_stop[7]~35\);

-- Location: FF_X114_Y32_N27
\debounce_counter_start_stop[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[7]~34_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(7));

-- Location: LCCOMB_X114_Y32_N28
\debounce_counter_start_stop[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[8]~36_combout\ = (debounce_counter_start_stop(8) & (\debounce_counter_start_stop[7]~35\ $ (GND))) # (!debounce_counter_start_stop(8) & (!\debounce_counter_start_stop[7]~35\ & VCC))
-- \debounce_counter_start_stop[8]~37\ = CARRY((debounce_counter_start_stop(8) & !\debounce_counter_start_stop[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_start_stop(8),
	datad => VCC,
	cin => \debounce_counter_start_stop[7]~35\,
	combout => \debounce_counter_start_stop[8]~36_combout\,
	cout => \debounce_counter_start_stop[8]~37\);

-- Location: FF_X114_Y32_N29
\debounce_counter_start_stop[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[8]~36_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(8));

-- Location: LCCOMB_X114_Y32_N30
\debounce_counter_start_stop[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[9]~38_combout\ = (debounce_counter_start_stop(9) & (!\debounce_counter_start_stop[8]~37\)) # (!debounce_counter_start_stop(9) & ((\debounce_counter_start_stop[8]~37\) # (GND)))
-- \debounce_counter_start_stop[9]~39\ = CARRY((!\debounce_counter_start_stop[8]~37\) # (!debounce_counter_start_stop(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_start_stop(9),
	datad => VCC,
	cin => \debounce_counter_start_stop[8]~37\,
	combout => \debounce_counter_start_stop[9]~38_combout\,
	cout => \debounce_counter_start_stop[9]~39\);

-- Location: FF_X114_Y32_N31
\debounce_counter_start_stop[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[9]~38_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(9));

-- Location: LCCOMB_X114_Y31_N0
\debounce_counter_start_stop[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[10]~40_combout\ = (debounce_counter_start_stop(10) & (\debounce_counter_start_stop[9]~39\ $ (GND))) # (!debounce_counter_start_stop(10) & (!\debounce_counter_start_stop[9]~39\ & VCC))
-- \debounce_counter_start_stop[10]~41\ = CARRY((debounce_counter_start_stop(10) & !\debounce_counter_start_stop[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_start_stop(10),
	datad => VCC,
	cin => \debounce_counter_start_stop[9]~39\,
	combout => \debounce_counter_start_stop[10]~40_combout\,
	cout => \debounce_counter_start_stop[10]~41\);

-- Location: FF_X114_Y31_N1
\debounce_counter_start_stop[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[10]~40_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(10));

-- Location: LCCOMB_X114_Y31_N2
\debounce_counter_start_stop[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[11]~42_combout\ = (debounce_counter_start_stop(11) & (!\debounce_counter_start_stop[10]~41\)) # (!debounce_counter_start_stop(11) & ((\debounce_counter_start_stop[10]~41\) # (GND)))
-- \debounce_counter_start_stop[11]~43\ = CARRY((!\debounce_counter_start_stop[10]~41\) # (!debounce_counter_start_stop(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_start_stop(11),
	datad => VCC,
	cin => \debounce_counter_start_stop[10]~41\,
	combout => \debounce_counter_start_stop[11]~42_combout\,
	cout => \debounce_counter_start_stop[11]~43\);

-- Location: FF_X114_Y31_N3
\debounce_counter_start_stop[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[11]~42_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(11));

-- Location: LCCOMB_X114_Y31_N4
\debounce_counter_start_stop[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[12]~44_combout\ = (debounce_counter_start_stop(12) & (\debounce_counter_start_stop[11]~43\ $ (GND))) # (!debounce_counter_start_stop(12) & (!\debounce_counter_start_stop[11]~43\ & VCC))
-- \debounce_counter_start_stop[12]~45\ = CARRY((debounce_counter_start_stop(12) & !\debounce_counter_start_stop[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_start_stop(12),
	datad => VCC,
	cin => \debounce_counter_start_stop[11]~43\,
	combout => \debounce_counter_start_stop[12]~44_combout\,
	cout => \debounce_counter_start_stop[12]~45\);

-- Location: FF_X114_Y31_N5
\debounce_counter_start_stop[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[12]~44_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(12));

-- Location: LCCOMB_X114_Y31_N6
\debounce_counter_start_stop[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[13]~46_combout\ = (debounce_counter_start_stop(13) & (!\debounce_counter_start_stop[12]~45\)) # (!debounce_counter_start_stop(13) & ((\debounce_counter_start_stop[12]~45\) # (GND)))
-- \debounce_counter_start_stop[13]~47\ = CARRY((!\debounce_counter_start_stop[12]~45\) # (!debounce_counter_start_stop(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_start_stop(13),
	datad => VCC,
	cin => \debounce_counter_start_stop[12]~45\,
	combout => \debounce_counter_start_stop[13]~46_combout\,
	cout => \debounce_counter_start_stop[13]~47\);

-- Location: FF_X114_Y31_N7
\debounce_counter_start_stop[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[13]~46_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(13));

-- Location: LCCOMB_X114_Y31_N8
\debounce_counter_start_stop[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[14]~48_combout\ = (debounce_counter_start_stop(14) & (\debounce_counter_start_stop[13]~47\ $ (GND))) # (!debounce_counter_start_stop(14) & (!\debounce_counter_start_stop[13]~47\ & VCC))
-- \debounce_counter_start_stop[14]~49\ = CARRY((debounce_counter_start_stop(14) & !\debounce_counter_start_stop[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_start_stop(14),
	datad => VCC,
	cin => \debounce_counter_start_stop[13]~47\,
	combout => \debounce_counter_start_stop[14]~48_combout\,
	cout => \debounce_counter_start_stop[14]~49\);

-- Location: FF_X114_Y31_N9
\debounce_counter_start_stop[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[14]~48_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(14));

-- Location: LCCOMB_X114_Y31_N10
\debounce_counter_start_stop[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[15]~50_combout\ = (debounce_counter_start_stop(15) & (!\debounce_counter_start_stop[14]~49\)) # (!debounce_counter_start_stop(15) & ((\debounce_counter_start_stop[14]~49\) # (GND)))
-- \debounce_counter_start_stop[15]~51\ = CARRY((!\debounce_counter_start_stop[14]~49\) # (!debounce_counter_start_stop(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_start_stop(15),
	datad => VCC,
	cin => \debounce_counter_start_stop[14]~49\,
	combout => \debounce_counter_start_stop[15]~50_combout\,
	cout => \debounce_counter_start_stop[15]~51\);

-- Location: FF_X114_Y31_N11
\debounce_counter_start_stop[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[15]~50_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(15));

-- Location: LCCOMB_X114_Y31_N12
\debounce_counter_start_stop[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[16]~52_combout\ = (debounce_counter_start_stop(16) & (\debounce_counter_start_stop[15]~51\ $ (GND))) # (!debounce_counter_start_stop(16) & (!\debounce_counter_start_stop[15]~51\ & VCC))
-- \debounce_counter_start_stop[16]~53\ = CARRY((debounce_counter_start_stop(16) & !\debounce_counter_start_stop[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_start_stop(16),
	datad => VCC,
	cin => \debounce_counter_start_stop[15]~51\,
	combout => \debounce_counter_start_stop[16]~52_combout\,
	cout => \debounce_counter_start_stop[16]~53\);

-- Location: FF_X114_Y31_N13
\debounce_counter_start_stop[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[16]~52_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(16));

-- Location: LCCOMB_X114_Y31_N14
\debounce_counter_start_stop[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[17]~54_combout\ = (debounce_counter_start_stop(17) & (!\debounce_counter_start_stop[16]~53\)) # (!debounce_counter_start_stop(17) & ((\debounce_counter_start_stop[16]~53\) # (GND)))
-- \debounce_counter_start_stop[17]~55\ = CARRY((!\debounce_counter_start_stop[16]~53\) # (!debounce_counter_start_stop(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_start_stop(17),
	datad => VCC,
	cin => \debounce_counter_start_stop[16]~53\,
	combout => \debounce_counter_start_stop[17]~54_combout\,
	cout => \debounce_counter_start_stop[17]~55\);

-- Location: FF_X114_Y31_N15
\debounce_counter_start_stop[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[17]~54_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(17));

-- Location: LCCOMB_X114_Y31_N16
\debounce_counter_start_stop[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[18]~56_combout\ = (debounce_counter_start_stop(18) & (\debounce_counter_start_stop[17]~55\ $ (GND))) # (!debounce_counter_start_stop(18) & (!\debounce_counter_start_stop[17]~55\ & VCC))
-- \debounce_counter_start_stop[18]~57\ = CARRY((debounce_counter_start_stop(18) & !\debounce_counter_start_stop[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_start_stop(18),
	datad => VCC,
	cin => \debounce_counter_start_stop[17]~55\,
	combout => \debounce_counter_start_stop[18]~56_combout\,
	cout => \debounce_counter_start_stop[18]~57\);

-- Location: FF_X114_Y31_N17
\debounce_counter_start_stop[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[18]~56_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(18));

-- Location: LCCOMB_X114_Y31_N18
\debounce_counter_start_stop[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_start_stop[19]~58_combout\ = \debounce_counter_start_stop[18]~57\ $ (debounce_counter_start_stop(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => debounce_counter_start_stop(19),
	cin => \debounce_counter_start_stop[18]~57\,
	combout => \debounce_counter_start_stop[19]~58_combout\);

-- Location: FF_X114_Y31_N19
\debounce_counter_start_stop[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_start_stop[19]~58_combout\,
	sclr => \debounce_counter_start_stop[3]~60_combout\,
	ena => \debounce_counter_start_stop[3]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_start_stop(19));

-- Location: LCCOMB_X114_Y32_N2
\Btn_start_stop_stable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Btn_start_stop_stable~0_combout\ = (\Btn_start_stop_stable~q\) # ((debounce_counter_start_stop(19)) # ((!\LessThan2~3_combout\ & !\LessThan2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Btn_start_stop_stable~q\,
	datab => debounce_counter_start_stop(19),
	datac => \LessThan2~3_combout\,
	datad => \LessThan2~2_combout\,
	combout => \Btn_start_stop_stable~0_combout\);

-- Location: LCCOMB_X108_Y34_N30
\Btn_start_stop_stable~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Btn_start_stop_stable~1_combout\ = (\Btn_start_stop_stable~0_combout\ & !\Btn_start_stop~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Btn_start_stop_stable~0_combout\,
	datad => \Btn_start_stop~input_o\,
	combout => \Btn_start_stop_stable~1_combout\);

-- Location: FF_X108_Y34_N31
Btn_start_stop_stable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Btn_start_stop_stable~1_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Btn_start_stop_stable~q\);

-- Location: LCCOMB_X112_Y34_N30
\preBtn_start_stop_stable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \preBtn_start_stop_stable~0_combout\ = (\reset~input_o\ & \Btn_start_stop_stable~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \Btn_start_stop_stable~q\,
	combout => \preBtn_start_stop_stable~0_combout\);

-- Location: FF_X112_Y34_N23
preBtn_start_stop_stable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \preBtn_start_stop_stable~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \preBtn_start_stop_stable~q\);

-- Location: LCCOMB_X113_Y34_N20
\count_enable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count_enable~0_combout\ = \count_enable~q\ $ (((\Btn_start_stop_stable~q\ & !\preBtn_start_stop_stable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Btn_start_stop_stable~q\,
	datac => \count_enable~q\,
	datad => \preBtn_start_stop_stable~q\,
	combout => \count_enable~0_combout\);

-- Location: FF_X113_Y34_N21
count_enable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \count_enable~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \count_enable~q\);

-- Location: LCCOMB_X114_Y31_N28
\BCD[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[1]~6_combout\ = (\count_enable~q\ & ((\mode~input_o\) # (!\Equal6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \count_enable~q\,
	datac => \mode~input_o\,
	datad => \Equal6~3_combout\,
	combout => \BCD[1]~6_combout\);

-- Location: LCCOMB_X113_Y31_N28
\BCD[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[2]~9_combout\ = (BCD(1) & ((BCD(0)) # (!\mode~input_o\))) # (!BCD(1) & (!\mode~input_o\ & BCD(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(1),
	datac => \mode~input_o\,
	datad => BCD(0),
	combout => \BCD[2]~9_combout\);

-- Location: LCCOMB_X113_Y31_N14
\BCD[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[2]~10_combout\ = (\mode~input_o\ & (((!\BCD[2]~9_combout\)))) # (!\mode~input_o\ & ((\Equal7~0_combout\ & (!BCD(2))) # (!\Equal7~0_combout\ & ((\BCD[2]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => BCD(2),
	datac => \mode~input_o\,
	datad => \BCD[2]~9_combout\,
	combout => \BCD[2]~10_combout\);

-- Location: LCCOMB_X114_Y31_N22
\BCD[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[2]~11_combout\ = (BCD(2) & (((\BCD[1]~6_combout\ & \BCD[2]~10_combout\)) # (!\count_enable~q\))) # (!BCD(2) & (\BCD[1]~6_combout\ & ((!\BCD[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[1]~6_combout\,
	datab => \count_enable~q\,
	datac => BCD(2),
	datad => \BCD[2]~10_combout\,
	combout => \BCD[2]~11_combout\);

-- Location: FF_X114_Y31_N23
\BCD[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD[2]~11_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(2));

-- Location: LCCOMB_X114_Y34_N10
\Add11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~1_combout\ = (BCD(0)) # ((BCD(1)) # (BCD(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(0),
	datac => BCD(1),
	datad => BCD(2),
	combout => \Add11~1_combout\);

-- Location: LCCOMB_X114_Y35_N18
\BCD[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[16]~1_combout\ = (\reset~input_o\ & ((\BCD[16]~1_combout\))) # (!\reset~input_o\ & (!\mode~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \BCD[16]~1_combout\,
	datac => \reset~input_o\,
	combout => \BCD[16]~1_combout\);

-- Location: LCCOMB_X114_Y35_N16
\BCD~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~17_combout\ = (!\mode~input_o\ & !\Equal6~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mode~input_o\,
	datad => \Equal6~3_combout\,
	combout => \BCD~17_combout\);

-- Location: LCCOMB_X112_Y35_N12
\BCD[8]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[8]~30_combout\ = (\Equal0~6_combout\) # ((\Equal1~0_combout\) # (\Equal2~0_combout\ $ (!BCD(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal1~0_combout\,
	datad => BCD(8),
	combout => \BCD[8]~30_combout\);

-- Location: LCCOMB_X112_Y34_N20
\BCD~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~16_combout\ = (\mode~input_o\ & ((\Equal0~6_combout\) # (BCD(4) $ (!\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(4),
	datab => \Equal0~6_combout\,
	datac => \mode~input_o\,
	datad => \Equal1~0_combout\,
	combout => \BCD~16_combout\);

-- Location: LCCOMB_X112_Y34_N24
\BCD~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~18_combout\ = (\BCD~16_combout\) # ((\BCD~17_combout\ & (\Equal7~0_combout\ $ (BCD(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD~16_combout\,
	datab => \Equal7~0_combout\,
	datac => BCD(4),
	datad => \BCD~17_combout\,
	combout => \BCD~18_combout\);

-- Location: FF_X112_Y34_N25
\BCD[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD~18_combout\,
	clrn => \reset~input_o\,
	ena => \count_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(4));

-- Location: LCCOMB_X112_Y34_N10
\BCD[6]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[6]~23_combout\ = (\mode~input_o\ & (BCD(6) $ (((BCD(5) & BCD(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(5),
	datab => BCD(4),
	datac => \mode~input_o\,
	datad => BCD(6),
	combout => \BCD[6]~23_combout\);

-- Location: LCCOMB_X112_Y34_N8
\Add10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~1_combout\ = (BCD(4)) # (BCD(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => BCD(4),
	datad => BCD(5),
	combout => \Add10~1_combout\);

-- Location: LCCOMB_X112_Y34_N6
\BCD[6]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[6]~24_combout\ = (!\mode~input_o\ & (\Equal8~0_combout\ & (\Add10~1_combout\ $ (!BCD(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~1_combout\,
	datab => BCD(6),
	datac => \mode~input_o\,
	datad => \Equal8~0_combout\,
	combout => \BCD[6]~24_combout\);

-- Location: LCCOMB_X112_Y34_N16
\BCD[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[6]~25_combout\ = (\BCD[5]~21_combout\ & ((\BCD[6]~23_combout\) # ((\BCD[6]~24_combout\)))) # (!\BCD[5]~21_combout\ & (((BCD(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[5]~21_combout\,
	datab => \BCD[6]~23_combout\,
	datac => BCD(6),
	datad => \BCD[6]~24_combout\,
	combout => \BCD[6]~25_combout\);

-- Location: FF_X112_Y34_N17
\BCD[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD[6]~25_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(6));

-- Location: LCCOMB_X112_Y34_N26
\BCD[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[7]~27_combout\ = (BCD(5) & (BCD(7) $ (((BCD(6) & BCD(4)))))) # (!BCD(5) & (BCD(7) & ((BCD(6)) # (!BCD(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(5),
	datab => BCD(6),
	datac => BCD(7),
	datad => BCD(4),
	combout => \BCD[7]~27_combout\);

-- Location: LCCOMB_X112_Y34_N4
\BCD[7]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[7]~28_combout\ = (\mode~input_o\ & ((\BCD[7]~27_combout\) # ((\Equal0~6_combout\ & !\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[7]~27_combout\,
	datab => \Equal0~6_combout\,
	datac => \mode~input_o\,
	datad => \Equal2~0_combout\,
	combout => \BCD[7]~28_combout\);

-- Location: LCCOMB_X112_Y34_N12
\BCD[7]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[7]~26_combout\ = (!\mode~input_o\ & (BCD(7) $ (((!\Add10~1_combout\ & !BCD(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~1_combout\,
	datab => BCD(7),
	datac => \mode~input_o\,
	datad => BCD(6),
	combout => \BCD[7]~26_combout\);

-- Location: LCCOMB_X112_Y34_N14
\BCD[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[7]~29_combout\ = (\BCD[5]~21_combout\ & ((\BCD[7]~28_combout\) # ((\BCD[7]~26_combout\)))) # (!\BCD[5]~21_combout\ & (((BCD(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[5]~21_combout\,
	datab => \BCD[7]~28_combout\,
	datac => BCD(7),
	datad => \BCD[7]~26_combout\,
	combout => \BCD[7]~29_combout\);

-- Location: FF_X112_Y34_N15
\BCD[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD[7]~29_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(7));

-- Location: LCCOMB_X112_Y34_N0
\Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (BCD(5)) # ((BCD(4)) # ((BCD(7)) # (BCD(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(5),
	datab => BCD(4),
	datac => BCD(7),
	datad => BCD(6),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X112_Y35_N14
\BCD[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[8]~31_combout\ = (\Equal7~0_combout\ & ((\Equal8~0_combout\ $ (!BCD(8))))) # (!\Equal7~0_combout\ & (\BCD[8]~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[8]~30_combout\,
	datab => \Equal8~0_combout\,
	datac => \Equal7~0_combout\,
	datad => BCD(8),
	combout => \BCD[8]~31_combout\);

-- Location: LCCOMB_X112_Y35_N28
\BCD[8]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[8]~35_combout\ = (\BCD[16]~34_combout\ & ((\BCD[8]~31_combout\))) # (!\BCD[16]~34_combout\ & (BCD(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD[16]~34_combout\,
	datac => BCD(8),
	datad => \BCD[8]~31_combout\,
	combout => \BCD[8]~35_combout\);

-- Location: FF_X112_Y35_N29
\BCD[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD[8]~35_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(8));

-- Location: LCCOMB_X113_Y32_N30
\BCD[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[9]~36_combout\ = (\mode~input_o\ & (\Equal3~0_combout\ & !\Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \Equal3~0_combout\,
	datad => \Equal0~6_combout\,
	combout => \BCD[9]~36_combout\);

-- Location: LCCOMB_X113_Y32_N6
\BCD[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[10]~43_combout\ = (\BCD[9]~36_combout\ & (BCD(10) $ (((BCD(9) & BCD(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(9),
	datab => BCD(8),
	datac => \BCD[9]~36_combout\,
	datad => BCD(10),
	combout => \BCD[10]~43_combout\);

-- Location: LCCOMB_X113_Y32_N16
\BCD[10]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[10]~42_combout\ = (!\mode~input_o\ & (BCD(10) $ (((!BCD(9) & !BCD(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(9),
	datab => BCD(8),
	datac => \mode~input_o\,
	datad => BCD(10),
	combout => \BCD[10]~42_combout\);

-- Location: LCCOMB_X113_Y32_N26
\BCD[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[9]~41_combout\ = (\count_enable~q\ & \BCD[9]~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_enable~q\,
	datac => \BCD[9]~39_combout\,
	combout => \BCD[9]~41_combout\);

-- Location: LCCOMB_X113_Y32_N18
\BCD[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[10]~44_combout\ = (\BCD[9]~41_combout\ & ((\BCD[10]~43_combout\) # ((\BCD[10]~42_combout\)))) # (!\BCD[9]~41_combout\ & (((BCD(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[10]~43_combout\,
	datab => \BCD[10]~42_combout\,
	datac => BCD(10),
	datad => \BCD[9]~41_combout\,
	combout => \BCD[10]~44_combout\);

-- Location: FF_X113_Y32_N19
\BCD[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD[10]~44_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(10));

-- Location: LCCOMB_X113_Y32_N22
\Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (BCD(9)) # ((BCD(10)) # ((BCD(11)) # (BCD(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(9),
	datab => BCD(10),
	datac => BCD(11),
	datad => BCD(8),
	combout => \Equal9~0_combout\);

-- Location: LCCOMB_X113_Y32_N24
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = BCD(8) $ (BCD(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => BCD(8),
	datac => BCD(9),
	combout => \Add9~0_combout\);

-- Location: LCCOMB_X113_Y32_N8
\BCD[9]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[9]~37_combout\ = (\Add9~0_combout\ & (((\BCD[9]~36_combout\)))) # (!\Add9~0_combout\ & (!\mode~input_o\ & (\Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \Equal9~0_combout\,
	datac => \BCD[9]~36_combout\,
	datad => \Add9~0_combout\,
	combout => \BCD[9]~37_combout\);

-- Location: LCCOMB_X113_Y32_N28
\BCD[9]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[9]~40_combout\ = (\count_enable~q\ & ((\BCD[9]~39_combout\ & ((\BCD[9]~37_combout\))) # (!\BCD[9]~39_combout\ & (BCD(9))))) # (!\count_enable~q\ & (((BCD(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_enable~q\,
	datab => \BCD[9]~39_combout\,
	datac => BCD(9),
	datad => \BCD[9]~37_combout\,
	combout => \BCD[9]~40_combout\);

-- Location: FF_X113_Y32_N29
\BCD[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD[9]~40_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(9));

-- Location: LCCOMB_X113_Y32_N20
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (BCD(9)) # (((BCD(11)) # (!BCD(8))) # (!BCD(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(9),
	datab => BCD(10),
	datac => BCD(11),
	datad => BCD(8),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X112_Y35_N6
\BCD[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[12]~49_combout\ = (\Equal1~0_combout\) # (BCD(12) $ (((!\Equal3~0_combout\ & !\Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal1~0_combout\,
	datad => BCD(12),
	combout => \BCD[12]~49_combout\);

-- Location: LCCOMB_X112_Y35_N0
\BCD[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[12]~50_combout\ = (\Equal0~6_combout\) # ((\Equal7~0_combout\) # (\BCD[12]~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal7~0_combout\,
	datad => \BCD[12]~49_combout\,
	combout => \BCD[12]~50_combout\);

-- Location: LCCOMB_X113_Y35_N16
\BCD[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[12]~48_combout\ = (BCD(12) $ (((!\Equal9~0_combout\ & !\Equal8~0_combout\)))) # (!\Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => BCD(12),
	datac => \Equal7~0_combout\,
	datad => \Equal8~0_combout\,
	combout => \BCD[12]~48_combout\);

-- Location: LCCOMB_X112_Y35_N2
\BCD[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[12]~51_combout\ = (\BCD[16]~34_combout\ & (\BCD[12]~50_combout\ & (\BCD[12]~48_combout\))) # (!\BCD[16]~34_combout\ & (((BCD(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[12]~50_combout\,
	datab => \BCD[12]~48_combout\,
	datac => BCD(12),
	datad => \BCD[16]~34_combout\,
	combout => \BCD[12]~51_combout\);

-- Location: FF_X112_Y35_N3
\BCD[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD[12]~51_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(12));

-- Location: LCCOMB_X113_Y34_N24
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = BCD(12) $ (BCD(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => BCD(12),
	datad => BCD(13),
	combout => \Add8~0_combout\);

-- Location: LCCOMB_X113_Y34_N22
\BCD[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[13]~52_combout\ = (\Add8~0_combout\ & (((\Equal4~0_combout\ & \mode~input_o\)))) # (!\Add8~0_combout\ & (\Equal10~0_combout\ & ((!\mode~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \Add8~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \mode~input_o\,
	combout => \BCD[13]~52_combout\);

-- Location: LCCOMB_X114_Y35_N12
\BCD[13]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[13]~54_combout\ = (\Equal0~6_combout\) # ((!\Equal3~0_combout\ & (!\Equal1~0_combout\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \Equal0~6_combout\,
	combout => \BCD[13]~54_combout\);

-- Location: LCCOMB_X114_Y35_N26
\BCD[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[9]~38_combout\ = (!\mode~input_o\ & (!\Equal8~0_combout\ & (!\Equal6~3_combout\ & \Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \Equal8~0_combout\,
	datac => \Equal6~3_combout\,
	datad => \Equal7~0_combout\,
	combout => \BCD[9]~38_combout\);

-- Location: LCCOMB_X114_Y35_N14
\BCD[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[13]~53_combout\ = (\BCD[9]~38_combout\ & !\Equal9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BCD[9]~38_combout\,
	datad => \Equal9~0_combout\,
	combout => \BCD[13]~53_combout\);

-- Location: LCCOMB_X114_Y35_N6
\BCD[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[13]~55_combout\ = (\count_enable~q\ & ((\BCD[13]~53_combout\) # ((\BCD[13]~54_combout\ & \mode~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[13]~54_combout\,
	datab => \count_enable~q\,
	datac => \BCD[13]~53_combout\,
	datad => \mode~input_o\,
	combout => \BCD[13]~55_combout\);

-- Location: LCCOMB_X113_Y34_N0
\BCD[13]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[13]~56_combout\ = (\BCD[13]~55_combout\ & (\BCD[13]~52_combout\)) # (!\BCD[13]~55_combout\ & ((BCD(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[13]~52_combout\,
	datac => BCD(13),
	datad => \BCD[13]~55_combout\,
	combout => \BCD[13]~56_combout\);

-- Location: FF_X113_Y34_N1
\BCD[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD[13]~56_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(13));

-- Location: LCCOMB_X113_Y35_N12
\Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (BCD(13)) # ((BCD(12)) # ((BCD(15)) # (BCD(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(13),
	datab => BCD(12),
	datac => BCD(15),
	datad => BCD(14),
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X113_Y36_N16
\Add8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~1_combout\ = (BCD(12)) # (BCD(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => BCD(12),
	datad => BCD(13),
	combout => \Add8~1_combout\);

-- Location: LCCOMB_X113_Y35_N10
\BCD[14]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[14]~58_combout\ = (\Equal10~0_combout\ & (!\mode~input_o\ & (BCD(14) $ (!\Add8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => BCD(14),
	datac => \mode~input_o\,
	datad => \Add8~1_combout\,
	combout => \BCD[14]~58_combout\);

-- Location: LCCOMB_X112_Y35_N18
\BCD[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[14]~57_combout\ = (\mode~input_o\ & (BCD(14) $ (((BCD(13) & BCD(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(13),
	datab => \mode~input_o\,
	datac => BCD(14),
	datad => BCD(12),
	combout => \BCD[14]~57_combout\);

-- Location: LCCOMB_X113_Y35_N2
\BCD[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[14]~59_combout\ = (\BCD[13]~55_combout\ & ((\BCD[14]~58_combout\) # ((\BCD[14]~57_combout\)))) # (!\BCD[13]~55_combout\ & (((BCD(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[14]~58_combout\,
	datab => \BCD[14]~57_combout\,
	datac => BCD(14),
	datad => \BCD[13]~55_combout\,
	combout => \BCD[14]~59_combout\);

-- Location: FF_X113_Y35_N3
\BCD[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD[14]~59_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(14));

-- Location: LCCOMB_X113_Y35_N22
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (BCD(14)) # (((BCD(13)) # (!BCD(15))) # (!BCD(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(14),
	datab => BCD(12),
	datac => BCD(15),
	datad => BCD(13),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X113_Y36_N6
\BCD[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[15]~61_combout\ = (BCD(13) & (BCD(15) $ (((BCD(12) & BCD(14)))))) # (!BCD(13) & (BCD(15) & ((BCD(14)) # (!BCD(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(13),
	datab => BCD(15),
	datac => BCD(12),
	datad => BCD(14),
	combout => \BCD[15]~61_combout\);

-- Location: LCCOMB_X114_Y35_N0
\BCD[15]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[15]~62_combout\ = (\mode~input_o\ & ((\BCD[15]~61_combout\) # ((\Equal0~6_combout\ & !\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \Equal4~0_combout\,
	datac => \mode~input_o\,
	datad => \BCD[15]~61_combout\,
	combout => \BCD[15]~62_combout\);

-- Location: LCCOMB_X113_Y35_N20
\BCD[15]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[15]~60_combout\ = (!\mode~input_o\ & (BCD(15) $ (((!BCD(14) & !\Add8~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(14),
	datab => \mode~input_o\,
	datac => BCD(15),
	datad => \Add8~1_combout\,
	combout => \BCD[15]~60_combout\);

-- Location: LCCOMB_X114_Y35_N10
\BCD[15]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[15]~63_combout\ = (\BCD[13]~55_combout\ & ((\BCD[15]~62_combout\) # ((\BCD[15]~60_combout\)))) # (!\BCD[13]~55_combout\ & (((BCD(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[15]~62_combout\,
	datab => \BCD[13]~55_combout\,
	datac => BCD(15),
	datad => \BCD[15]~60_combout\,
	combout => \BCD[15]~63_combout\);

-- Location: FF_X114_Y35_N11
\BCD[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD[15]~63_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(15));

-- Location: LCCOMB_X113_Y33_N22
\BCD[19]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[19]~73_combout\ = (\mode~input_o\ & (((BCD(18) & BCD(17))) # (!\BCD[16]~2_combout\))) # (!\mode~input_o\ & (!\BCD[16]~2_combout\ & ((BCD(18)) # (BCD(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \BCD[16]~2_combout\,
	datac => BCD(18),
	datad => BCD(17),
	combout => \BCD[19]~73_combout\);

-- Location: LCCOMB_X113_Y33_N28
\BCD[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[17]~65_combout\ = (!\Equal3~0_combout\ & (!\Equal2~0_combout\ & (!\Equal4~0_combout\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal4~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \BCD[17]~65_combout\);

-- Location: LCCOMB_X113_Y33_N6
\BCD[17]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[17]~66_combout\ = (\mode~input_o\ & ((\Equal0~6_combout\) # (\BCD[17]~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mode~input_o\,
	datac => \Equal0~6_combout\,
	datad => \BCD[17]~65_combout\,
	combout => \BCD[17]~66_combout\);

-- Location: LCCOMB_X113_Y33_N4
\BCD[17]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[17]~67_combout\ = (\count_enable~q\ & ((\BCD[17]~66_combout\) # ((!\Equal10~0_combout\ & \BCD[13]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[17]~66_combout\,
	datab => \count_enable~q\,
	datac => \Equal10~0_combout\,
	datad => \BCD[13]~53_combout\,
	combout => \BCD[17]~67_combout\);

-- Location: LCCOMB_X113_Y33_N0
\BCD[19]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[19]~74_combout\ = (\BCD[16]~2_combout\ & (BCD(19) $ (((\BCD[19]~73_combout\ & \BCD[17]~67_combout\))))) # (!\BCD[16]~2_combout\ & (BCD(19) & ((\BCD[19]~73_combout\) # (!\BCD[17]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[16]~2_combout\,
	datab => \BCD[19]~73_combout\,
	datac => BCD(19),
	datad => \BCD[17]~67_combout\,
	combout => \BCD[19]~74_combout\);

-- Location: FF_X113_Y33_N1
\BCD[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD[19]~74_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(19));

-- Location: LCCOMB_X113_Y33_N24
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (BCD(18) & (!BCD(19) & (\BCD[16]~2_combout\ & !BCD(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(18),
	datab => BCD(19),
	datac => \BCD[16]~2_combout\,
	datad => BCD(17),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X113_Y33_N2
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = \BCD[16]~2_combout\ $ (BCD(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD[16]~2_combout\,
	datad => BCD(17),
	combout => \Add7~0_combout\);

-- Location: LCCOMB_X114_Y35_N24
\Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (!BCD(19) & (!BCD(18) & (!\BCD[16]~2_combout\ & !BCD(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(19),
	datab => BCD(18),
	datac => \BCD[16]~2_combout\,
	datad => BCD(17),
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X113_Y33_N18
\BCD[17]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[17]~64_combout\ = (\mode~input_o\ & (!\Equal5~0_combout\ & (\Add7~0_combout\))) # (!\mode~input_o\ & (((!\Add7~0_combout\ & !\Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \Equal5~0_combout\,
	datac => \Add7~0_combout\,
	datad => \Equal11~0_combout\,
	combout => \BCD[17]~64_combout\);

-- Location: LCCOMB_X113_Y33_N16
\BCD[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[17]~68_combout\ = (\BCD[17]~67_combout\ & (\BCD[17]~64_combout\)) # (!\BCD[17]~67_combout\ & ((BCD(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BCD[17]~64_combout\,
	datac => BCD(17),
	datad => \BCD[17]~67_combout\,
	combout => \BCD[17]~68_combout\);

-- Location: FF_X113_Y33_N17
\BCD[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD[17]~68_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(17));

-- Location: LCCOMB_X113_Y33_N30
\Add7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~1_combout\ = BCD(18) $ (((BCD(17)) # (\BCD[16]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(18),
	datab => BCD(17),
	datac => \BCD[16]~2_combout\,
	combout => \Add7~1_combout\);

-- Location: LCCOMB_X113_Y33_N12
\BCD[18]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[18]~69_combout\ = (!\Add7~1_combout\ & (!\mode~input_o\ & !\Equal11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~1_combout\,
	datab => \mode~input_o\,
	datad => \Equal11~0_combout\,
	combout => \BCD[18]~69_combout\);

-- Location: LCCOMB_X113_Y33_N26
\BCD[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[18]~70_combout\ = (BCD(18) & (((BCD(19) & !BCD(17))) # (!\BCD[16]~2_combout\))) # (!BCD(18) & (((\BCD[16]~2_combout\ & BCD(17)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(18),
	datab => BCD(19),
	datac => \BCD[16]~2_combout\,
	datad => BCD(17),
	combout => \BCD[18]~70_combout\);

-- Location: LCCOMB_X113_Y33_N20
\BCD[18]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[18]~71_combout\ = (\mode~input_o\ & ((\BCD[18]~70_combout\) # ((\Equal5~0_combout\ & \Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[18]~70_combout\,
	datab => \Equal5~0_combout\,
	datac => \Equal0~6_combout\,
	datad => \mode~input_o\,
	combout => \BCD[18]~71_combout\);

-- Location: LCCOMB_X113_Y33_N10
\BCD[18]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[18]~72_combout\ = (\BCD[17]~67_combout\ & ((\BCD[18]~69_combout\) # ((\BCD[18]~71_combout\)))) # (!\BCD[17]~67_combout\ & (((BCD(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[18]~69_combout\,
	datab => \BCD[18]~71_combout\,
	datac => BCD(18),
	datad => \BCD[17]~67_combout\,
	combout => \BCD[18]~72_combout\);

-- Location: FF_X113_Y33_N11
\BCD[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD[18]~72_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(18));

-- Location: LCCOMB_X112_Y35_N20
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\BCD[16]~2_combout\ & (BCD(15) & (BCD(18) & BCD(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[16]~2_combout\,
	datab => BCD(15),
	datac => BCD(18),
	datad => BCD(12),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X113_Y35_N8
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (BCD(7) & (BCD(0) & (BCD(3) & BCD(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(7),
	datab => BCD(0),
	datac => BCD(3),
	datad => BCD(4),
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X113_Y35_N26
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!BCD(14) & (!BCD(13) & (!BCD(19) & !BCD(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(14),
	datab => BCD(13),
	datac => BCD(19),
	datad => BCD(17),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X113_Y35_N24
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!BCD(1) & (!BCD(5) & (!BCD(6) & !BCD(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(1),
	datab => BCD(5),
	datac => BCD(6),
	datad => BCD(2),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X113_Y35_N28
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!BCD(9) & (!BCD(10) & (\Equal0~1_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(9),
	datab => BCD(10),
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X113_Y35_N14
\BCD[16]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[16]~32_combout\ = (BCD(11) & (BCD(8) & (\Equal0~8_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(11),
	datab => BCD(8),
	datac => \Equal0~8_combout\,
	datad => \Equal0~2_combout\,
	combout => \BCD[16]~32_combout\);

-- Location: LCCOMB_X112_Y35_N26
\BCD[16]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[16]~33_combout\ = (\mode~input_o\ & (((\Equal0~7_combout\ & \BCD[16]~32_combout\)) # (!\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal0~7_combout\,
	datac => \BCD[16]~32_combout\,
	datad => \mode~input_o\,
	combout => \BCD[16]~33_combout\);

-- Location: LCCOMB_X112_Y35_N4
\BCD[16]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[16]~34_combout\ = (\count_enable~q\ & ((\BCD[16]~33_combout\) # ((\Equal7~0_combout\ & \BCD~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \count_enable~q\,
	datab => \Equal7~0_combout\,
	datac => \BCD~17_combout\,
	datad => \BCD[16]~33_combout\,
	combout => \BCD[16]~34_combout\);

-- Location: LCCOMB_X113_Y35_N18
\BCD[16]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[16]~77_combout\ = (!\Equal10~0_combout\ & (!\Equal9~0_combout\ & !\Equal8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datac => \Equal9~0_combout\,
	datad => \Equal8~0_combout\,
	combout => \BCD[16]~77_combout\);

-- Location: LCCOMB_X113_Y35_N4
\BCD[16]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[16]~78_combout\ = (\Equal6~3_combout\) # ((\BCD[16]~77_combout\ & (!\BCD[16]~2_combout\ & !\Equal11~0_combout\)) # (!\BCD[16]~77_combout\ & (\BCD[16]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~3_combout\,
	datab => \BCD[16]~77_combout\,
	datac => \BCD[16]~2_combout\,
	datad => \Equal11~0_combout\,
	combout => \BCD[16]~78_combout\);

-- Location: LCCOMB_X112_Y35_N30
\BCD[16]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[16]~75_combout\ = \BCD[16]~2_combout\ $ (((!\Equal2~0_combout\ & (!\Equal3~0_combout\ & !\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[16]~2_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal3~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \BCD[16]~75_combout\);

-- Location: LCCOMB_X112_Y35_N8
\BCD[16]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[16]~76_combout\ = (!\Equal7~0_combout\ & ((\BCD[16]~75_combout\) # ((\Equal0~6_combout\) # (\Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[16]~75_combout\,
	datab => \Equal0~6_combout\,
	datac => \Equal7~0_combout\,
	datad => \Equal1~0_combout\,
	combout => \BCD[16]~76_combout\);

-- Location: LCCOMB_X112_Y35_N22
\BCD[16]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[16]~79_combout\ = (\BCD[16]~76_combout\) # ((\BCD[16]~78_combout\ & \Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[16]~78_combout\,
	datac => \Equal7~0_combout\,
	datad => \BCD[16]~76_combout\,
	combout => \BCD[16]~79_combout\);

-- Location: LCCOMB_X112_Y35_N16
\BCD[16]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[16]~3_combout\ = \BCD[16]~1_combout\ $ (((\BCD[16]~34_combout\ & ((\BCD[16]~79_combout\))) # (!\BCD[16]~34_combout\ & (\BCD[16]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[16]~1_combout\,
	datab => \BCD[16]~2_combout\,
	datac => \BCD[16]~34_combout\,
	datad => \BCD[16]~79_combout\,
	combout => \BCD[16]~3_combout\);

-- Location: FF_X112_Y35_N17
\BCD[16]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD[16]~3_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BCD[16]~_emulated_q\);

-- Location: LCCOMB_X114_Y35_N22
\BCD[16]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[16]~2_combout\ = (\reset~input_o\ & ((\BCD[16]~1_combout\ $ (\BCD[16]~_emulated_q\)))) # (!\reset~input_o\ & (!\mode~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \BCD[16]~1_combout\,
	datac => \BCD[16]~_emulated_q\,
	datad => \reset~input_o\,
	combout => \BCD[16]~2_combout\);

-- Location: LCCOMB_X113_Y35_N6
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (BCD(18) & (BCD(15) & (BCD(3) & BCD(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(18),
	datab => BCD(15),
	datac => BCD(3),
	datad => BCD(0),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X113_Y34_N10
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (BCD(11) & (BCD(4) & (BCD(8) & BCD(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(11),
	datab => BCD(4),
	datac => BCD(8),
	datad => BCD(7),
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X113_Y34_N8
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (BCD(12) & \Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => BCD(12),
	datad => \Equal0~4_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X114_Y35_N4
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\BCD[16]~2_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[16]~2_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~5_combout\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X114_Y34_N6
\BCD[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[3]~12_combout\ = (BCD(0) & ((BCD(2) & (BCD(1) $ (BCD(3)))) # (!BCD(2) & (BCD(1) & BCD(3))))) # (!BCD(0) & (((BCD(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(0),
	datab => BCD(2),
	datac => BCD(1),
	datad => BCD(3),
	combout => \BCD[3]~12_combout\);

-- Location: LCCOMB_X114_Y34_N4
\BCD[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[3]~13_combout\ = (\mode~input_o\ & ((\BCD[3]~12_combout\) # ((!\Equal1~0_combout\ & \Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \mode~input_o\,
	datac => \Equal0~6_combout\,
	datad => \BCD[3]~12_combout\,
	combout => \BCD[3]~13_combout\);

-- Location: LCCOMB_X114_Y34_N8
\BCD[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[3]~14_combout\ = (\BCD[3]~13_combout\) # ((!\mode~input_o\ & (\Add11~1_combout\ $ (!BCD(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~1_combout\,
	datab => BCD(3),
	datac => \mode~input_o\,
	datad => \BCD[3]~13_combout\,
	combout => \BCD[3]~14_combout\);

-- Location: LCCOMB_X114_Y34_N0
\BCD[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[3]~15_combout\ = (\BCD[1]~6_combout\ & ((\BCD[3]~14_combout\) # ((!\count_enable~q\ & BCD(3))))) # (!\BCD[1]~6_combout\ & (!\count_enable~q\ & (BCD(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[1]~6_combout\,
	datab => \count_enable~q\,
	datac => BCD(3),
	datad => \BCD[3]~14_combout\,
	combout => \BCD[3]~15_combout\);

-- Location: FF_X114_Y34_N1
\BCD[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD[3]~15_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(3));

-- Location: LCCOMB_X113_Y31_N12
\Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (!BCD(1) & (!BCD(2) & (!BCD(3) & !BCD(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(1),
	datab => BCD(2),
	datac => BCD(3),
	datad => BCD(0),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X113_Y31_N18
\Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = BCD(1) $ (BCD(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => BCD(1),
	datad => BCD(0),
	combout => \Add11~0_combout\);

-- Location: LCCOMB_X113_Y31_N2
\BCD[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[1]~7_combout\ = (\Add11~0_combout\ & (((\mode~input_o\ & \Equal1~0_combout\)))) # (!\Add11~0_combout\ & (!\Equal7~0_combout\ & (!\mode~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Add11~0_combout\,
	datac => \mode~input_o\,
	datad => \Equal1~0_combout\,
	combout => \BCD[1]~7_combout\);

-- Location: LCCOMB_X114_Y31_N20
\BCD[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[1]~8_combout\ = (\BCD[1]~6_combout\ & ((\BCD[1]~7_combout\) # ((!\count_enable~q\ & BCD(1))))) # (!\BCD[1]~6_combout\ & (!\count_enable~q\ & (BCD(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[1]~6_combout\,
	datab => \count_enable~q\,
	datac => BCD(1),
	datad => \BCD[1]~7_combout\,
	combout => \BCD[1]~8_combout\);

-- Location: FF_X114_Y31_N21
\BCD[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD[1]~8_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(1));

-- Location: LCCOMB_X113_Y31_N24
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (BCD(1)) # ((BCD(2)) # ((!BCD(0)) # (!BCD(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(1),
	datab => BCD(2),
	datac => BCD(3),
	datad => BCD(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X112_Y34_N22
\BCD[5]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[5]~20_combout\ = (\count_enable~q\ & ((!\Equal1~0_combout\) # (!\mode~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \count_enable~q\,
	datad => \Equal1~0_combout\,
	combout => \BCD[5]~20_combout\);

-- Location: LCCOMB_X112_Y34_N28
\BCD[5]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[5]~21_combout\ = (\BCD[5]~20_combout\ & ((\mode~input_o\) # ((\Equal7~0_combout\ & !\Equal6~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[5]~20_combout\,
	datab => \mode~input_o\,
	datac => \Equal7~0_combout\,
	datad => \Equal6~3_combout\,
	combout => \BCD[5]~21_combout\);

-- Location: LCCOMB_X113_Y34_N28
\Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = BCD(5) $ (BCD(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => BCD(5),
	datad => BCD(4),
	combout => \Add10~0_combout\);

-- Location: LCCOMB_X113_Y34_N26
\BCD[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[5]~19_combout\ = (\Add10~0_combout\ & (\Equal2~0_combout\ & ((\mode~input_o\)))) # (!\Add10~0_combout\ & (((\Equal8~0_combout\ & !\mode~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Add10~0_combout\,
	datac => \Equal8~0_combout\,
	datad => \mode~input_o\,
	combout => \BCD[5]~19_combout\);

-- Location: LCCOMB_X112_Y34_N18
\BCD[5]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[5]~22_combout\ = (\BCD[5]~21_combout\ & ((\BCD[5]~19_combout\))) # (!\BCD[5]~21_combout\ & (BCD(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[5]~21_combout\,
	datac => BCD(5),
	datad => \BCD[5]~19_combout\,
	combout => \BCD[5]~22_combout\);

-- Location: FF_X112_Y34_N19
\BCD[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD[5]~22_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(5));

-- Location: LCCOMB_X112_Y34_N2
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (BCD(5)) # (((BCD(6)) # (!BCD(7))) # (!BCD(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(5),
	datab => BCD(4),
	datac => BCD(7),
	datad => BCD(6),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X114_Y35_N20
\BCD[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[9]~39_combout\ = (\BCD[9]~38_combout\) # ((\mode~input_o\ & (!\Equal2~0_combout\ & !\Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \Equal2~0_combout\,
	datac => \BCD[9]~38_combout\,
	datad => \Equal1~0_combout\,
	combout => \BCD[9]~39_combout\);

-- Location: LCCOMB_X113_Y34_N16
\BCD[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[11]~45_combout\ = (\mode~input_o\ & (BCD(8) & (BCD(9) & BCD(10)))) # (!\mode~input_o\ & ((BCD(8)) # ((BCD(9)) # (BCD(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => BCD(8),
	datac => BCD(9),
	datad => BCD(10),
	combout => \BCD[11]~45_combout\);

-- Location: LCCOMB_X113_Y34_N14
\BCD[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[11]~46_combout\ = (\mode~input_o\ & ((\Equal0~6_combout\) # (\BCD[11]~45_combout\ $ (BCD(11))))) # (!\mode~input_o\ & (((\BCD[11]~45_combout\ & BCD(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~6_combout\,
	datab => \BCD[11]~45_combout\,
	datac => BCD(11),
	datad => \mode~input_o\,
	combout => \BCD[11]~46_combout\);

-- Location: LCCOMB_X113_Y34_N30
\BCD[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD[11]~47_combout\ = (\BCD[9]~39_combout\ & ((\count_enable~q\ & (\BCD[11]~46_combout\)) # (!\count_enable~q\ & ((BCD(11)))))) # (!\BCD[9]~39_combout\ & (((BCD(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[9]~39_combout\,
	datab => \BCD[11]~46_combout\,
	datac => BCD(11),
	datad => \count_enable~q\,
	combout => \BCD[11]~47_combout\);

-- Location: FF_X113_Y34_N31
\BCD[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD[11]~47_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(11));

-- Location: LCCOMB_X113_Y34_N2
\Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!BCD(11) & (!BCD(4) & (!BCD(8) & !BCD(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(11),
	datab => BCD(4),
	datac => BCD(8),
	datad => BCD(7),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X114_Y35_N2
\Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~1_combout\ = (!BCD(15) & (!BCD(0) & (!BCD(18) & !BCD(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(15),
	datab => BCD(0),
	datac => BCD(18),
	datad => BCD(3),
	combout => \Equal6~1_combout\);

-- Location: LCCOMB_X114_Y35_N8
\Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~2_combout\ = (!BCD(12) & \Equal6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(12),
	datad => \Equal6~1_combout\,
	combout => \Equal6~2_combout\);

-- Location: LCCOMB_X114_Y35_N30
\Equal6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal6~3_combout\ = (\Equal6~0_combout\ & (\Equal6~2_combout\ & (!\BCD[16]~2_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \Equal6~2_combout\,
	datac => \BCD[16]~2_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal6~3_combout\);

-- Location: LCCOMB_X114_Y35_N28
\BCD~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \BCD~5_combout\ = (\mode~input_o\ & (((\Equal0~6_combout\) # (!BCD(0))))) # (!\mode~input_o\ & (!\Equal6~3_combout\ & (!BCD(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode~input_o\,
	datab => \Equal6~3_combout\,
	datac => BCD(0),
	datad => \Equal0~6_combout\,
	combout => \BCD~5_combout\);

-- Location: FF_X114_Y35_N29
\BCD[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \BCD~5_combout\,
	clrn => \reset~input_o\,
	ena => \count_enable~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BCD(0));

-- Location: LCCOMB_X114_Y30_N0
\WideOr12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr12~0_combout\ = (BCD(1) & (((BCD(3))))) # (!BCD(1) & (BCD(2) $ (((BCD(0) & !BCD(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(0),
	datab => BCD(2),
	datac => BCD(1),
	datad => BCD(3),
	combout => \WideOr12~0_combout\);

-- Location: LCCOMB_X114_Y30_N2
\WideOr11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr11~0_combout\ = (BCD(2) & ((BCD(3)) # (BCD(0) $ (BCD(1))))) # (!BCD(2) & (((BCD(1) & BCD(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(0),
	datab => BCD(2),
	datac => BCD(1),
	datad => BCD(3),
	combout => \WideOr11~0_combout\);

-- Location: LCCOMB_X114_Y30_N28
\WideOr10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr10~0_combout\ = (BCD(2) & (((BCD(3))))) # (!BCD(2) & (BCD(1) & ((BCD(3)) # (!BCD(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(0),
	datab => BCD(2),
	datac => BCD(1),
	datad => BCD(3),
	combout => \WideOr10~0_combout\);

-- Location: LCCOMB_X114_Y30_N10
\WideOr9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr9~0_combout\ = (BCD(0) & ((BCD(3)) # (BCD(2) $ (!BCD(1))))) # (!BCD(0) & ((BCD(1) & ((BCD(3)))) # (!BCD(1) & (BCD(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(0),
	datab => BCD(2),
	datac => BCD(1),
	datad => BCD(3),
	combout => \WideOr9~0_combout\);

-- Location: LCCOMB_X114_Y30_N20
\WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (BCD(0)) # ((BCD(1) & ((BCD(3)))) # (!BCD(1) & (BCD(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(0),
	datab => BCD(2),
	datac => BCD(1),
	datad => BCD(3),
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X114_Y30_N22
\WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr7~0_combout\ = (BCD(0) & ((BCD(1)) # (BCD(2) $ (!BCD(3))))) # (!BCD(0) & ((BCD(2) & ((BCD(3)))) # (!BCD(2) & (BCD(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(0),
	datab => BCD(2),
	datac => BCD(1),
	datad => BCD(3),
	combout => \WideOr7~0_combout\);

-- Location: LCCOMB_X114_Y30_N12
\WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (BCD(2) & (!BCD(3) & ((!BCD(1)) # (!BCD(0))))) # (!BCD(2) & ((BCD(1) $ (BCD(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(0),
	datab => BCD(2),
	datac => BCD(1),
	datad => BCD(3),
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X111_Y33_N0
\WideOr20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr20~0_combout\ = (BCD(5) & (((BCD(7))))) # (!BCD(5) & (BCD(6) $ (((!BCD(7) & BCD(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(5),
	datab => BCD(6),
	datac => BCD(7),
	datad => BCD(4),
	combout => \WideOr20~0_combout\);

-- Location: LCCOMB_X111_Y33_N6
\WideOr19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr19~0_combout\ = (BCD(6) & ((BCD(7)) # (BCD(5) $ (BCD(4))))) # (!BCD(6) & (BCD(5) & (BCD(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(5),
	datab => BCD(6),
	datac => BCD(7),
	datad => BCD(4),
	combout => \WideOr19~0_combout\);

-- Location: LCCOMB_X111_Y33_N4
\WideOr18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr18~0_combout\ = (BCD(6) & (((BCD(7))))) # (!BCD(6) & (BCD(5) & ((BCD(7)) # (!BCD(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(5),
	datab => BCD(6),
	datac => BCD(7),
	datad => BCD(4),
	combout => \WideOr18~0_combout\);

-- Location: LCCOMB_X111_Y33_N10
\WideOr17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr17~0_combout\ = (BCD(6) & ((BCD(7)) # (BCD(5) $ (!BCD(4))))) # (!BCD(6) & ((BCD(5) & (BCD(7))) # (!BCD(5) & ((BCD(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(5),
	datab => BCD(6),
	datac => BCD(7),
	datad => BCD(4),
	combout => \WideOr17~0_combout\);

-- Location: LCCOMB_X113_Y34_N18
\WideOr16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr16~0_combout\ = (BCD(4)) # ((BCD(5) & (BCD(7))) # (!BCD(5) & ((BCD(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(7),
	datab => BCD(4),
	datac => BCD(6),
	datad => BCD(5),
	combout => \WideOr16~0_combout\);

-- Location: LCCOMB_X111_Y33_N20
\WideOr15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr15~0_combout\ = (BCD(6) & ((BCD(7)) # ((BCD(5) & BCD(4))))) # (!BCD(6) & ((BCD(5)) # ((!BCD(7) & BCD(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(5),
	datab => BCD(6),
	datac => BCD(7),
	datad => BCD(4),
	combout => \WideOr15~0_combout\);

-- Location: LCCOMB_X111_Y33_N14
\WideOr14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr14~0_combout\ = (BCD(5) & (!BCD(7) & ((!BCD(4)) # (!BCD(6))))) # (!BCD(5) & (BCD(6) $ ((BCD(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(5),
	datab => BCD(6),
	datac => BCD(7),
	datad => BCD(4),
	combout => \WideOr14~0_combout\);

-- Location: LCCOMB_X113_Y34_N12
\WideOr13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr13~0_combout\ = (BCD(7) & (((BCD(6)) # (BCD(5))))) # (!BCD(7) & (BCD(4) & (!BCD(6) & !BCD(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(7),
	datab => BCD(4),
	datac => BCD(6),
	datad => BCD(5),
	combout => \WideOr13~0_combout\);

-- Location: LCCOMB_X113_Y32_N0
\WideOr27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr27~0_combout\ = (BCD(9) & (((BCD(11))))) # (!BCD(9) & (BCD(10) $ (((BCD(8) & !BCD(11))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(9),
	datab => BCD(8),
	datac => BCD(11),
	datad => BCD(10),
	combout => \WideOr27~0_combout\);

-- Location: LCCOMB_X113_Y32_N10
\WideOr26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr26~0_combout\ = (BCD(11) & ((BCD(9)) # ((BCD(10))))) # (!BCD(11) & (BCD(10) & (BCD(9) $ (BCD(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(9),
	datab => BCD(8),
	datac => BCD(11),
	datad => BCD(10),
	combout => \WideOr26~0_combout\);

-- Location: LCCOMB_X112_Y32_N16
\WideOr25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr25~0_combout\ = (BCD(10) & (((BCD(11))))) # (!BCD(10) & (BCD(9) & ((BCD(11)) # (!BCD(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(8),
	datab => BCD(10),
	datac => BCD(9),
	datad => BCD(11),
	combout => \WideOr25~0_combout\);

-- Location: LCCOMB_X112_Y32_N14
\WideOr24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr24~0_combout\ = (BCD(8) & ((BCD(11)) # (BCD(10) $ (!BCD(9))))) # (!BCD(8) & ((BCD(9) & ((BCD(11)))) # (!BCD(9) & (BCD(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(8),
	datab => BCD(10),
	datac => BCD(9),
	datad => BCD(11),
	combout => \WideOr24~0_combout\);

-- Location: LCCOMB_X112_Y32_N4
\WideOr23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr23~0_combout\ = (BCD(8)) # ((BCD(9) & ((BCD(11)))) # (!BCD(9) & (BCD(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(8),
	datab => BCD(10),
	datac => BCD(9),
	datad => BCD(11),
	combout => \WideOr23~0_combout\);

-- Location: LCCOMB_X112_Y32_N22
\WideOr22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr22~0_combout\ = (BCD(8) & ((BCD(9)) # (BCD(10) $ (!BCD(11))))) # (!BCD(8) & ((BCD(10) & ((BCD(11)))) # (!BCD(10) & (BCD(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(8),
	datab => BCD(10),
	datac => BCD(9),
	datad => BCD(11),
	combout => \WideOr22~0_combout\);

-- Location: LCCOMB_X112_Y32_N12
\WideOr21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr21~0_combout\ = (BCD(10) & (!BCD(11) & ((!BCD(9)) # (!BCD(8))))) # (!BCD(10) & ((BCD(9) $ (BCD(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(8),
	datab => BCD(10),
	datac => BCD(9),
	datad => BCD(11),
	combout => \WideOr21~0_combout\);

-- Location: LCCOMB_X113_Y36_N28
\WideOr34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr34~0_combout\ = (BCD(13) & (BCD(15))) # (!BCD(13) & (BCD(14) $ (((!BCD(15) & BCD(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(13),
	datab => BCD(15),
	datac => BCD(12),
	datad => BCD(14),
	combout => \WideOr34~0_combout\);

-- Location: LCCOMB_X113_Y36_N18
\WideOr33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr33~0_combout\ = (BCD(15) & ((BCD(13)) # ((BCD(14))))) # (!BCD(15) & (BCD(14) & (BCD(13) $ (BCD(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(13),
	datab => BCD(15),
	datac => BCD(12),
	datad => BCD(14),
	combout => \WideOr33~0_combout\);

-- Location: LCCOMB_X113_Y36_N12
\WideOr32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr32~0_combout\ = (BCD(14) & (((BCD(15))))) # (!BCD(14) & (BCD(13) & ((BCD(15)) # (!BCD(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(13),
	datab => BCD(15),
	datac => BCD(12),
	datad => BCD(14),
	combout => \WideOr32~0_combout\);

-- Location: LCCOMB_X111_Y36_N8
\WideOr31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr31~0_combout\ = (BCD(14) & ((BCD(15)) # (BCD(13) $ (!BCD(12))))) # (!BCD(14) & ((BCD(13) & ((BCD(15)))) # (!BCD(13) & (BCD(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(14),
	datab => BCD(13),
	datac => BCD(12),
	datad => BCD(15),
	combout => \WideOr31~0_combout\);

-- Location: LCCOMB_X111_Y36_N30
\WideOr30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr30~0_combout\ = (BCD(12)) # ((BCD(13) & ((BCD(15)))) # (!BCD(13) & (BCD(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(14),
	datab => BCD(13),
	datac => BCD(12),
	datad => BCD(15),
	combout => \WideOr30~0_combout\);

-- Location: LCCOMB_X111_Y36_N20
\WideOr29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr29~0_combout\ = (BCD(14) & ((BCD(15)) # ((BCD(13) & BCD(12))))) # (!BCD(14) & ((BCD(13)) # ((BCD(12) & !BCD(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(14),
	datab => BCD(13),
	datac => BCD(12),
	datad => BCD(15),
	combout => \WideOr29~0_combout\);

-- Location: LCCOMB_X113_Y36_N26
\WideOr28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr28~0_combout\ = (BCD(13) & (!BCD(15) & ((!BCD(14)) # (!BCD(12))))) # (!BCD(13) & (BCD(15) $ (((BCD(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(13),
	datab => BCD(15),
	datac => BCD(12),
	datad => BCD(14),
	combout => \WideOr28~0_combout\);

-- Location: LCCOMB_X111_Y33_N12
\WideOr41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr41~0_combout\ = (BCD(17) & (BCD(19))) # (!BCD(17) & (BCD(18) $ (((!BCD(19) & \BCD[16]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(17),
	datab => BCD(19),
	datac => BCD(18),
	datad => \BCD[16]~2_combout\,
	combout => \WideOr41~0_combout\);

-- Location: LCCOMB_X111_Y33_N26
\WideOr40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr40~0_combout\ = (BCD(19) & ((BCD(17)) # ((BCD(18))))) # (!BCD(19) & (BCD(18) & (BCD(17) $ (\BCD[16]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(17),
	datab => BCD(19),
	datac => BCD(18),
	datad => \BCD[16]~2_combout\,
	combout => \WideOr40~0_combout\);

-- Location: LCCOMB_X111_Y33_N16
\WideOr39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr39~0_combout\ = (BCD(18) & (((BCD(19))))) # (!BCD(18) & (BCD(17) & ((BCD(19)) # (!\BCD[16]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(17),
	datab => BCD(19),
	datac => BCD(18),
	datad => \BCD[16]~2_combout\,
	combout => \WideOr39~0_combout\);

-- Location: LCCOMB_X111_Y33_N30
\WideOr38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr38~0_combout\ = (BCD(18) & ((BCD(19)) # (BCD(17) $ (!\BCD[16]~2_combout\)))) # (!BCD(18) & ((BCD(17) & (BCD(19))) # (!BCD(17) & ((\BCD[16]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(17),
	datab => BCD(19),
	datac => BCD(18),
	datad => \BCD[16]~2_combout\,
	combout => \WideOr38~0_combout\);

-- Location: LCCOMB_X111_Y33_N8
\WideOr37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr37~0_combout\ = (\BCD[16]~2_combout\) # ((BCD(17) & (BCD(19))) # (!BCD(17) & ((BCD(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(17),
	datab => BCD(19),
	datac => BCD(18),
	datad => \BCD[16]~2_combout\,
	combout => \WideOr37~0_combout\);

-- Location: LCCOMB_X111_Y33_N22
\WideOr36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr36~0_combout\ = (BCD(18) & ((BCD(19)) # ((BCD(17) & \BCD[16]~2_combout\)))) # (!BCD(18) & ((BCD(17)) # ((!BCD(19) & \BCD[16]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(17),
	datab => BCD(19),
	datac => BCD(18),
	datad => \BCD[16]~2_combout\,
	combout => \WideOr36~0_combout\);

-- Location: LCCOMB_X111_Y33_N28
\WideOr35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr35~0_combout\ = (BCD(17) & (!BCD(19) & ((!\BCD[16]~2_combout\) # (!BCD(18))))) # (!BCD(17) & (BCD(19) $ ((BCD(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(17),
	datab => BCD(19),
	datac => BCD(18),
	datad => \BCD[16]~2_combout\,
	combout => \WideOr35~0_combout\);

-- Location: IOIBUF_X115_Y40_N8
\Btn_split~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Btn_split,
	o => \Btn_split~input_o\);

-- Location: LCCOMB_X114_Y34_N12
\debounce_counter_split[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[0]~20_combout\ = debounce_counter_split(0) $ (VCC)
-- \debounce_counter_split[0]~21\ = CARRY(debounce_counter_split(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_split(0),
	datad => VCC,
	combout => \debounce_counter_split[0]~20_combout\,
	cout => \debounce_counter_split[0]~21\);

-- Location: LCCOMB_X114_Y33_N28
\debounce_counter_split[9]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[9]~60_combout\ = (\Btn_split~input_o\) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \Btn_split~input_o\,
	combout => \debounce_counter_split[9]~60_combout\);

-- Location: LCCOMB_X114_Y33_N6
\debounce_counter_split[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[13]~46_combout\ = (debounce_counter_split(13) & (!\debounce_counter_split[12]~45\)) # (!debounce_counter_split(13) & ((\debounce_counter_split[12]~45\) # (GND)))
-- \debounce_counter_split[13]~47\ = CARRY((!\debounce_counter_split[12]~45\) # (!debounce_counter_split(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_split(13),
	datad => VCC,
	cin => \debounce_counter_split[12]~45\,
	combout => \debounce_counter_split[13]~46_combout\,
	cout => \debounce_counter_split[13]~47\);

-- Location: LCCOMB_X114_Y33_N8
\debounce_counter_split[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[14]~48_combout\ = (debounce_counter_split(14) & (\debounce_counter_split[13]~47\ $ (GND))) # (!debounce_counter_split(14) & (!\debounce_counter_split[13]~47\ & VCC))
-- \debounce_counter_split[14]~49\ = CARRY((debounce_counter_split(14) & !\debounce_counter_split[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_split(14),
	datad => VCC,
	cin => \debounce_counter_split[13]~47\,
	combout => \debounce_counter_split[14]~48_combout\,
	cout => \debounce_counter_split[14]~49\);

-- Location: FF_X114_Y33_N9
\debounce_counter_split[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[14]~48_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(14));

-- Location: LCCOMB_X114_Y33_N10
\debounce_counter_split[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[15]~50_combout\ = (debounce_counter_split(15) & (!\debounce_counter_split[14]~49\)) # (!debounce_counter_split(15) & ((\debounce_counter_split[14]~49\) # (GND)))
-- \debounce_counter_split[15]~51\ = CARRY((!\debounce_counter_split[14]~49\) # (!debounce_counter_split(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_split(15),
	datad => VCC,
	cin => \debounce_counter_split[14]~49\,
	combout => \debounce_counter_split[15]~50_combout\,
	cout => \debounce_counter_split[15]~51\);

-- Location: FF_X114_Y33_N11
\debounce_counter_split[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[15]~50_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(15));

-- Location: LCCOMB_X114_Y33_N12
\debounce_counter_split[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[16]~52_combout\ = (debounce_counter_split(16) & (\debounce_counter_split[15]~51\ $ (GND))) # (!debounce_counter_split(16) & (!\debounce_counter_split[15]~51\ & VCC))
-- \debounce_counter_split[16]~53\ = CARRY((debounce_counter_split(16) & !\debounce_counter_split[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_split(16),
	datad => VCC,
	cin => \debounce_counter_split[15]~51\,
	combout => \debounce_counter_split[16]~52_combout\,
	cout => \debounce_counter_split[16]~53\);

-- Location: FF_X114_Y33_N13
\debounce_counter_split[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[16]~52_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(16));

-- Location: LCCOMB_X114_Y33_N14
\debounce_counter_split[17]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[17]~54_combout\ = (debounce_counter_split(17) & (!\debounce_counter_split[16]~53\)) # (!debounce_counter_split(17) & ((\debounce_counter_split[16]~53\) # (GND)))
-- \debounce_counter_split[17]~55\ = CARRY((!\debounce_counter_split[16]~53\) # (!debounce_counter_split(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_split(17),
	datad => VCC,
	cin => \debounce_counter_split[16]~53\,
	combout => \debounce_counter_split[17]~54_combout\,
	cout => \debounce_counter_split[17]~55\);

-- Location: FF_X114_Y33_N15
\debounce_counter_split[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[17]~54_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(17));

-- Location: LCCOMB_X114_Y33_N16
\debounce_counter_split[18]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[18]~56_combout\ = (debounce_counter_split(18) & (\debounce_counter_split[17]~55\ $ (GND))) # (!debounce_counter_split(18) & (!\debounce_counter_split[17]~55\ & VCC))
-- \debounce_counter_split[18]~57\ = CARRY((debounce_counter_split(18) & !\debounce_counter_split[17]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_split(18),
	datad => VCC,
	cin => \debounce_counter_split[17]~55\,
	combout => \debounce_counter_split[18]~56_combout\,
	cout => \debounce_counter_split[18]~57\);

-- Location: FF_X114_Y33_N17
\debounce_counter_split[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[18]~56_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(18));

-- Location: LCCOMB_X114_Y33_N18
\debounce_counter_split[19]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[19]~58_combout\ = \debounce_counter_split[18]~57\ $ (debounce_counter_split(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => debounce_counter_split(19),
	cin => \debounce_counter_split[18]~57\,
	combout => \debounce_counter_split[19]~58_combout\);

-- Location: FF_X114_Y33_N19
\debounce_counter_split[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[19]~58_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(19));

-- Location: LCCOMB_X114_Y33_N20
\LessThan3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = (((!debounce_counter_split(15)) # (!debounce_counter_split(17))) # (!debounce_counter_split(18))) # (!debounce_counter_split(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_split(16),
	datab => debounce_counter_split(18),
	datac => debounce_counter_split(17),
	datad => debounce_counter_split(15),
	combout => \LessThan3~3_combout\);

-- Location: LCCOMB_X114_Y33_N30
\debounce_counter_split[9]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[9]~61_combout\ = (\debounce_counter_split[9]~60_combout\) # ((!debounce_counter_split(19) & ((\LessThan3~3_combout\) # (\LessThan3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_split(19),
	datab => \LessThan3~3_combout\,
	datac => \LessThan3~2_combout\,
	datad => \debounce_counter_split[9]~60_combout\,
	combout => \debounce_counter_split[9]~61_combout\);

-- Location: FF_X114_Y34_N13
\debounce_counter_split[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[0]~20_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(0));

-- Location: LCCOMB_X114_Y34_N14
\debounce_counter_split[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[1]~22_combout\ = (debounce_counter_split(1) & (!\debounce_counter_split[0]~21\)) # (!debounce_counter_split(1) & ((\debounce_counter_split[0]~21\) # (GND)))
-- \debounce_counter_split[1]~23\ = CARRY((!\debounce_counter_split[0]~21\) # (!debounce_counter_split(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_split(1),
	datad => VCC,
	cin => \debounce_counter_split[0]~21\,
	combout => \debounce_counter_split[1]~22_combout\,
	cout => \debounce_counter_split[1]~23\);

-- Location: FF_X114_Y34_N15
\debounce_counter_split[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[1]~22_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(1));

-- Location: LCCOMB_X114_Y34_N16
\debounce_counter_split[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[2]~24_combout\ = (debounce_counter_split(2) & (\debounce_counter_split[1]~23\ $ (GND))) # (!debounce_counter_split(2) & (!\debounce_counter_split[1]~23\ & VCC))
-- \debounce_counter_split[2]~25\ = CARRY((debounce_counter_split(2) & !\debounce_counter_split[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_split(2),
	datad => VCC,
	cin => \debounce_counter_split[1]~23\,
	combout => \debounce_counter_split[2]~24_combout\,
	cout => \debounce_counter_split[2]~25\);

-- Location: FF_X114_Y34_N17
\debounce_counter_split[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[2]~24_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(2));

-- Location: LCCOMB_X114_Y34_N18
\debounce_counter_split[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[3]~26_combout\ = (debounce_counter_split(3) & (!\debounce_counter_split[2]~25\)) # (!debounce_counter_split(3) & ((\debounce_counter_split[2]~25\) # (GND)))
-- \debounce_counter_split[3]~27\ = CARRY((!\debounce_counter_split[2]~25\) # (!debounce_counter_split(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_split(3),
	datad => VCC,
	cin => \debounce_counter_split[2]~25\,
	combout => \debounce_counter_split[3]~26_combout\,
	cout => \debounce_counter_split[3]~27\);

-- Location: FF_X114_Y34_N19
\debounce_counter_split[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[3]~26_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(3));

-- Location: LCCOMB_X114_Y34_N20
\debounce_counter_split[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[4]~28_combout\ = (debounce_counter_split(4) & (\debounce_counter_split[3]~27\ $ (GND))) # (!debounce_counter_split(4) & (!\debounce_counter_split[3]~27\ & VCC))
-- \debounce_counter_split[4]~29\ = CARRY((debounce_counter_split(4) & !\debounce_counter_split[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_split(4),
	datad => VCC,
	cin => \debounce_counter_split[3]~27\,
	combout => \debounce_counter_split[4]~28_combout\,
	cout => \debounce_counter_split[4]~29\);

-- Location: FF_X114_Y34_N21
\debounce_counter_split[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[4]~28_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(4));

-- Location: LCCOMB_X114_Y34_N22
\debounce_counter_split[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[5]~30_combout\ = (debounce_counter_split(5) & (!\debounce_counter_split[4]~29\)) # (!debounce_counter_split(5) & ((\debounce_counter_split[4]~29\) # (GND)))
-- \debounce_counter_split[5]~31\ = CARRY((!\debounce_counter_split[4]~29\) # (!debounce_counter_split(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_split(5),
	datad => VCC,
	cin => \debounce_counter_split[4]~29\,
	combout => \debounce_counter_split[5]~30_combout\,
	cout => \debounce_counter_split[5]~31\);

-- Location: FF_X114_Y34_N23
\debounce_counter_split[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[5]~30_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(5));

-- Location: LCCOMB_X114_Y34_N24
\debounce_counter_split[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[6]~32_combout\ = (debounce_counter_split(6) & (\debounce_counter_split[5]~31\ $ (GND))) # (!debounce_counter_split(6) & (!\debounce_counter_split[5]~31\ & VCC))
-- \debounce_counter_split[6]~33\ = CARRY((debounce_counter_split(6) & !\debounce_counter_split[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_split(6),
	datad => VCC,
	cin => \debounce_counter_split[5]~31\,
	combout => \debounce_counter_split[6]~32_combout\,
	cout => \debounce_counter_split[6]~33\);

-- Location: FF_X114_Y34_N25
\debounce_counter_split[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[6]~32_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(6));

-- Location: LCCOMB_X114_Y34_N26
\debounce_counter_split[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[7]~34_combout\ = (debounce_counter_split(7) & (!\debounce_counter_split[6]~33\)) # (!debounce_counter_split(7) & ((\debounce_counter_split[6]~33\) # (GND)))
-- \debounce_counter_split[7]~35\ = CARRY((!\debounce_counter_split[6]~33\) # (!debounce_counter_split(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_split(7),
	datad => VCC,
	cin => \debounce_counter_split[6]~33\,
	combout => \debounce_counter_split[7]~34_combout\,
	cout => \debounce_counter_split[7]~35\);

-- Location: FF_X114_Y34_N27
\debounce_counter_split[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[7]~34_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(7));

-- Location: LCCOMB_X114_Y34_N28
\debounce_counter_split[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[8]~36_combout\ = (debounce_counter_split(8) & (\debounce_counter_split[7]~35\ $ (GND))) # (!debounce_counter_split(8) & (!\debounce_counter_split[7]~35\ & VCC))
-- \debounce_counter_split[8]~37\ = CARRY((debounce_counter_split(8) & !\debounce_counter_split[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_split(8),
	datad => VCC,
	cin => \debounce_counter_split[7]~35\,
	combout => \debounce_counter_split[8]~36_combout\,
	cout => \debounce_counter_split[8]~37\);

-- Location: FF_X114_Y34_N29
\debounce_counter_split[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[8]~36_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(8));

-- Location: LCCOMB_X114_Y34_N30
\debounce_counter_split[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[9]~38_combout\ = (debounce_counter_split(9) & (!\debounce_counter_split[8]~37\)) # (!debounce_counter_split(9) & ((\debounce_counter_split[8]~37\) # (GND)))
-- \debounce_counter_split[9]~39\ = CARRY((!\debounce_counter_split[8]~37\) # (!debounce_counter_split(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_split(9),
	datad => VCC,
	cin => \debounce_counter_split[8]~37\,
	combout => \debounce_counter_split[9]~38_combout\,
	cout => \debounce_counter_split[9]~39\);

-- Location: FF_X114_Y34_N31
\debounce_counter_split[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[9]~38_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(9));

-- Location: LCCOMB_X114_Y33_N0
\debounce_counter_split[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[10]~40_combout\ = (debounce_counter_split(10) & (\debounce_counter_split[9]~39\ $ (GND))) # (!debounce_counter_split(10) & (!\debounce_counter_split[9]~39\ & VCC))
-- \debounce_counter_split[10]~41\ = CARRY((debounce_counter_split(10) & !\debounce_counter_split[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_split(10),
	datad => VCC,
	cin => \debounce_counter_split[9]~39\,
	combout => \debounce_counter_split[10]~40_combout\,
	cout => \debounce_counter_split[10]~41\);

-- Location: FF_X114_Y33_N1
\debounce_counter_split[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[10]~40_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(10));

-- Location: LCCOMB_X114_Y33_N2
\debounce_counter_split[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[11]~42_combout\ = (debounce_counter_split(11) & (!\debounce_counter_split[10]~41\)) # (!debounce_counter_split(11) & ((\debounce_counter_split[10]~41\) # (GND)))
-- \debounce_counter_split[11]~43\ = CARRY((!\debounce_counter_split[10]~41\) # (!debounce_counter_split(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_split(11),
	datad => VCC,
	cin => \debounce_counter_split[10]~41\,
	combout => \debounce_counter_split[11]~42_combout\,
	cout => \debounce_counter_split[11]~43\);

-- Location: FF_X114_Y33_N3
\debounce_counter_split[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[11]~42_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(11));

-- Location: LCCOMB_X114_Y33_N4
\debounce_counter_split[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debounce_counter_split[12]~44_combout\ = (debounce_counter_split(12) & (\debounce_counter_split[11]~43\ $ (GND))) # (!debounce_counter_split(12) & (!\debounce_counter_split[11]~43\ & VCC))
-- \debounce_counter_split[12]~45\ = CARRY((debounce_counter_split(12) & !\debounce_counter_split[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter_split(12),
	datad => VCC,
	cin => \debounce_counter_split[11]~43\,
	combout => \debounce_counter_split[12]~44_combout\,
	cout => \debounce_counter_split[12]~45\);

-- Location: FF_X114_Y33_N5
\debounce_counter_split[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[12]~44_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(12));

-- Location: FF_X114_Y33_N7
\debounce_counter_split[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \debounce_counter_split[13]~46_combout\,
	sclr => \debounce_counter_split[9]~60_combout\,
	ena => \debounce_counter_split[9]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter_split(13));

-- Location: LCCOMB_X114_Y33_N24
\LessThan3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = (!debounce_counter_split(9) & (!debounce_counter_split(11) & (!debounce_counter_split(12) & !debounce_counter_split(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_split(9),
	datab => debounce_counter_split(11),
	datac => debounce_counter_split(12),
	datad => debounce_counter_split(10),
	combout => \LessThan3~1_combout\);

-- Location: LCCOMB_X114_Y34_N2
\LessThan3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ((!debounce_counter_split(7) & (!debounce_counter_split(5) & !debounce_counter_split(6)))) # (!debounce_counter_split(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_split(7),
	datab => debounce_counter_split(8),
	datac => debounce_counter_split(5),
	datad => debounce_counter_split(6),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X114_Y33_N22
\LessThan3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = (!debounce_counter_split(14) & (((\LessThan3~1_combout\ & \LessThan3~0_combout\)) # (!debounce_counter_split(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter_split(13),
	datab => \LessThan3~1_combout\,
	datac => debounce_counter_split(14),
	datad => \LessThan3~0_combout\,
	combout => \LessThan3~2_combout\);

-- Location: LCCOMB_X114_Y33_N26
\Btn_split_stable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Btn_split_stable~0_combout\ = (debounce_counter_split(19)) # ((\Btn_split_stable~q\) # ((!\LessThan3~2_combout\ & !\LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~2_combout\,
	datab => debounce_counter_split(19),
	datac => \Btn_split_stable~q\,
	datad => \LessThan3~3_combout\,
	combout => \Btn_split_stable~0_combout\);

-- Location: LCCOMB_X108_Y34_N24
\Btn_split_stable~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Btn_split_stable~1_combout\ = (!\Btn_split~input_o\ & \Btn_split_stable~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Btn_split~input_o\,
	datad => \Btn_split_stable~0_combout\,
	combout => \Btn_split_stable~1_combout\);

-- Location: FF_X108_Y34_N25
Btn_split_stable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Btn_split_stable~1_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Btn_split_stable~q\);

-- Location: LCCOMB_X107_Y34_N10
\LUT_INDEX[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[0]~6_combout\ = LUT_INDEX(0) $ (VCC)
-- \LUT_INDEX[0]~7\ = CARRY(LUT_INDEX(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_INDEX(0),
	datad => VCC,
	combout => \LUT_INDEX[0]~6_combout\,
	cout => \LUT_INDEX[0]~7\);

-- Location: LCCOMB_X107_Y32_N12
\Cont[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[0]~20_combout\ = Cont(0) $ (VCC)
-- \Cont[0]~21\ = CARRY(Cont(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cont(0),
	datad => VCC,
	combout => \Cont[0]~20_combout\,
	cout => \Cont[0]~21\);

-- Location: LCCOMB_X107_Y32_N6
\Cont[18]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[18]~54_combout\ = (\reset~input_o\) # (!\Equal12~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal12~6_combout\,
	datad => \reset~input_o\,
	combout => \Cont[18]~54_combout\);

-- Location: FF_X107_Y32_N13
\Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[0]~20_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(0));

-- Location: LCCOMB_X107_Y32_N14
\Cont[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[1]~22_combout\ = (Cont(1) & (!\Cont[0]~21\)) # (!Cont(1) & ((\Cont[0]~21\) # (GND)))
-- \Cont[1]~23\ = CARRY((!\Cont[0]~21\) # (!Cont(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(1),
	datad => VCC,
	cin => \Cont[0]~21\,
	combout => \Cont[1]~22_combout\,
	cout => \Cont[1]~23\);

-- Location: FF_X107_Y32_N15
\Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[1]~22_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(1));

-- Location: LCCOMB_X107_Y32_N16
\Cont[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[2]~24_combout\ = (Cont(2) & (\Cont[1]~23\ $ (GND))) # (!Cont(2) & (!\Cont[1]~23\ & VCC))
-- \Cont[2]~25\ = CARRY((Cont(2) & !\Cont[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(2),
	datad => VCC,
	cin => \Cont[1]~23\,
	combout => \Cont[2]~24_combout\,
	cout => \Cont[2]~25\);

-- Location: FF_X107_Y32_N17
\Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[2]~24_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(2));

-- Location: LCCOMB_X107_Y32_N18
\Cont[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[3]~26_combout\ = (Cont(3) & (!\Cont[2]~25\)) # (!Cont(3) & ((\Cont[2]~25\) # (GND)))
-- \Cont[3]~27\ = CARRY((!\Cont[2]~25\) # (!Cont(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(3),
	datad => VCC,
	cin => \Cont[2]~25\,
	combout => \Cont[3]~26_combout\,
	cout => \Cont[3]~27\);

-- Location: FF_X107_Y32_N19
\Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[3]~26_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(3));

-- Location: LCCOMB_X107_Y32_N20
\Cont[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[4]~28_combout\ = (Cont(4) & (\Cont[3]~27\ $ (GND))) # (!Cont(4) & (!\Cont[3]~27\ & VCC))
-- \Cont[4]~29\ = CARRY((Cont(4) & !\Cont[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(4),
	datad => VCC,
	cin => \Cont[3]~27\,
	combout => \Cont[4]~28_combout\,
	cout => \Cont[4]~29\);

-- Location: FF_X107_Y32_N21
\Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[4]~28_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(4));

-- Location: LCCOMB_X107_Y32_N22
\Cont[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[5]~30_combout\ = (Cont(5) & (!\Cont[4]~29\)) # (!Cont(5) & ((\Cont[4]~29\) # (GND)))
-- \Cont[5]~31\ = CARRY((!\Cont[4]~29\) # (!Cont(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(5),
	datad => VCC,
	cin => \Cont[4]~29\,
	combout => \Cont[5]~30_combout\,
	cout => \Cont[5]~31\);

-- Location: FF_X107_Y32_N23
\Cont[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[5]~30_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(5));

-- Location: LCCOMB_X107_Y32_N24
\Cont[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[6]~32_combout\ = (Cont(6) & (\Cont[5]~31\ $ (GND))) # (!Cont(6) & (!\Cont[5]~31\ & VCC))
-- \Cont[6]~33\ = CARRY((Cont(6) & !\Cont[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(6),
	datad => VCC,
	cin => \Cont[5]~31\,
	combout => \Cont[6]~32_combout\,
	cout => \Cont[6]~33\);

-- Location: FF_X107_Y32_N25
\Cont[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[6]~32_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(6));

-- Location: LCCOMB_X107_Y32_N26
\Cont[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[7]~34_combout\ = (Cont(7) & (!\Cont[6]~33\)) # (!Cont(7) & ((\Cont[6]~33\) # (GND)))
-- \Cont[7]~35\ = CARRY((!\Cont[6]~33\) # (!Cont(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(7),
	datad => VCC,
	cin => \Cont[6]~33\,
	combout => \Cont[7]~34_combout\,
	cout => \Cont[7]~35\);

-- Location: FF_X107_Y32_N27
\Cont[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[7]~34_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(7));

-- Location: LCCOMB_X107_Y32_N28
\Cont[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[8]~36_combout\ = (Cont(8) & (\Cont[7]~35\ $ (GND))) # (!Cont(8) & (!\Cont[7]~35\ & VCC))
-- \Cont[8]~37\ = CARRY((Cont(8) & !\Cont[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(8),
	datad => VCC,
	cin => \Cont[7]~35\,
	combout => \Cont[8]~36_combout\,
	cout => \Cont[8]~37\);

-- Location: FF_X107_Y32_N29
\Cont[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[8]~36_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(8));

-- Location: LCCOMB_X107_Y32_N30
\Cont[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[9]~38_combout\ = (Cont(9) & (!\Cont[8]~37\)) # (!Cont(9) & ((\Cont[8]~37\) # (GND)))
-- \Cont[9]~39\ = CARRY((!\Cont[8]~37\) # (!Cont(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(9),
	datad => VCC,
	cin => \Cont[8]~37\,
	combout => \Cont[9]~38_combout\,
	cout => \Cont[9]~39\);

-- Location: FF_X107_Y32_N31
\Cont[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[9]~38_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(9));

-- Location: LCCOMB_X107_Y31_N0
\Cont[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[10]~40_combout\ = (Cont(10) & (\Cont[9]~39\ $ (GND))) # (!Cont(10) & (!\Cont[9]~39\ & VCC))
-- \Cont[10]~41\ = CARRY((Cont(10) & !\Cont[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(10),
	datad => VCC,
	cin => \Cont[9]~39\,
	combout => \Cont[10]~40_combout\,
	cout => \Cont[10]~41\);

-- Location: FF_X107_Y31_N1
\Cont[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[10]~40_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(10));

-- Location: LCCOMB_X107_Y31_N2
\Cont[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[11]~42_combout\ = (Cont(11) & (!\Cont[10]~41\)) # (!Cont(11) & ((\Cont[10]~41\) # (GND)))
-- \Cont[11]~43\ = CARRY((!\Cont[10]~41\) # (!Cont(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(11),
	datad => VCC,
	cin => \Cont[10]~41\,
	combout => \Cont[11]~42_combout\,
	cout => \Cont[11]~43\);

-- Location: FF_X107_Y31_N3
\Cont[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[11]~42_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(11));

-- Location: LCCOMB_X107_Y31_N22
\Equal12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~4_combout\ = (Cont(8) & (Cont(11) & (Cont(9) & Cont(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cont(8),
	datab => Cont(11),
	datac => Cont(9),
	datad => Cont(10),
	combout => \Equal12~4_combout\);

-- Location: LCCOMB_X107_Y31_N4
\Cont[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[12]~44_combout\ = (Cont(12) & (\Cont[11]~43\ $ (GND))) # (!Cont(12) & (!\Cont[11]~43\ & VCC))
-- \Cont[12]~45\ = CARRY((Cont(12) & !\Cont[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(12),
	datad => VCC,
	cin => \Cont[11]~43\,
	combout => \Cont[12]~44_combout\,
	cout => \Cont[12]~45\);

-- Location: FF_X107_Y31_N5
\Cont[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[12]~44_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(12));

-- Location: LCCOMB_X107_Y31_N6
\Cont[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[13]~46_combout\ = (Cont(13) & (!\Cont[12]~45\)) # (!Cont(13) & ((\Cont[12]~45\) # (GND)))
-- \Cont[13]~47\ = CARRY((!\Cont[12]~45\) # (!Cont(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(13),
	datad => VCC,
	cin => \Cont[12]~45\,
	combout => \Cont[13]~46_combout\,
	cout => \Cont[13]~47\);

-- Location: FF_X107_Y31_N7
\Cont[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[13]~46_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(13));

-- Location: LCCOMB_X107_Y31_N8
\Cont[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[14]~48_combout\ = (Cont(14) & (\Cont[13]~47\ $ (GND))) # (!Cont(14) & (!\Cont[13]~47\ & VCC))
-- \Cont[14]~49\ = CARRY((Cont(14) & !\Cont[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(14),
	datad => VCC,
	cin => \Cont[13]~47\,
	combout => \Cont[14]~48_combout\,
	cout => \Cont[14]~49\);

-- Location: FF_X107_Y31_N9
\Cont[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[14]~48_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(14));

-- Location: LCCOMB_X107_Y31_N10
\Cont[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[15]~50_combout\ = (Cont(15) & (!\Cont[14]~49\)) # (!Cont(15) & ((\Cont[14]~49\) # (GND)))
-- \Cont[15]~51\ = CARRY((!\Cont[14]~49\) # (!Cont(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(15),
	datad => VCC,
	cin => \Cont[14]~49\,
	combout => \Cont[15]~50_combout\,
	cout => \Cont[15]~51\);

-- Location: FF_X107_Y31_N11
\Cont[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[15]~50_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(15));

-- Location: LCCOMB_X107_Y31_N12
\Cont[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[16]~52_combout\ = (Cont(16) & (\Cont[15]~51\ $ (GND))) # (!Cont(16) & (!\Cont[15]~51\ & VCC))
-- \Cont[16]~53\ = CARRY((Cont(16) & !\Cont[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => Cont(16),
	datad => VCC,
	cin => \Cont[15]~51\,
	combout => \Cont[16]~52_combout\,
	cout => \Cont[16]~53\);

-- Location: FF_X107_Y31_N13
\Cont[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[16]~52_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(16));

-- Location: LCCOMB_X107_Y31_N14
\Cont[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[17]~55_combout\ = (Cont(17) & (!\Cont[16]~53\)) # (!Cont(17) & ((\Cont[16]~53\) # (GND)))
-- \Cont[17]~56\ = CARRY((!\Cont[16]~53\) # (!Cont(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(17),
	datad => VCC,
	cin => \Cont[16]~53\,
	combout => \Cont[17]~55_combout\,
	cout => \Cont[17]~56\);

-- Location: FF_X107_Y31_N15
\Cont[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[17]~55_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(17));

-- Location: LCCOMB_X107_Y31_N16
\Cont[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[18]~57_combout\ = (Cont(18) & (\Cont[17]~56\ $ (GND))) # (!Cont(18) & (!\Cont[17]~56\ & VCC))
-- \Cont[18]~58\ = CARRY((Cont(18) & !\Cont[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Cont(18),
	datad => VCC,
	cin => \Cont[17]~56\,
	combout => \Cont[18]~57_combout\,
	cout => \Cont[18]~58\);

-- Location: FF_X107_Y31_N17
\Cont[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[18]~57_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(18));

-- Location: LCCOMB_X107_Y31_N18
\Cont[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Cont[19]~59_combout\ = \Cont[18]~58\ $ (Cont(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => Cont(19),
	cin => \Cont[18]~58\,
	combout => \Cont[19]~59_combout\);

-- Location: FF_X107_Y31_N19
\Cont[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Cont[19]~59_combout\,
	sclr => \reset~input_o\,
	ena => \Cont[18]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Cont(19));

-- Location: LCCOMB_X107_Y31_N28
\Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~0_combout\ = (Cont(16) & (Cont(18) & (Cont(17) & Cont(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cont(16),
	datab => Cont(18),
	datac => Cont(17),
	datad => Cont(19),
	combout => \Equal12~0_combout\);

-- Location: LCCOMB_X107_Y32_N8
\Equal12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~1_combout\ = (Cont(1) & Cont(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Cont(1),
	datad => Cont(0),
	combout => \Equal12~1_combout\);

-- Location: LCCOMB_X107_Y32_N10
\Equal12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~2_combout\ = (Cont(5) & (Cont(4) & (Cont(7) & Cont(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cont(5),
	datab => Cont(4),
	datac => Cont(7),
	datad => Cont(6),
	combout => \Equal12~2_combout\);

-- Location: LCCOMB_X107_Y32_N4
\Equal12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~3_combout\ = (Cont(3) & (Cont(2) & (\Equal12~1_combout\ & \Equal12~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cont(3),
	datab => Cont(2),
	datac => \Equal12~1_combout\,
	datad => \Equal12~2_combout\,
	combout => \Equal12~3_combout\);

-- Location: LCCOMB_X107_Y31_N20
\Equal12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~5_combout\ = (Cont(15) & (Cont(14) & (Cont(12) & Cont(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Cont(15),
	datab => Cont(14),
	datac => Cont(12),
	datad => Cont(13),
	combout => \Equal12~5_combout\);

-- Location: LCCOMB_X107_Y31_N26
\Equal12~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal12~6_combout\ = (\Equal12~4_combout\ & (\Equal12~0_combout\ & (\Equal12~3_combout\ & \Equal12~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~4_combout\,
	datab => \Equal12~0_combout\,
	datac => \Equal12~3_combout\,
	datad => \Equal12~5_combout\,
	combout => \Equal12~6_combout\);

-- Location: LCCOMB_X107_Y31_N24
\oRESET~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \oRESET~0_combout\ = (\Equal12~6_combout\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~6_combout\,
	datac => \reset~input_o\,
	combout => \oRESET~0_combout\);

-- Location: FF_X107_Y31_N25
oRESET : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \oRESET~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oRESET~q\);

-- Location: LCCOMB_X108_Y34_N14
\Trigger~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Trigger~0_combout\ = (\Btn_split_stable~q\) # ((\Btn_start_stop_stable~q\) # (!\oRESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Btn_split_stable~q\,
	datac => \Btn_start_stop_stable~q\,
	datad => \oRESET~q\,
	combout => \Trigger~0_combout\);

-- Location: LCCOMB_X108_Y33_N14
\mDLY[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[0]~20_combout\ = mDLY(0) $ (VCC)
-- \mDLY[0]~21\ = CARRY(mDLY(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => mDLY(0),
	datad => VCC,
	combout => \mDLY[0]~20_combout\,
	cout => \mDLY[0]~21\);

-- Location: LCCOMB_X108_Y32_N24
\mDLY[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[13]~57_combout\ = (\Btn_start_stop_stable~q\) # ((\Btn_split_stable~q\) # ((!\LessThan1~5_combout\) # (!\oRESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Btn_start_stop_stable~q\,
	datab => \Btn_split_stable~q\,
	datac => \oRESET~q\,
	datad => \LessThan1~5_combout\,
	combout => \mDLY[13]~57_combout\);

-- Location: LCCOMB_X107_Y34_N18
\LUT_INDEX[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[4]~15_combout\ = (LUT_INDEX(4) & (\LUT_INDEX[3]~14\ $ (GND))) # (!LUT_INDEX(4) & (!\LUT_INDEX[3]~14\ & VCC))
-- \LUT_INDEX[4]~16\ = CARRY((LUT_INDEX(4) & !\LUT_INDEX[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datad => VCC,
	cin => \LUT_INDEX[3]~14\,
	combout => \LUT_INDEX[4]~15_combout\,
	cout => \LUT_INDEX[4]~16\);

-- Location: LCCOMB_X107_Y34_N20
\LUT_INDEX[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[5]~17_combout\ = \LUT_INDEX[4]~16\ $ (LUT_INDEX(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => LUT_INDEX(5),
	cin => \LUT_INDEX[4]~16\,
	combout => \LUT_INDEX[5]~17_combout\);

-- Location: FF_X107_Y34_N21
\LUT_INDEX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_INDEX[5]~17_combout\,
	sclr => \Trigger~0_combout\,
	ena => \LUT_INDEX[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_INDEX(5));

-- Location: LCCOMB_X110_Y34_N12
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ((!LUT_INDEX(0)) # (!LUT_INDEX(1))) # (!LUT_INDEX(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_INDEX(2),
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X110_Y34_N26
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ((!LUT_INDEX(3) & (!LUT_INDEX(4) & \LessThan0~0_combout\))) # (!LUT_INDEX(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(5),
	datac => LUT_INDEX(4),
	datad => \LessThan0~0_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X109_Y34_N8
\mDLY[13]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[13]~24_combout\ = (\Trigger~0_combout\) # ((\mLCD_ST.000010~q\ & \LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Trigger~0_combout\,
	datac => \mLCD_ST.000010~q\,
	datad => \LessThan0~1_combout\,
	combout => \mDLY[13]~24_combout\);

-- Location: FF_X108_Y33_N15
\mDLY[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[0]~20_combout\,
	sclr => \mDLY[13]~57_combout\,
	ena => \mDLY[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(0));

-- Location: LCCOMB_X108_Y33_N16
\mDLY[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[1]~22_combout\ = (mDLY(1) & (!\mDLY[0]~21\)) # (!mDLY(1) & ((\mDLY[0]~21\) # (GND)))
-- \mDLY[1]~23\ = CARRY((!\mDLY[0]~21\) # (!mDLY(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(1),
	datad => VCC,
	cin => \mDLY[0]~21\,
	combout => \mDLY[1]~22_combout\,
	cout => \mDLY[1]~23\);

-- Location: FF_X108_Y33_N17
\mDLY[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[1]~22_combout\,
	sclr => \mDLY[13]~57_combout\,
	ena => \mDLY[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(1));

-- Location: LCCOMB_X108_Y33_N18
\mDLY[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[2]~25_combout\ = (mDLY(2) & (\mDLY[1]~23\ $ (GND))) # (!mDLY(2) & (!\mDLY[1]~23\ & VCC))
-- \mDLY[2]~26\ = CARRY((mDLY(2) & !\mDLY[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(2),
	datad => VCC,
	cin => \mDLY[1]~23\,
	combout => \mDLY[2]~25_combout\,
	cout => \mDLY[2]~26\);

-- Location: FF_X108_Y33_N19
\mDLY[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[2]~25_combout\,
	sclr => \mDLY[13]~57_combout\,
	ena => \mDLY[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(2));

-- Location: LCCOMB_X108_Y33_N20
\mDLY[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[3]~27_combout\ = (mDLY(3) & (!\mDLY[2]~26\)) # (!mDLY(3) & ((\mDLY[2]~26\) # (GND)))
-- \mDLY[3]~28\ = CARRY((!\mDLY[2]~26\) # (!mDLY(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(3),
	datad => VCC,
	cin => \mDLY[2]~26\,
	combout => \mDLY[3]~27_combout\,
	cout => \mDLY[3]~28\);

-- Location: FF_X108_Y33_N21
\mDLY[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[3]~27_combout\,
	sclr => \mDLY[13]~57_combout\,
	ena => \mDLY[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(3));

-- Location: LCCOMB_X108_Y33_N22
\mDLY[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[4]~29_combout\ = (mDLY(4) & (\mDLY[3]~28\ $ (GND))) # (!mDLY(4) & (!\mDLY[3]~28\ & VCC))
-- \mDLY[4]~30\ = CARRY((mDLY(4) & !\mDLY[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(4),
	datad => VCC,
	cin => \mDLY[3]~28\,
	combout => \mDLY[4]~29_combout\,
	cout => \mDLY[4]~30\);

-- Location: FF_X108_Y33_N23
\mDLY[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[4]~29_combout\,
	sclr => \mDLY[13]~57_combout\,
	ena => \mDLY[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(4));

-- Location: LCCOMB_X108_Y33_N24
\mDLY[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[5]~31_combout\ = (mDLY(5) & (!\mDLY[4]~30\)) # (!mDLY(5) & ((\mDLY[4]~30\) # (GND)))
-- \mDLY[5]~32\ = CARRY((!\mDLY[4]~30\) # (!mDLY(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(5),
	datad => VCC,
	cin => \mDLY[4]~30\,
	combout => \mDLY[5]~31_combout\,
	cout => \mDLY[5]~32\);

-- Location: FF_X108_Y33_N25
\mDLY[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[5]~31_combout\,
	sclr => \mDLY[13]~57_combout\,
	ena => \mDLY[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(5));

-- Location: LCCOMB_X108_Y33_N26
\mDLY[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[6]~33_combout\ = (mDLY(6) & (\mDLY[5]~32\ $ (GND))) # (!mDLY(6) & (!\mDLY[5]~32\ & VCC))
-- \mDLY[6]~34\ = CARRY((mDLY(6) & !\mDLY[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(6),
	datad => VCC,
	cin => \mDLY[5]~32\,
	combout => \mDLY[6]~33_combout\,
	cout => \mDLY[6]~34\);

-- Location: FF_X108_Y33_N27
\mDLY[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[6]~33_combout\,
	sclr => \mDLY[13]~57_combout\,
	ena => \mDLY[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(6));

-- Location: LCCOMB_X108_Y33_N28
\mDLY[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[7]~35_combout\ = (mDLY(7) & (!\mDLY[6]~34\)) # (!mDLY(7) & ((\mDLY[6]~34\) # (GND)))
-- \mDLY[7]~36\ = CARRY((!\mDLY[6]~34\) # (!mDLY(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(7),
	datad => VCC,
	cin => \mDLY[6]~34\,
	combout => \mDLY[7]~35_combout\,
	cout => \mDLY[7]~36\);

-- Location: FF_X108_Y33_N29
\mDLY[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[7]~35_combout\,
	sclr => \mDLY[13]~57_combout\,
	ena => \mDLY[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(7));

-- Location: LCCOMB_X108_Y33_N30
\mDLY[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[8]~37_combout\ = (mDLY(8) & (\mDLY[7]~36\ $ (GND))) # (!mDLY(8) & (!\mDLY[7]~36\ & VCC))
-- \mDLY[8]~38\ = CARRY((mDLY(8) & !\mDLY[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(8),
	datad => VCC,
	cin => \mDLY[7]~36\,
	combout => \mDLY[8]~37_combout\,
	cout => \mDLY[8]~38\);

-- Location: FF_X108_Y33_N31
\mDLY[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[8]~37_combout\,
	sclr => \mDLY[13]~57_combout\,
	ena => \mDLY[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(8));

-- Location: LCCOMB_X108_Y32_N0
\mDLY[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[9]~39_combout\ = (mDLY(9) & (!\mDLY[8]~38\)) # (!mDLY(9) & ((\mDLY[8]~38\) # (GND)))
-- \mDLY[9]~40\ = CARRY((!\mDLY[8]~38\) # (!mDLY(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(9),
	datad => VCC,
	cin => \mDLY[8]~38\,
	combout => \mDLY[9]~39_combout\,
	cout => \mDLY[9]~40\);

-- Location: FF_X108_Y32_N1
\mDLY[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[9]~39_combout\,
	sclr => \mDLY[13]~57_combout\,
	ena => \mDLY[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(9));

-- Location: LCCOMB_X108_Y32_N2
\mDLY[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[10]~41_combout\ = (mDLY(10) & (\mDLY[9]~40\ $ (GND))) # (!mDLY(10) & (!\mDLY[9]~40\ & VCC))
-- \mDLY[10]~42\ = CARRY((mDLY(10) & !\mDLY[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(10),
	datad => VCC,
	cin => \mDLY[9]~40\,
	combout => \mDLY[10]~41_combout\,
	cout => \mDLY[10]~42\);

-- Location: FF_X108_Y32_N3
\mDLY[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[10]~41_combout\,
	sclr => \mDLY[13]~57_combout\,
	ena => \mDLY[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(10));

-- Location: LCCOMB_X108_Y32_N4
\mDLY[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[11]~43_combout\ = (mDLY(11) & (!\mDLY[10]~42\)) # (!mDLY(11) & ((\mDLY[10]~42\) # (GND)))
-- \mDLY[11]~44\ = CARRY((!\mDLY[10]~42\) # (!mDLY(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(11),
	datad => VCC,
	cin => \mDLY[10]~42\,
	combout => \mDLY[11]~43_combout\,
	cout => \mDLY[11]~44\);

-- Location: FF_X108_Y32_N5
\mDLY[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[11]~43_combout\,
	sclr => \mDLY[13]~57_combout\,
	ena => \mDLY[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(11));

-- Location: LCCOMB_X108_Y32_N6
\mDLY[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[12]~45_combout\ = (mDLY(12) & (\mDLY[11]~44\ $ (GND))) # (!mDLY(12) & (!\mDLY[11]~44\ & VCC))
-- \mDLY[12]~46\ = CARRY((mDLY(12) & !\mDLY[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(12),
	datad => VCC,
	cin => \mDLY[11]~44\,
	combout => \mDLY[12]~45_combout\,
	cout => \mDLY[12]~46\);

-- Location: FF_X108_Y32_N7
\mDLY[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[12]~45_combout\,
	sclr => \mDLY[13]~57_combout\,
	ena => \mDLY[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(12));

-- Location: LCCOMB_X108_Y32_N26
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (((!mDLY(9)) # (!mDLY(11))) # (!mDLY(10))) # (!mDLY(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(12),
	datab => mDLY(10),
	datac => mDLY(11),
	datad => mDLY(9),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X108_Y32_N8
\mDLY[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[13]~47_combout\ = (mDLY(13) & (!\mDLY[12]~46\)) # (!mDLY(13) & ((\mDLY[12]~46\) # (GND)))
-- \mDLY[13]~48\ = CARRY((!\mDLY[12]~46\) # (!mDLY(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(13),
	datad => VCC,
	cin => \mDLY[12]~46\,
	combout => \mDLY[13]~47_combout\,
	cout => \mDLY[13]~48\);

-- Location: FF_X108_Y32_N9
\mDLY[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[13]~47_combout\,
	sclr => \mDLY[13]~57_combout\,
	ena => \mDLY[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(13));

-- Location: LCCOMB_X108_Y32_N10
\mDLY[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[14]~49_combout\ = (mDLY(14) & (\mDLY[13]~48\ $ (GND))) # (!mDLY(14) & (!\mDLY[13]~48\ & VCC))
-- \mDLY[14]~50\ = CARRY((mDLY(14) & !\mDLY[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(14),
	datad => VCC,
	cin => \mDLY[13]~48\,
	combout => \mDLY[14]~49_combout\,
	cout => \mDLY[14]~50\);

-- Location: FF_X108_Y32_N11
\mDLY[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[14]~49_combout\,
	sclr => \mDLY[13]~57_combout\,
	ena => \mDLY[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(14));

-- Location: LCCOMB_X108_Y32_N12
\mDLY[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[15]~51_combout\ = (mDLY(15) & (!\mDLY[14]~50\)) # (!mDLY(15) & ((\mDLY[14]~50\) # (GND)))
-- \mDLY[15]~52\ = CARRY((!\mDLY[14]~50\) # (!mDLY(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(15),
	datad => VCC,
	cin => \mDLY[14]~50\,
	combout => \mDLY[15]~51_combout\,
	cout => \mDLY[15]~52\);

-- Location: FF_X108_Y32_N13
\mDLY[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[15]~51_combout\,
	sclr => \mDLY[13]~57_combout\,
	ena => \mDLY[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(15));

-- Location: LCCOMB_X108_Y32_N14
\mDLY[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[16]~53_combout\ = (mDLY(16) & (\mDLY[15]~52\ $ (GND))) # (!mDLY(16) & (!\mDLY[15]~52\ & VCC))
-- \mDLY[16]~54\ = CARRY((mDLY(16) & !\mDLY[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => mDLY(16),
	datad => VCC,
	cin => \mDLY[15]~52\,
	combout => \mDLY[16]~53_combout\,
	cout => \mDLY[16]~54\);

-- Location: FF_X108_Y32_N15
\mDLY[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[16]~53_combout\,
	sclr => \mDLY[13]~57_combout\,
	ena => \mDLY[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(16));

-- Location: LCCOMB_X108_Y32_N16
\mDLY[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \mDLY[17]~55_combout\ = \mDLY[16]~54\ $ (mDLY(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => mDLY(17),
	cin => \mDLY[16]~54\,
	combout => \mDLY[17]~55_combout\);

-- Location: FF_X108_Y32_N17
\mDLY[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mDLY[17]~55_combout\,
	sclr => \mDLY[13]~57_combout\,
	ena => \mDLY[13]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mDLY(17));

-- Location: LCCOMB_X108_Y33_N10
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (((!mDLY(5)) # (!mDLY(6))) # (!mDLY(7))) # (!mDLY(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(8),
	datab => mDLY(7),
	datac => mDLY(6),
	datad => mDLY(5),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X108_Y33_N4
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (((!mDLY(1)) # (!mDLY(3))) # (!mDLY(2))) # (!mDLY(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(4),
	datab => mDLY(2),
	datac => mDLY(3),
	datad => mDLY(1),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X108_Y33_N12
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\LessThan1~1_combout\) # (\LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~1_combout\,
	datac => \LessThan1~0_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X108_Y32_N28
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (((!mDLY(15)) # (!mDLY(13))) # (!mDLY(16))) # (!mDLY(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mDLY(14),
	datab => mDLY(16),
	datac => mDLY(13),
	datad => mDLY(15),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X108_Y32_N18
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (\LessThan1~3_combout\) # (((\LessThan1~2_combout\) # (\LessThan1~4_combout\)) # (!mDLY(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => mDLY(17),
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X109_Y34_N4
\mLCD_ST~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~22_combout\ = (!\mLCD_ST.000001~q\ & (!\mLCD_ST.000010~q\ & !\mLCD_ST.000011~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mLCD_ST.000001~q\,
	datab => \mLCD_ST.000010~q\,
	datad => \mLCD_ST.000011~q\,
	combout => \mLCD_ST~22_combout\);

-- Location: LCCOMB_X109_Y34_N14
\mLCD_Start~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_Start~0_combout\ = (\mLCD_Start~q\ & (((!\LessThan0~1_combout\) # (!\u0|oDone~q\)) # (!\mLCD_ST.000001~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mLCD_ST.000001~q\,
	datab => \mLCD_Start~q\,
	datac => \u0|oDone~q\,
	datad => \LessThan0~1_combout\,
	combout => \mLCD_Start~0_combout\);

-- Location: LCCOMB_X109_Y34_N18
\mLCD_Start~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_Start~1_combout\ = (!\Trigger~0_combout\ & ((\mLCD_Start~0_combout\) # ((\mLCD_ST~22_combout\ & \LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Trigger~0_combout\,
	datab => \mLCD_ST~22_combout\,
	datac => \mLCD_Start~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \mLCD_Start~1_combout\);

-- Location: FF_X109_Y34_N19
mLCD_Start : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_Start~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mLCD_Start~q\);

-- Location: LCCOMB_X108_Y31_N30
\u0|ST.00~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ST.00~0_combout\ = !\u0|ST.11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|ST.11~q\,
	combout => \u0|ST.00~0_combout\);

-- Location: FF_X106_Y31_N21
\u0|ST.00\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \u0|ST.00~0_combout\,
	clrn => \oRESET~q\,
	sload => VCC,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ST.00~q\);

-- Location: LCCOMB_X106_Y31_N28
\u0|ST.01~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ST.01~0_combout\ = !\u0|ST.00~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u0|ST.00~q\,
	combout => \u0|ST.01~0_combout\);

-- Location: FF_X106_Y31_N29
\u0|ST.01\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|ST.01~0_combout\,
	clrn => \oRESET~q\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ST.01~q\);

-- Location: LCCOMB_X106_Y31_N14
\u0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector2~0_combout\ = (\u0|ST.01~q\) # ((!\u0|Cont\(4) & \u0|ST.10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(4),
	datac => \u0|ST.10~q\,
	datad => \u0|ST.01~q\,
	combout => \u0|Selector2~0_combout\);

-- Location: FF_X106_Y31_N15
\u0|ST.10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector2~0_combout\,
	clrn => \oRESET~q\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ST.10~q\);

-- Location: LCCOMB_X106_Y31_N10
\u0|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector5~0_combout\ = ((\u0|ST.01~q\) # ((\u0|Cont\(4) & \u0|ST.10~q\))) # (!\u0|ST.00~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(4),
	datab => \u0|ST.10~q\,
	datac => \u0|ST.00~q\,
	datad => \u0|ST.01~q\,
	combout => \u0|Selector5~0_combout\);

-- Location: LCCOMB_X106_Y31_N20
\u0|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector2~1_combout\ = (!\u0|Cont\(4) & \u0|ST.10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(4),
	datab => \u0|ST.10~q\,
	combout => \u0|Selector2~1_combout\);

-- Location: LCCOMB_X106_Y31_N0
\u0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~0_combout\ = \u0|Cont\(0) $ (VCC)
-- \u0|Add0~1\ = CARRY(\u0|Cont\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|Cont\(0),
	datad => VCC,
	combout => \u0|Add0~0_combout\,
	cout => \u0|Add0~1\);

-- Location: LCCOMB_X106_Y31_N24
\u0|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector8~0_combout\ = (\u0|Selector5~0_combout\ & ((\u0|Cont\(0)) # ((\u0|Add0~0_combout\ & \u0|Selector2~1_combout\)))) # (!\u0|Selector5~0_combout\ & (\u0|Add0~0_combout\ & ((\u0|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector5~0_combout\,
	datab => \u0|Add0~0_combout\,
	datac => \u0|Cont\(0),
	datad => \u0|Selector2~1_combout\,
	combout => \u0|Selector8~0_combout\);

-- Location: FF_X106_Y31_N25
\u0|Cont[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector8~0_combout\,
	clrn => \oRESET~q\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|Cont\(0));

-- Location: LCCOMB_X106_Y31_N2
\u0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~2_combout\ = (\u0|Cont\(1) & (!\u0|Add0~1\)) # (!\u0|Cont\(1) & ((\u0|Add0~1\) # (GND)))
-- \u0|Add0~3\ = CARRY((!\u0|Add0~1\) # (!\u0|Cont\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(1),
	datad => VCC,
	cin => \u0|Add0~1\,
	combout => \u0|Add0~2_combout\,
	cout => \u0|Add0~3\);

-- Location: LCCOMB_X106_Y31_N30
\u0|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector7~0_combout\ = (\u0|Selector5~0_combout\ & ((\u0|Cont\(1)) # ((\u0|Selector2~1_combout\ & \u0|Add0~2_combout\)))) # (!\u0|Selector5~0_combout\ & (\u0|Selector2~1_combout\ & ((\u0|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector5~0_combout\,
	datab => \u0|Selector2~1_combout\,
	datac => \u0|Cont\(1),
	datad => \u0|Add0~2_combout\,
	combout => \u0|Selector7~0_combout\);

-- Location: FF_X106_Y31_N31
\u0|Cont[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector7~0_combout\,
	clrn => \oRESET~q\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|Cont\(1));

-- Location: LCCOMB_X106_Y31_N4
\u0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~4_combout\ = (\u0|Cont\(2) & (\u0|Add0~3\ $ (GND))) # (!\u0|Cont\(2) & (!\u0|Add0~3\ & VCC))
-- \u0|Add0~5\ = CARRY((\u0|Cont\(2) & !\u0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(2),
	datad => VCC,
	cin => \u0|Add0~3\,
	combout => \u0|Add0~4_combout\,
	cout => \u0|Add0~5\);

-- Location: LCCOMB_X106_Y31_N12
\u0|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector6~0_combout\ = (\u0|Selector5~0_combout\ & ((\u0|Cont\(2)) # ((\u0|Add0~4_combout\ & \u0|Selector2~1_combout\)))) # (!\u0|Selector5~0_combout\ & (\u0|Add0~4_combout\ & ((\u0|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector5~0_combout\,
	datab => \u0|Add0~4_combout\,
	datac => \u0|Cont\(2),
	datad => \u0|Selector2~1_combout\,
	combout => \u0|Selector6~0_combout\);

-- Location: FF_X106_Y31_N13
\u0|Cont[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector6~0_combout\,
	clrn => \oRESET~q\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|Cont\(2));

-- Location: LCCOMB_X106_Y31_N6
\u0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~6_combout\ = (\u0|Cont\(3) & (!\u0|Add0~5\)) # (!\u0|Cont\(3) & ((\u0|Add0~5\) # (GND)))
-- \u0|Add0~7\ = CARRY((!\u0|Add0~5\) # (!\u0|Cont\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(3),
	datad => VCC,
	cin => \u0|Add0~5\,
	combout => \u0|Add0~6_combout\,
	cout => \u0|Add0~7\);

-- Location: LCCOMB_X106_Y31_N22
\u0|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector5~1_combout\ = (\u0|Selector5~0_combout\ & ((\u0|Cont\(3)) # ((\u0|Selector2~1_combout\ & \u0|Add0~6_combout\)))) # (!\u0|Selector5~0_combout\ & (\u0|Selector2~1_combout\ & ((\u0|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Selector5~0_combout\,
	datab => \u0|Selector2~1_combout\,
	datac => \u0|Cont\(3),
	datad => \u0|Add0~6_combout\,
	combout => \u0|Selector5~1_combout\);

-- Location: FF_X106_Y31_N23
\u0|Cont[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector5~1_combout\,
	clrn => \oRESET~q\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|Cont\(3));

-- Location: LCCOMB_X106_Y31_N8
\u0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Add0~8_combout\ = \u0|Cont\(4) $ (!\u0|Add0~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(4),
	cin => \u0|Add0~7\,
	combout => \u0|Add0~8_combout\);

-- Location: LCCOMB_X106_Y31_N16
\u0|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector4~0_combout\ = (\u0|Cont\(4) & ((\u0|ST.10~q\) # ((\u0|ST.01~q\) # (!\u0|ST.00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(4),
	datab => \u0|ST.10~q\,
	datac => \u0|ST.00~q\,
	datad => \u0|ST.01~q\,
	combout => \u0|Selector4~0_combout\);

-- Location: LCCOMB_X106_Y31_N26
\u0|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector4~1_combout\ = (\u0|Selector4~0_combout\) # ((\u0|Add0~8_combout\ & \u0|ST.10~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|Add0~8_combout\,
	datac => \u0|ST.10~q\,
	datad => \u0|Selector4~0_combout\,
	combout => \u0|Selector4~1_combout\);

-- Location: FF_X106_Y31_N27
\u0|Cont[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector4~1_combout\,
	clrn => \oRESET~q\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|Cont\(4));

-- Location: LCCOMB_X108_Y31_N26
\u0|ST~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|ST~14_combout\ = (\u0|Cont\(4) & \u0|ST.10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|Cont\(4),
	datac => \u0|ST.10~q\,
	combout => \u0|ST~14_combout\);

-- Location: FF_X108_Y31_N27
\u0|ST.11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|ST~14_combout\,
	clrn => \oRESET~q\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|ST.11~q\);

-- Location: FF_X108_Y31_N29
\u0|preStart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \mLCD_Start~q\,
	clrn => \oRESET~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|preStart~q\);

-- Location: LCCOMB_X107_Y31_N30
\u0|mStart~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|mStart~0_combout\ = (\u0|mStart~q\ & (((!\u0|ST.11~q\)))) # (!\u0|mStart~q\ & (\mLCD_Start~q\ & ((!\u0|preStart~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mLCD_Start~q\,
	datab => \u0|ST.11~q\,
	datac => \u0|mStart~q\,
	datad => \u0|preStart~q\,
	combout => \u0|mStart~0_combout\);

-- Location: FF_X107_Y31_N31
\u0|mStart\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|mStart~0_combout\,
	clrn => \oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|mStart~q\);

-- Location: LCCOMB_X108_Y31_N28
\u0|oDone~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|oDone~0_combout\ = (\u0|oDone~q\ & ((\u0|preStart~q\) # (!\mLCD_Start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mLCD_Start~q\,
	datab => \u0|oDone~q\,
	datac => \u0|preStart~q\,
	combout => \u0|oDone~0_combout\);

-- Location: LCCOMB_X108_Y31_N16
\u0|oDone~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|oDone~1_combout\ = (\u0|oDone~0_combout\) # ((\u0|mStart~q\ & \u0|ST.11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u0|mStart~q\,
	datac => \u0|ST.11~q\,
	datad => \u0|oDone~0_combout\,
	combout => \u0|oDone~1_combout\);

-- Location: FF_X108_Y31_N17
\u0|oDone\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|oDone~1_combout\,
	clrn => \oRESET~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|oDone~q\);

-- Location: LCCOMB_X109_Y34_N16
\mLCD_ST~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~18_combout\ = ((\mLCD_ST.000001~q\ & !\u0|oDone~q\)) # (!\LessThan0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mLCD_ST.000001~q\,
	datac => \u0|oDone~q\,
	datad => \LessThan0~1_combout\,
	combout => \mLCD_ST~18_combout\);

-- Location: LCCOMB_X109_Y34_N0
\mLCD_ST~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~19_combout\ = (!\Trigger~0_combout\ & ((\mLCD_ST~18_combout\) # ((\LessThan1~5_combout\ & \mLCD_ST.000010~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Trigger~0_combout\,
	datab => \LessThan1~5_combout\,
	datac => \mLCD_ST.000010~q\,
	datad => \mLCD_ST~18_combout\,
	combout => \mLCD_ST~19_combout\);

-- Location: LCCOMB_X109_Y34_N26
\mLCD_ST~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~23_combout\ = (\mLCD_ST~19_combout\ & (((\mLCD_ST.000001~q\)))) # (!\mLCD_ST~19_combout\ & (!\Trigger~0_combout\ & (\mLCD_ST~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Trigger~0_combout\,
	datab => \mLCD_ST~22_combout\,
	datac => \mLCD_ST.000001~q\,
	datad => \mLCD_ST~19_combout\,
	combout => \mLCD_ST~23_combout\);

-- Location: FF_X109_Y34_N27
\mLCD_ST.000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_ST~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mLCD_ST.000001~q\);

-- Location: LCCOMB_X109_Y34_N6
\mLCD_ST~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~24_combout\ = (\mLCD_ST.000001~q\ & \u0|oDone~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mLCD_ST.000001~q\,
	datad => \u0|oDone~q\,
	combout => \mLCD_ST~24_combout\);

-- Location: LCCOMB_X109_Y34_N22
\mLCD_ST~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~25_combout\ = (!\Trigger~0_combout\ & ((\mLCD_ST~24_combout\) # ((\LessThan1~5_combout\ & \mLCD_ST.000010~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Trigger~0_combout\,
	datab => \LessThan1~5_combout\,
	datac => \mLCD_ST.000010~q\,
	datad => \mLCD_ST~24_combout\,
	combout => \mLCD_ST~25_combout\);

-- Location: LCCOMB_X109_Y34_N2
\mLCD_ST~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~26_combout\ = (\Btn_start_stop_stable~q\) # ((\Btn_split_stable~q\) # ((\LessThan0~1_combout\) # (!\oRESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Btn_start_stop_stable~q\,
	datab => \Btn_split_stable~q\,
	datac => \oRESET~q\,
	datad => \LessThan0~1_combout\,
	combout => \mLCD_ST~26_combout\);

-- Location: FF_X109_Y34_N23
\mLCD_ST.000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_ST~25_combout\,
	ena => \mLCD_ST~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mLCD_ST.000010~q\);

-- Location: LCCOMB_X109_Y34_N24
\mLCD_ST~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~21_combout\ = (\mLCD_ST.000010~q\ & (!\LessThan1~5_combout\ & !\Trigger~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mLCD_ST.000010~q\,
	datac => \LessThan1~5_combout\,
	datad => \Trigger~0_combout\,
	combout => \mLCD_ST~21_combout\);

-- Location: FF_X109_Y34_N25
\mLCD_ST.000011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_ST~21_combout\,
	ena => \mLCD_ST~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mLCD_ST.000011~q\);

-- Location: LCCOMB_X108_Y34_N6
\LUT_INDEX[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[0]~12_combout\ = (\Trigger~0_combout\) # ((\mLCD_ST.000011~q\ & \LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mLCD_ST.000011~q\,
	datac => \Trigger~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LUT_INDEX[0]~12_combout\);

-- Location: FF_X107_Y34_N11
\LUT_INDEX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_INDEX[0]~6_combout\,
	sclr => \Trigger~0_combout\,
	ena => \LUT_INDEX[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_INDEX(0));

-- Location: LCCOMB_X107_Y34_N12
\LUT_INDEX[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[1]~8_combout\ = (LUT_INDEX(1) & (!\LUT_INDEX[0]~7\)) # (!LUT_INDEX(1) & ((\LUT_INDEX[0]~7\) # (GND)))
-- \LUT_INDEX[1]~9\ = CARRY((!\LUT_INDEX[0]~7\) # (!LUT_INDEX(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datad => VCC,
	cin => \LUT_INDEX[0]~7\,
	combout => \LUT_INDEX[1]~8_combout\,
	cout => \LUT_INDEX[1]~9\);

-- Location: FF_X107_Y34_N13
\LUT_INDEX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_INDEX[1]~8_combout\,
	sclr => \Trigger~0_combout\,
	ena => \LUT_INDEX[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_INDEX(1));

-- Location: LCCOMB_X107_Y34_N14
\LUT_INDEX[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[2]~10_combout\ = (LUT_INDEX(2) & (\LUT_INDEX[1]~9\ $ (GND))) # (!LUT_INDEX(2) & (!\LUT_INDEX[1]~9\ & VCC))
-- \LUT_INDEX[2]~11\ = CARRY((LUT_INDEX(2) & !\LUT_INDEX[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => LUT_INDEX(2),
	datad => VCC,
	cin => \LUT_INDEX[1]~9\,
	combout => \LUT_INDEX[2]~10_combout\,
	cout => \LUT_INDEX[2]~11\);

-- Location: FF_X107_Y34_N15
\LUT_INDEX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_INDEX[2]~10_combout\,
	sclr => \Trigger~0_combout\,
	ena => \LUT_INDEX[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_INDEX(2));

-- Location: LCCOMB_X107_Y34_N16
\LUT_INDEX[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_INDEX[3]~13_combout\ = (LUT_INDEX(3) & (!\LUT_INDEX[2]~11\)) # (!LUT_INDEX(3) & ((\LUT_INDEX[2]~11\) # (GND)))
-- \LUT_INDEX[3]~14\ = CARRY((!\LUT_INDEX[2]~11\) # (!LUT_INDEX(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datad => VCC,
	cin => \LUT_INDEX[2]~11\,
	combout => \LUT_INDEX[3]~13_combout\,
	cout => \LUT_INDEX[3]~14\);

-- Location: FF_X107_Y34_N17
\LUT_INDEX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_INDEX[3]~13_combout\,
	sclr => \Trigger~0_combout\,
	ena => \LUT_INDEX[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_INDEX(3));

-- Location: FF_X107_Y34_N19
\LUT_INDEX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_INDEX[4]~15_combout\,
	sclr => \Trigger~0_combout\,
	ena => \LUT_INDEX[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_INDEX(4));

-- Location: LCCOMB_X111_Y35_N8
\time_records~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~0_combout\ = (\reset~input_o\ & BCD(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => BCD(12),
	combout => \time_records~0_combout\);

-- Location: LCCOMB_X109_Y34_N30
\preBtn_split_stable~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \preBtn_split_stable~0_combout\ = (\Btn_split_stable~q\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Btn_split_stable~q\,
	datad => \reset~input_o\,
	combout => \preBtn_split_stable~0_combout\);

-- Location: FF_X109_Y34_N7
preBtn_split_stable : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \preBtn_split_stable~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \preBtn_split_stable~q\);

-- Location: LCCOMB_X109_Y34_N28
\record_index[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \record_index[0]~1_combout\ = (\reset~input_o\ & (record_index(0) $ (((\Btn_split_stable~q\ & !\preBtn_split_stable~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Btn_split_stable~q\,
	datab => record_index(0),
	datac => \preBtn_split_stable~q\,
	datad => \reset~input_o\,
	combout => \record_index[0]~1_combout\);

-- Location: FF_X109_Y34_N5
\record_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \record_index[0]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => record_index(0));

-- Location: LCCOMB_X109_Y34_N12
\time_records[1][5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records[1][5]~1_combout\ = (record_index(0) & (!\preBtn_split_stable~q\ & \Btn_split_stable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => record_index(0),
	datac => \preBtn_split_stable~q\,
	datad => \Btn_split_stable~q\,
	combout => \time_records[1][5]~1_combout\);

-- Location: LCCOMB_X113_Y35_N0
\Add14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add14~0_combout\ = record_index(0) $ (record_index(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => record_index(0),
	datac => record_index(1),
	combout => \Add14~0_combout\);

-- Location: LCCOMB_X113_Y35_N30
\record_index[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \record_index[1]~0_combout\ = ((\Btn_split_stable~q\ & !\preBtn_split_stable~q\)) # (!\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Btn_split_stable~q\,
	datac => \reset~input_o\,
	datad => \preBtn_split_stable~q\,
	combout => \record_index[1]~0_combout\);

-- Location: FF_X113_Y35_N1
\record_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Add14~0_combout\,
	sclr => \ALT_INV_reset~input_o\,
	ena => \record_index[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => record_index(1));

-- Location: LCCOMB_X109_Y35_N30
\time_records[3][9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records[3][9]~9_combout\ = (\reset~input_o\ & (((\time_records[1][5]~1_combout\ & record_index(1))))) # (!\reset~input_o\ & (!\oRESET~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \oRESET~q\,
	datac => \time_records[1][5]~1_combout\,
	datad => record_index(1),
	combout => \time_records[3][9]~9_combout\);

-- Location: FF_X110_Y34_N23
\time_records[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~0_combout\,
	sload => VCC,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][12]~q\);

-- Location: LCCOMB_X111_Y35_N10
\time_records~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~7_combout\ = (\reset~input_o\ & BCD(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => BCD(8),
	combout => \time_records~7_combout\);

-- Location: LCCOMB_X110_Y34_N28
\time_records[3][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records[3][8]~feeder_combout\ = \time_records~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_records~7_combout\,
	combout => \time_records[3][8]~feeder_combout\);

-- Location: FF_X110_Y34_N29
\time_records[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \time_records[3][8]~feeder_combout\,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][8]~q\);

-- Location: LCCOMB_X110_Y34_N22
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (!LUT_INDEX(0) & ((LUT_INDEX(1) & ((\time_records[3][8]~q\))) # (!LUT_INDEX(1) & (\time_records[3][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(1),
	datac => \time_records[3][12]~q\,
	datad => \time_records[3][8]~q\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X111_Y35_N12
\time_records~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~8_combout\ = (\reset~input_o\ & BCD(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => BCD(0),
	combout => \time_records~8_combout\);

-- Location: FF_X110_Y34_N7
\time_records[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~8_combout\,
	sload => VCC,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][0]~q\);

-- Location: LCCOMB_X111_Y35_N30
\time_records~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~6_combout\ = (\reset~input_o\ & BCD(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => BCD(4),
	combout => \time_records~6_combout\);

-- Location: LCCOMB_X110_Y34_N20
\time_records[3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records[3][4]~feeder_combout\ = \time_records~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \time_records~6_combout\,
	combout => \time_records[3][4]~feeder_combout\);

-- Location: FF_X110_Y34_N21
\time_records[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \time_records[3][4]~feeder_combout\,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][4]~q\);

-- Location: LCCOMB_X110_Y34_N6
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (LUT_INDEX(1) & (!LUT_INDEX(2) & ((\time_records[3][4]~q\)))) # (!LUT_INDEX(1) & (LUT_INDEX(2) & (\time_records[3][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datab => LUT_INDEX(2),
	datac => \time_records[3][0]~q\,
	datad => \time_records[3][4]~q\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X110_Y34_N8
\Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (LUT_INDEX(0) & ((\Mux3~6_combout\) # ((!LUT_INDEX(2) & \Mux3~7_combout\)))) # (!LUT_INDEX(0) & (!LUT_INDEX(2) & (\Mux3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(2),
	datac => \Mux3~7_combout\,
	datad => \Mux3~6_combout\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X111_Y34_N28
\time_records[0][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records[0][12]~feeder_combout\ = \time_records~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \time_records~0_combout\,
	combout => \time_records[0][12]~feeder_combout\);

-- Location: LCCOMB_X109_Y34_N10
\time_records[0][3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records[0][3]~4_combout\ = (!record_index(0) & (!\preBtn_split_stable~q\ & \Btn_split_stable~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => record_index(0),
	datac => \preBtn_split_stable~q\,
	datad => \Btn_split_stable~q\,
	combout => \time_records[0][3]~4_combout\);

-- Location: LCCOMB_X110_Y35_N22
\time_records[0][3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records[0][3]~5_combout\ = (\reset~input_o\ & (!record_index(1) & ((\time_records[0][3]~4_combout\)))) # (!\reset~input_o\ & (((!\oRESET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => record_index(1),
	datab => \oRESET~q\,
	datac => \time_records[0][3]~4_combout\,
	datad => \reset~input_o\,
	combout => \time_records[0][3]~5_combout\);

-- Location: FF_X111_Y34_N29
\time_records[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \time_records[0][12]~feeder_combout\,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][12]~q\);

-- Location: LCCOMB_X111_Y35_N26
\time_records~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~3_combout\ = (\BCD[16]~2_combout\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BCD[16]~2_combout\,
	datac => \reset~input_o\,
	combout => \time_records~3_combout\);

-- Location: FF_X111_Y34_N31
\time_records[0][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~3_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][16]~q\);

-- Location: LCCOMB_X111_Y34_N30
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (LUT_INDEX(0) & (((\time_records[0][16]~q\ & !LUT_INDEX(1))))) # (!LUT_INDEX(0) & (\time_records[0][12]~q\ & ((LUT_INDEX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => \time_records[0][12]~q\,
	datac => \time_records[0][16]~q\,
	datad => LUT_INDEX(1),
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X111_Y34_N4
\time_records[1][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records[1][12]~feeder_combout\ = \time_records~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \time_records~0_combout\,
	combout => \time_records[1][12]~feeder_combout\);

-- Location: LCCOMB_X108_Y35_N24
\time_records[1][5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records[1][5]~2_combout\ = (\reset~input_o\ & (\time_records[1][5]~1_combout\ & (!record_index(1)))) # (!\reset~input_o\ & (((!\oRESET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_records[1][5]~1_combout\,
	datab => \reset~input_o\,
	datac => record_index(1),
	datad => \oRESET~q\,
	combout => \time_records[1][5]~2_combout\);

-- Location: FF_X111_Y34_N5
\time_records[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \time_records[1][12]~feeder_combout\,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][12]~q\);

-- Location: FF_X111_Y34_N27
\time_records[1][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~3_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][16]~q\);

-- Location: LCCOMB_X111_Y34_N26
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (LUT_INDEX(1) & ((LUT_INDEX(0) & (\time_records[1][12]~q\)) # (!LUT_INDEX(0) & ((\time_records[1][16]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => \time_records[1][12]~q\,
	datac => \time_records[1][16]~q\,
	datad => LUT_INDEX(1),
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X110_Y34_N24
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (LUT_INDEX(2) & ((LUT_INDEX(3) & ((\Mux3~0_combout\))) # (!LUT_INDEX(3) & (\Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(2),
	datac => \Mux3~1_combout\,
	datad => \Mux3~0_combout\,
	combout => \Mux3~2_combout\);

-- Location: FF_X110_Y35_N9
\time_records[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~8_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][0]~q\);

-- Location: FF_X110_Y35_N29
\time_records[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~6_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][4]~q\);

-- Location: FF_X110_Y35_N3
\time_records[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~7_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][8]~q\);

-- Location: LCCOMB_X110_Y35_N2
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (!LUT_INDEX(1) & ((LUT_INDEX(0) & (\time_records[0][4]~q\)) # (!LUT_INDEX(0) & ((\time_records[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datab => \time_records[0][4]~q\,
	datac => \time_records[0][8]~q\,
	datad => LUT_INDEX(0),
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X110_Y35_N8
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux3~3_combout\) # ((LUT_INDEX(1) & (LUT_INDEX(0) & \time_records[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datab => LUT_INDEX(0),
	datac => \time_records[0][0]~q\,
	datad => \Mux3~3_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X110_Y34_N18
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~2_combout\) # ((LUT_INDEX(3) & (!LUT_INDEX(2) & \Mux3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => \Mux3~2_combout\,
	datac => LUT_INDEX(2),
	datad => \Mux3~4_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X110_Y34_N30
\Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (LUT_INDEX(5) & (!LUT_INDEX(3) & (\Mux3~8_combout\))) # (!LUT_INDEX(5) & (((\Mux3~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(5),
	datac => \Mux3~8_combout\,
	datad => \Mux3~5_combout\,
	combout => \Mux3~9_combout\);

-- Location: FF_X110_Y35_N5
\time_records[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~6_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][4]~q\);

-- Location: FF_X110_Y35_N15
\time_records[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~7_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][8]~q\);

-- Location: LCCOMB_X111_Y35_N0
\Mux3~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~13_combout\ = (LUT_INDEX(0) & (((!LUT_INDEX(1) & \time_records[1][8]~q\)))) # (!LUT_INDEX(0) & (\time_records[1][4]~q\ & (LUT_INDEX(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => \time_records[1][4]~q\,
	datac => LUT_INDEX(1),
	datad => \time_records[1][8]~q\,
	combout => \Mux3~13_combout\);

-- Location: LCCOMB_X108_Y35_N30
\time_records[2][18]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records[2][18]~10_combout\ = (\reset~input_o\ & (\time_records[0][3]~4_combout\ & ((record_index(1))))) # (!\reset~input_o\ & (((!\oRESET~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_records[0][3]~4_combout\,
	datab => \oRESET~q\,
	datac => record_index(1),
	datad => \reset~input_o\,
	combout => \time_records[2][18]~10_combout\);

-- Location: FF_X111_Y35_N13
\time_records[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~6_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][4]~q\);

-- Location: FF_X111_Y35_N15
\time_records[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~7_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][8]~q\);

-- Location: LCCOMB_X111_Y35_N14
\Mux3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~12_combout\ = (LUT_INDEX(1) & (\time_records[2][4]~q\ & ((!LUT_INDEX(0))))) # (!LUT_INDEX(1) & (((\time_records[2][8]~q\ & LUT_INDEX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_records[2][4]~q\,
	datab => LUT_INDEX(1),
	datac => \time_records[2][8]~q\,
	datad => LUT_INDEX(0),
	combout => \Mux3~12_combout\);

-- Location: LCCOMB_X110_Y33_N18
\Mux3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~14_combout\ = (LUT_INDEX(3) & (((LUT_INDEX(2)) # (\Mux3~12_combout\)))) # (!LUT_INDEX(3) & (\Mux3~13_combout\ & (!LUT_INDEX(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => \Mux3~13_combout\,
	datac => LUT_INDEX(2),
	datad => \Mux3~12_combout\,
	combout => \Mux3~14_combout\);

-- Location: FF_X111_Y35_N27
\time_records[3][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \time_records~3_combout\,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][16]~q\);

-- Location: FF_X111_Y35_N9
\time_records[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~8_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][0]~q\);

-- Location: LCCOMB_X111_Y35_N6
\Mux3~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~15_combout\ = (LUT_INDEX(0) & (\time_records[3][16]~q\ & ((LUT_INDEX(1))))) # (!LUT_INDEX(0) & (((\time_records[2][0]~q\ & !LUT_INDEX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => \time_records[3][16]~q\,
	datac => \time_records[2][0]~q\,
	datad => LUT_INDEX(1),
	combout => \Mux3~15_combout\);

-- Location: FF_X110_Y35_N19
\time_records[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~8_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][0]~q\);

-- Location: FF_X111_Y35_N5
\time_records[2][16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~3_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][16]~q\);

-- Location: LCCOMB_X111_Y35_N4
\Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (!LUT_INDEX(0) & ((LUT_INDEX(1) & ((\time_records[2][16]~q\))) # (!LUT_INDEX(1) & (\time_records[1][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => \time_records[1][0]~q\,
	datac => \time_records[2][16]~q\,
	datad => LUT_INDEX(1),
	combout => \Mux3~10_combout\);

-- Location: FF_X111_Y35_N19
\time_records[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~0_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][12]~q\);

-- Location: LCCOMB_X111_Y35_N18
\Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~11_combout\ = (\Mux3~10_combout\) # ((LUT_INDEX(0) & (\time_records[2][12]~q\ & LUT_INDEX(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => \Mux3~10_combout\,
	datac => \time_records[2][12]~q\,
	datad => LUT_INDEX(1),
	combout => \Mux3~11_combout\);

-- Location: LCCOMB_X110_Y33_N28
\Mux3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~16_combout\ = (LUT_INDEX(2) & ((\Mux3~14_combout\ & (\Mux3~15_combout\)) # (!\Mux3~14_combout\ & ((\Mux3~11_combout\))))) # (!LUT_INDEX(2) & (\Mux3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datab => \Mux3~14_combout\,
	datac => \Mux3~15_combout\,
	datad => \Mux3~11_combout\,
	combout => \Mux3~16_combout\);

-- Location: LCCOMB_X110_Y33_N0
\Mux3~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~17_combout\ = (LUT_INDEX(4) & (!LUT_INDEX(5) & ((\Mux3~16_combout\)))) # (!LUT_INDEX(4) & (((\Mux3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => LUT_INDEX(5),
	datac => \Mux3~9_combout\,
	datad => \Mux3~16_combout\,
	combout => \Mux3~17_combout\);

-- Location: FF_X110_Y33_N1
\LUT_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Mux3~17_combout\,
	sclr => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(0));

-- Location: LCCOMB_X108_Y34_N4
\mLCD_DATA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~0_combout\ = (!\Btn_start_stop_stable~q\ & (!\Btn_split_stable~q\ & (LUT_DATA(0) & \oRESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Btn_start_stop_stable~q\,
	datab => \Btn_split_stable~q\,
	datac => LUT_DATA(0),
	datad => \oRESET~q\,
	combout => \mLCD_DATA~0_combout\);

-- Location: LCCOMB_X109_Y34_N20
\mLCD_ST~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_ST~20_combout\ = (\mLCD_ST~19_combout\ & (((\mLCD_ST.000000~q\)))) # (!\mLCD_ST~19_combout\ & (!\Trigger~0_combout\ & (!\mLCD_ST.000011~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Trigger~0_combout\,
	datab => \mLCD_ST.000011~q\,
	datac => \mLCD_ST.000000~q\,
	datad => \mLCD_ST~19_combout\,
	combout => \mLCD_ST~20_combout\);

-- Location: FF_X109_Y34_N21
\mLCD_ST.000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_ST~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mLCD_ST.000000~q\);

-- Location: LCCOMB_X108_Y34_N16
\mLCD_DATA[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA[0]~1_combout\ = (\Trigger~0_combout\) # ((!\mLCD_ST.000000~q\ & \LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mLCD_ST.000000~q\,
	datac => \Trigger~0_combout\,
	datad => \LessThan0~1_combout\,
	combout => \mLCD_DATA[0]~1_combout\);

-- Location: FF_X108_Y34_N5
\mLCD_DATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~0_combout\,
	ena => \mLCD_DATA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(0));

-- Location: LCCOMB_X109_Y35_N12
\LUT_DATA[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[3]~29_combout\ = (LUT_INDEX(1) & !LUT_INDEX(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datad => LUT_INDEX(2),
	combout => \LUT_DATA[3]~29_combout\);

-- Location: LCCOMB_X111_Y35_N20
\time_records~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~15_combout\ = (\reset~input_o\ & BCD(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => BCD(9),
	combout => \time_records~15_combout\);

-- Location: FF_X111_Y35_N23
\time_records[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~15_combout\,
	sload => VCC,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][9]~q\);

-- Location: LCCOMB_X108_Y35_N8
\time_records~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~14_combout\ = (BCD(5) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(5),
	datad => \reset~input_o\,
	combout => \time_records~14_combout\);

-- Location: FF_X109_Y35_N7
\time_records[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~14_combout\,
	sload => VCC,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][5]~q\);

-- Location: LCCOMB_X108_Y34_N22
\LUT_DATA[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[3]~32_combout\ = (LUT_INDEX(2)) # ((LUT_INDEX(0) & LUT_INDEX(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(1),
	combout => \LUT_DATA[3]~32_combout\);

-- Location: LCCOMB_X108_Y34_N0
\LUT_DATA[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[3]~31_combout\ = (LUT_INDEX(2)) # ((!LUT_INDEX(0) & !LUT_INDEX(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(2),
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(1),
	combout => \LUT_DATA[3]~31_combout\);

-- Location: LCCOMB_X111_Y35_N24
\time_records~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~11_combout\ = (\reset~input_o\ & BCD(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => BCD(13),
	combout => \time_records~11_combout\);

-- Location: FF_X109_Y35_N11
\time_records[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~11_combout\,
	sload => VCC,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][13]~q\);

-- Location: LCCOMB_X112_Y35_N24
\time_records~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~13_combout\ = (\reset~input_o\ & BCD(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => BCD(1),
	combout => \time_records~13_combout\);

-- Location: FF_X111_Y35_N25
\time_records[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~13_combout\,
	sload => VCC,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][1]~q\);

-- Location: LCCOMB_X110_Y35_N18
\LUT_DATA~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~30_combout\ = (!LUT_INDEX(1) & ((\time_records[3][1]~q\) # (!LUT_INDEX(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => \time_records[3][1]~q\,
	datad => LUT_INDEX(1),
	combout => \LUT_DATA~30_combout\);

-- Location: LCCOMB_X109_Y35_N10
\LUT_DATA~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~33_combout\ = (\LUT_DATA[3]~32_combout\ & (\LUT_DATA[3]~31_combout\ & ((\LUT_DATA~30_combout\)))) # (!\LUT_DATA[3]~32_combout\ & (((\time_records[3][13]~q\)) # (!\LUT_DATA[3]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA[3]~32_combout\,
	datab => \LUT_DATA[3]~31_combout\,
	datac => \time_records[3][13]~q\,
	datad => \LUT_DATA~30_combout\,
	combout => \LUT_DATA~33_combout\);

-- Location: LCCOMB_X109_Y35_N6
\LUT_DATA~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~34_combout\ = (\LUT_DATA[3]~29_combout\ & ((\LUT_DATA~33_combout\ & (\time_records[3][9]~q\)) # (!\LUT_DATA~33_combout\ & ((\time_records[3][5]~q\))))) # (!\LUT_DATA[3]~29_combout\ & (((\LUT_DATA~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA[3]~29_combout\,
	datab => \time_records[3][9]~q\,
	datac => \time_records[3][5]~q\,
	datad => \LUT_DATA~33_combout\,
	combout => \LUT_DATA~34_combout\);

-- Location: LCCOMB_X109_Y35_N20
\LUT_DATA~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~35_combout\ = (\LUT_DATA~34_combout\ & (!LUT_INDEX(3) & !LUT_INDEX(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA~34_combout\,
	datab => LUT_INDEX(3),
	datad => LUT_INDEX(4),
	combout => \LUT_DATA~35_combout\);

-- Location: FF_X112_Y35_N1
\time_records[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~13_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][1]~q\);

-- Location: LCCOMB_X111_Y35_N28
\LUT_DATA~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~9_combout\ = (\time_records[1][1]~q\ & !LUT_INDEX(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \time_records[1][1]~q\,
	datad => LUT_INDEX(0),
	combout => \LUT_DATA~9_combout\);

-- Location: LCCOMB_X107_Y35_N16
\LUT_DATA[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[3]~10_combout\ = (LUT_INDEX(3)) # (!LUT_INDEX(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datad => LUT_INDEX(2),
	combout => \LUT_DATA[3]~10_combout\);

-- Location: LCCOMB_X109_Y35_N0
\time_records~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~12_combout\ = (\reset~input_o\ & BCD(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => BCD(17),
	combout => \time_records~12_combout\);

-- Location: FF_X108_Y35_N11
\time_records[2][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~12_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][17]~q\);

-- Location: LCCOMB_X108_Y35_N0
\LUT_DATA[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[3]~3_combout\ = (LUT_INDEX(1) & LUT_INDEX(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_INDEX(1),
	datad => LUT_INDEX(4),
	combout => \LUT_DATA[3]~3_combout\);

-- Location: FF_X108_Y35_N5
\time_records[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~11_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][13]~q\);

-- Location: FF_X110_Y35_N7
\time_records[0][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~12_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][17]~q\);

-- Location: LCCOMB_X110_Y35_N6
\LUT_DATA~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~4_combout\ = (\time_records[0][17]~q\ & LUT_INDEX(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \time_records[0][17]~q\,
	datad => LUT_INDEX(0),
	combout => \LUT_DATA~4_combout\);

-- Location: LCCOMB_X110_Y35_N16
\LUT_DATA[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[3]~5_combout\ = ((!LUT_INDEX(0) & !LUT_INDEX(4))) # (!LUT_INDEX(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(4),
	datad => LUT_INDEX(1),
	combout => \LUT_DATA[3]~5_combout\);

-- Location: FF_X110_Y35_N13
\time_records[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~11_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][13]~q\);

-- Location: LCCOMB_X110_Y35_N28
\LUT_DATA[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[3]~6_combout\ = (LUT_INDEX(1) & ((LUT_INDEX(0)) # (!LUT_INDEX(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(4),
	datad => LUT_INDEX(1),
	combout => \LUT_DATA[3]~6_combout\);

-- Location: LCCOMB_X110_Y35_N12
\LUT_DATA~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~7_combout\ = (\LUT_DATA[3]~5_combout\ & ((\LUT_DATA[3]~6_combout\ & ((\time_records[0][13]~q\))) # (!\LUT_DATA[3]~6_combout\ & (\LUT_DATA~4_combout\)))) # (!\LUT_DATA[3]~5_combout\ & (((\LUT_DATA[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA~4_combout\,
	datab => \LUT_DATA[3]~5_combout\,
	datac => \time_records[0][13]~q\,
	datad => \LUT_DATA[3]~6_combout\,
	combout => \LUT_DATA~7_combout\);

-- Location: LCCOMB_X108_Y35_N4
\LUT_DATA~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~8_combout\ = (\LUT_DATA[3]~3_combout\ & ((\LUT_DATA~7_combout\ & ((\time_records[2][13]~q\))) # (!\LUT_DATA~7_combout\ & (\time_records[2][17]~q\)))) # (!\LUT_DATA[3]~3_combout\ & (((\LUT_DATA~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_records[2][17]~q\,
	datab => \LUT_DATA[3]~3_combout\,
	datac => \time_records[2][13]~q\,
	datad => \LUT_DATA~7_combout\,
	combout => \LUT_DATA~8_combout\);

-- Location: LCCOMB_X106_Y34_N0
\LUT_DATA[3]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[3]~25_combout\ = (LUT_INDEX(2) & ((LUT_INDEX(3)) # ((!LUT_INDEX(1) & LUT_INDEX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datab => LUT_INDEX(4),
	datac => LUT_INDEX(2),
	datad => LUT_INDEX(3),
	combout => \LUT_DATA[3]~25_combout\);

-- Location: LCCOMB_X106_Y35_N26
\LUT_DATA[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[3]~26_combout\ = (\LUT_DATA[3]~10_combout\ & (((\LUT_DATA[3]~25_combout\) # (!\LUT_DATA[3]~3_combout\)) # (!LUT_INDEX(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => \LUT_DATA[3]~25_combout\,
	datac => \LUT_DATA[3]~3_combout\,
	datad => \LUT_DATA[3]~10_combout\,
	combout => \LUT_DATA[3]~26_combout\);

-- Location: LCCOMB_X106_Y35_N6
\LUT_DATA[3]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[3]~20_combout\ = (LUT_INDEX(4) & ((LUT_INDEX(0)) # (!LUT_INDEX(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(4),
	combout => \LUT_DATA[3]~20_combout\);

-- Location: FF_X111_Y35_N29
\time_records[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~13_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][1]~q\);

-- Location: LCCOMB_X110_Y35_N10
\LUT_DATA~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~19_combout\ = (\time_records[2][1]~q\ & !LUT_INDEX(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \time_records[2][1]~q\,
	datad => LUT_INDEX(0),
	combout => \LUT_DATA~19_combout\);

-- Location: FF_X109_Y35_N25
\time_records[3][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~12_combout\,
	sload => VCC,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][17]~q\);

-- Location: FF_X108_Y35_N21
\time_records[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~11_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][13]~q\);

-- Location: FF_X108_Y35_N15
\time_records[1][17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~12_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][17]~q\);

-- Location: LCCOMB_X107_Y34_N0
\LUT_DATA[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[3]~21_combout\ = (LUT_INDEX(4) & (LUT_INDEX(1))) # (!LUT_INDEX(4) & ((LUT_INDEX(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(4),
	combout => \LUT_DATA[3]~21_combout\);

-- Location: LCCOMB_X108_Y35_N14
\LUT_DATA~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~22_combout\ = (LUT_INDEX(4) & (((!\LUT_DATA[3]~21_combout\)))) # (!LUT_INDEX(4) & ((\LUT_DATA[3]~21_combout\ & (\time_records[1][13]~q\)) # (!\LUT_DATA[3]~21_combout\ & ((\time_records[1][17]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => \time_records[1][13]~q\,
	datac => \time_records[1][17]~q\,
	datad => \LUT_DATA[3]~21_combout\,
	combout => \LUT_DATA~22_combout\);

-- Location: LCCOMB_X109_Y35_N24
\LUT_DATA~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~23_combout\ = (\LUT_DATA[3]~20_combout\ & ((\LUT_DATA~22_combout\ & (\LUT_DATA~19_combout\)) # (!\LUT_DATA~22_combout\ & ((\time_records[3][17]~q\))))) # (!\LUT_DATA[3]~20_combout\ & (((\LUT_DATA~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA[3]~20_combout\,
	datab => \LUT_DATA~19_combout\,
	datac => \time_records[3][17]~q\,
	datad => \LUT_DATA~22_combout\,
	combout => \LUT_DATA~23_combout\);

-- Location: LCCOMB_X106_Y35_N8
\LUT_DATA~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~24_combout\ = (\LUT_DATA~23_combout\ & ((LUT_INDEX(4)) # (LUT_INDEX(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => LUT_INDEX(1),
	datad => \LUT_DATA~23_combout\,
	combout => \LUT_DATA~24_combout\);

-- Location: FF_X107_Y35_N27
\time_records[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~13_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][1]~q\);

-- Location: LCCOMB_X107_Y35_N26
\LUT_DATA~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~11_combout\ = ((\time_records[0][1]~q\) # (!LUT_INDEX(0))) # (!LUT_INDEX(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(0),
	datac => \time_records[0][1]~q\,
	combout => \LUT_DATA~11_combout\);

-- Location: LCCOMB_X107_Y34_N28
\LUT_DATA[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[3]~12_combout\ = (LUT_INDEX(1) & ((LUT_INDEX(3)) # (!LUT_INDEX(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datac => LUT_INDEX(3),
	datad => LUT_INDEX(1),
	combout => \LUT_DATA[3]~12_combout\);

-- Location: FF_X107_Y35_N5
\time_records[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~14_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][5]~q\);

-- Location: FF_X108_Y35_N27
\time_records[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~14_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][5]~q\);

-- Location: FF_X107_Y35_N9
\time_records[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~14_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][5]~q\);

-- Location: LCCOMB_X107_Y34_N2
\LUT_DATA[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[3]~13_combout\ = (LUT_INDEX(4) & ((LUT_INDEX(3)))) # (!LUT_INDEX(4) & (LUT_INDEX(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(3),
	datad => LUT_INDEX(4),
	combout => \LUT_DATA[3]~13_combout\);

-- Location: FF_X107_Y35_N1
\time_records[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~15_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][9]~q\);

-- Location: FF_X108_Y35_N1
\time_records[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~15_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][9]~q\);

-- Location: FF_X107_Y35_N19
\time_records[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~15_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][9]~q\);

-- Location: LCCOMB_X107_Y35_N18
\LUT_DATA~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~14_combout\ = (LUT_INDEX(4) & ((\time_records[1][9]~q\) # ((\LUT_DATA[3]~13_combout\)))) # (!LUT_INDEX(4) & (((\time_records[0][9]~q\ & !\LUT_DATA[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => \time_records[1][9]~q\,
	datac => \time_records[0][9]~q\,
	datad => \LUT_DATA[3]~13_combout\,
	combout => \LUT_DATA~14_combout\);

-- Location: LCCOMB_X107_Y35_N0
\LUT_DATA~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~15_combout\ = (\LUT_DATA[3]~13_combout\ & ((\LUT_DATA~14_combout\ & ((\time_records[2][9]~q\))) # (!\LUT_DATA~14_combout\ & (\time_records[0][5]~q\)))) # (!\LUT_DATA[3]~13_combout\ & (((\LUT_DATA~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_records[0][5]~q\,
	datab => \LUT_DATA[3]~13_combout\,
	datac => \time_records[2][9]~q\,
	datad => \LUT_DATA~14_combout\,
	combout => \LUT_DATA~15_combout\);

-- Location: LCCOMB_X107_Y35_N14
\LUT_DATA~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~16_combout\ = (LUT_INDEX(4) & (((\LUT_DATA~15_combout\)) # (!LUT_INDEX(0)))) # (!LUT_INDEX(4) & (((LUT_INDEX(3) & \LUT_DATA~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => LUT_INDEX(0),
	datac => LUT_INDEX(3),
	datad => \LUT_DATA~15_combout\,
	combout => \LUT_DATA~16_combout\);

-- Location: LCCOMB_X108_Y35_N26
\LUT_DATA~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~17_combout\ = (\LUT_DATA[3]~12_combout\ & (\LUT_DATA[3]~3_combout\)) # (!\LUT_DATA[3]~12_combout\ & ((\LUT_DATA[3]~3_combout\ & (\time_records[1][5]~q\)) # (!\LUT_DATA[3]~3_combout\ & ((\LUT_DATA~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA[3]~12_combout\,
	datab => \LUT_DATA[3]~3_combout\,
	datac => \time_records[1][5]~q\,
	datad => \LUT_DATA~16_combout\,
	combout => \LUT_DATA~17_combout\);

-- Location: LCCOMB_X107_Y35_N4
\LUT_DATA~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~18_combout\ = (\LUT_DATA[3]~12_combout\ & ((\LUT_DATA~17_combout\ & ((\time_records[2][5]~q\))) # (!\LUT_DATA~17_combout\ & (\LUT_DATA~11_combout\)))) # (!\LUT_DATA[3]~12_combout\ & (((\LUT_DATA~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA~11_combout\,
	datab => \LUT_DATA[3]~12_combout\,
	datac => \time_records[2][5]~q\,
	datad => \LUT_DATA~17_combout\,
	combout => \LUT_DATA~18_combout\);

-- Location: LCCOMB_X106_Y35_N20
\LUT_DATA~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~27_combout\ = (\LUT_DATA[3]~26_combout\ & ((\LUT_DATA[3]~25_combout\ & (\LUT_DATA~24_combout\)) # (!\LUT_DATA[3]~25_combout\ & ((\LUT_DATA~18_combout\))))) # (!\LUT_DATA[3]~26_combout\ & (!\LUT_DATA[3]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA[3]~26_combout\,
	datab => \LUT_DATA[3]~25_combout\,
	datac => \LUT_DATA~24_combout\,
	datad => \LUT_DATA~18_combout\,
	combout => \LUT_DATA~27_combout\);

-- Location: LCCOMB_X106_Y35_N2
\LUT_DATA~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~28_combout\ = (\LUT_DATA[3]~10_combout\ & (((\LUT_DATA~27_combout\)))) # (!\LUT_DATA[3]~10_combout\ & ((\LUT_DATA~27_combout\ & ((\LUT_DATA~8_combout\))) # (!\LUT_DATA~27_combout\ & (\LUT_DATA~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA~9_combout\,
	datab => \LUT_DATA[3]~10_combout\,
	datac => \LUT_DATA~8_combout\,
	datad => \LUT_DATA~27_combout\,
	combout => \LUT_DATA~28_combout\);

-- Location: LCCOMB_X106_Y35_N24
\LUT_DATA[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[1]~0_combout\ = (LUT_INDEX(5) & (\LUT_DATA~35_combout\)) # (!LUT_INDEX(5) & ((\LUT_DATA~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA~35_combout\,
	datab => LUT_INDEX(5),
	datad => \LUT_DATA~28_combout\,
	combout => \LUT_DATA[1]~0_combout\);

-- Location: LCCOMB_X106_Y34_N6
\WideOr2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~4_combout\ = (!LUT_INDEX(0) & (!LUT_INDEX(4) & (!LUT_INDEX(1) & !LUT_INDEX(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(4),
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(3),
	combout => \WideOr2~4_combout\);

-- Location: LCCOMB_X106_Y34_N14
\WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~0_combout\ = (!LUT_INDEX(4) & (LUT_INDEX(0) & (!LUT_INDEX(1) & !LUT_INDEX(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => LUT_INDEX(0),
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(3),
	combout => \WideOr2~0_combout\);

-- Location: LCCOMB_X106_Y34_N16
\WideOr2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~1_combout\ = (LUT_INDEX(0) & (!LUT_INDEX(4) & (LUT_INDEX(1) & !LUT_INDEX(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(4),
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(3),
	combout => \WideOr2~1_combout\);

-- Location: LCCOMB_X106_Y34_N10
\WideOr2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~2_combout\ = (LUT_INDEX(0) & (LUT_INDEX(1) & ((LUT_INDEX(4)) # (!LUT_INDEX(3))))) # (!LUT_INDEX(0) & (LUT_INDEX(4) $ ((LUT_INDEX(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(4),
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(3),
	combout => \WideOr2~2_combout\);

-- Location: LCCOMB_X106_Y34_N24
\WideOr2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~3_combout\ = (LUT_INDEX(5) & (((LUT_INDEX(2))))) # (!LUT_INDEX(5) & ((LUT_INDEX(2) & (\WideOr2~1_combout\)) # (!LUT_INDEX(2) & ((\WideOr2~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(5),
	datab => \WideOr2~1_combout\,
	datac => LUT_INDEX(2),
	datad => \WideOr2~2_combout\,
	combout => \WideOr2~3_combout\);

-- Location: LCCOMB_X106_Y34_N12
\WideOr2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~5_combout\ = (LUT_INDEX(5) & ((\WideOr2~3_combout\ & (\WideOr2~4_combout\)) # (!\WideOr2~3_combout\ & ((\WideOr2~0_combout\))))) # (!LUT_INDEX(5) & (((\WideOr2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~4_combout\,
	datab => \WideOr2~0_combout\,
	datac => LUT_INDEX(5),
	datad => \WideOr2~3_combout\,
	combout => \WideOr2~5_combout\);

-- Location: FF_X106_Y35_N25
\LUT_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_DATA[1]~0_combout\,
	asdata => \WideOr2~5_combout\,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(1));

-- Location: LCCOMB_X108_Y34_N26
\mLCD_DATA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~2_combout\ = (!\Btn_start_stop_stable~q\ & (!\Btn_split_stable~q\ & (LUT_DATA(1) & \oRESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Btn_start_stop_stable~q\,
	datab => \Btn_split_stable~q\,
	datac => LUT_DATA(1),
	datad => \oRESET~q\,
	combout => \mLCD_DATA~2_combout\);

-- Location: FF_X108_Y34_N27
\mLCD_DATA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~2_combout\,
	ena => \mLCD_DATA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(1));

-- Location: LCCOMB_X110_Y35_N14
\time_records~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~18_combout\ = (BCD(2) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(2),
	datad => \reset~input_o\,
	combout => \time_records~18_combout\);

-- Location: FF_X109_Y35_N9
\time_records[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~18_combout\,
	sload => VCC,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][2]~q\);

-- Location: LCCOMB_X109_Y35_N26
\LUT_DATA~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~52_combout\ = (!LUT_INDEX(1) & ((\time_records[3][2]~q\) # (!LUT_INDEX(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => \time_records[3][2]~q\,
	datad => LUT_INDEX(1),
	combout => \LUT_DATA~52_combout\);

-- Location: LCCOMB_X109_Y35_N8
\time_records~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~16_combout\ = (\reset~input_o\ & BCD(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => BCD(14),
	combout => \time_records~16_combout\);

-- Location: FF_X109_Y35_N3
\time_records[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~16_combout\,
	sload => VCC,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][14]~q\);

-- Location: LCCOMB_X109_Y35_N2
\LUT_DATA~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~53_combout\ = (\LUT_DATA[3]~31_combout\ & ((\LUT_DATA[3]~32_combout\ & (\LUT_DATA~52_combout\)) # (!\LUT_DATA[3]~32_combout\ & ((\time_records[3][14]~q\))))) # (!\LUT_DATA[3]~31_combout\ & (((\LUT_DATA[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA~52_combout\,
	datab => \LUT_DATA[3]~31_combout\,
	datac => \time_records[3][14]~q\,
	datad => \LUT_DATA[3]~32_combout\,
	combout => \LUT_DATA~53_combout\);

-- Location: LCCOMB_X112_Y35_N10
\time_records~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~20_combout\ = (\reset~input_o\ & BCD(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => BCD(10),
	combout => \time_records~20_combout\);

-- Location: FF_X109_Y35_N5
\time_records[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~20_combout\,
	sload => VCC,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][10]~q\);

-- Location: LCCOMB_X108_Y35_N28
\time_records~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~19_combout\ = (BCD(6) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(6),
	datad => \reset~input_o\,
	combout => \time_records~19_combout\);

-- Location: FF_X109_Y35_N13
\time_records[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~19_combout\,
	sload => VCC,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][6]~q\);

-- Location: LCCOMB_X109_Y35_N4
\LUT_DATA~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~54_combout\ = (\LUT_DATA[3]~29_combout\ & ((\LUT_DATA~53_combout\ & ((\time_records[3][6]~q\))) # (!\LUT_DATA~53_combout\ & (\time_records[3][10]~q\)))) # (!\LUT_DATA[3]~29_combout\ & (\LUT_DATA~53_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA[3]~29_combout\,
	datab => \LUT_DATA~53_combout\,
	datac => \time_records[3][10]~q\,
	datad => \time_records[3][6]~q\,
	combout => \LUT_DATA~54_combout\);

-- Location: LCCOMB_X108_Y35_N22
\LUT_DATA~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~55_combout\ = (!LUT_INDEX(4) & (!LUT_INDEX(3) & \LUT_DATA~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => LUT_INDEX(3),
	datad => \LUT_DATA~54_combout\,
	combout => \LUT_DATA~55_combout\);

-- Location: FF_X110_Y35_N27
\time_records[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~18_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][2]~q\);

-- Location: LCCOMB_X107_Y35_N30
\LUT_DATA~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~39_combout\ = (!LUT_INDEX(0) & \time_records[1][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_INDEX(0),
	datad => \time_records[1][2]~q\,
	combout => \LUT_DATA~39_combout\);

-- Location: LCCOMB_X105_Y35_N12
\time_records[2][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records[2][14]~feeder_combout\ = \time_records~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_records~16_combout\,
	combout => \time_records[2][14]~feeder_combout\);

-- Location: FF_X105_Y35_N13
\time_records[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \time_records[2][14]~feeder_combout\,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][14]~q\);

-- Location: LCCOMB_X111_Y35_N2
\time_records~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~17_combout\ = (\reset~input_o\ & BCD(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => BCD(18),
	combout => \time_records~17_combout\);

-- Location: FF_X111_Y35_N11
\time_records[2][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~17_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][18]~q\);

-- Location: FF_X110_Y35_N11
\time_records[0][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~17_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][18]~q\);

-- Location: LCCOMB_X110_Y35_N26
\LUT_DATA~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~36_combout\ = (\time_records[0][18]~q\ & LUT_INDEX(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_records[0][18]~q\,
	datad => LUT_INDEX(0),
	combout => \LUT_DATA~36_combout\);

-- Location: FF_X110_Y35_N1
\time_records[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~16_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][14]~q\);

-- Location: LCCOMB_X110_Y35_N0
\LUT_DATA~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~37_combout\ = (\LUT_DATA[3]~6_combout\ & (((\time_records[0][14]~q\ & \LUT_DATA[3]~5_combout\)))) # (!\LUT_DATA[3]~6_combout\ & ((\LUT_DATA~36_combout\) # ((!\LUT_DATA[3]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA~36_combout\,
	datab => \LUT_DATA[3]~6_combout\,
	datac => \time_records[0][14]~q\,
	datad => \LUT_DATA[3]~5_combout\,
	combout => \LUT_DATA~37_combout\);

-- Location: LCCOMB_X105_Y35_N6
\LUT_DATA~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~38_combout\ = (\LUT_DATA[3]~3_combout\ & ((\LUT_DATA~37_combout\ & ((\time_records[2][18]~q\))) # (!\LUT_DATA~37_combout\ & (\time_records[2][14]~q\)))) # (!\LUT_DATA[3]~3_combout\ & (((\LUT_DATA~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_records[2][14]~q\,
	datab => \time_records[2][18]~q\,
	datac => \LUT_DATA[3]~3_combout\,
	datad => \LUT_DATA~37_combout\,
	combout => \LUT_DATA~38_combout\);

-- Location: FF_X109_Y35_N15
\time_records[3][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~17_combout\,
	sload => VCC,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][18]~q\);

-- Location: FF_X108_Y35_N29
\time_records[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~16_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][14]~q\);

-- Location: FF_X108_Y35_N23
\time_records[1][18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~17_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][18]~q\);

-- Location: LCCOMB_X106_Y35_N28
\LUT_DATA~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~47_combout\ = (LUT_INDEX(4) & (((!\LUT_DATA[3]~21_combout\)))) # (!LUT_INDEX(4) & ((\LUT_DATA[3]~21_combout\ & (\time_records[1][14]~q\)) # (!\LUT_DATA[3]~21_combout\ & ((\time_records[1][18]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => \time_records[1][14]~q\,
	datac => \time_records[1][18]~q\,
	datad => \LUT_DATA[3]~21_combout\,
	combout => \LUT_DATA~47_combout\);

-- Location: FF_X105_Y35_N5
\time_records[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~18_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][2]~q\);

-- Location: LCCOMB_X105_Y35_N4
\LUT_DATA~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~46_combout\ = (\time_records[2][2]~q\ & !LUT_INDEX(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \time_records[2][2]~q\,
	datad => LUT_INDEX(0),
	combout => \LUT_DATA~46_combout\);

-- Location: LCCOMB_X106_Y35_N22
\LUT_DATA~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~48_combout\ = (\LUT_DATA~47_combout\ & (((\LUT_DATA~46_combout\) # (!\LUT_DATA[3]~20_combout\)))) # (!\LUT_DATA~47_combout\ & (\time_records[3][18]~q\ & ((\LUT_DATA[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_records[3][18]~q\,
	datab => \LUT_DATA~47_combout\,
	datac => \LUT_DATA~46_combout\,
	datad => \LUT_DATA[3]~20_combout\,
	combout => \LUT_DATA~48_combout\);

-- Location: LCCOMB_X106_Y35_N4
\LUT_DATA~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~49_combout\ = (\LUT_DATA~48_combout\ & ((LUT_INDEX(4)) # (LUT_INDEX(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => LUT_INDEX(1),
	datac => \LUT_DATA~48_combout\,
	combout => \LUT_DATA~49_combout\);

-- Location: FF_X107_Y35_N25
\time_records[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~18_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][2]~q\);

-- Location: LCCOMB_X107_Y35_N24
\LUT_DATA~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~40_combout\ = (LUT_INDEX(3) & ((\time_records[0][2]~q\) # (!LUT_INDEX(0)))) # (!LUT_INDEX(3) & (LUT_INDEX(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(0),
	datac => \time_records[0][2]~q\,
	combout => \LUT_DATA~40_combout\);

-- Location: FF_X107_Y35_N29
\time_records[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~19_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][6]~q\);

-- Location: FF_X108_Y35_N17
\time_records[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~19_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][6]~q\);

-- Location: FF_X107_Y35_N17
\time_records[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~19_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][6]~q\);

-- Location: FF_X107_Y35_N21
\time_records[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~20_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][10]~q\);

-- Location: FF_X108_Y35_N19
\time_records[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~20_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][10]~q\);

-- Location: FF_X107_Y35_N3
\time_records[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~20_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][10]~q\);

-- Location: LCCOMB_X107_Y35_N2
\LUT_DATA~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~41_combout\ = (LUT_INDEX(4) & ((\time_records[1][10]~q\) # ((\LUT_DATA[3]~13_combout\)))) # (!LUT_INDEX(4) & (((\time_records[0][10]~q\ & !\LUT_DATA[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => \time_records[1][10]~q\,
	datac => \time_records[0][10]~q\,
	datad => \LUT_DATA[3]~13_combout\,
	combout => \LUT_DATA~41_combout\);

-- Location: LCCOMB_X107_Y35_N20
\LUT_DATA~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~42_combout\ = (\LUT_DATA[3]~13_combout\ & ((\LUT_DATA~41_combout\ & ((\time_records[2][10]~q\))) # (!\LUT_DATA~41_combout\ & (\time_records[0][6]~q\)))) # (!\LUT_DATA[3]~13_combout\ & (((\LUT_DATA~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA[3]~13_combout\,
	datab => \time_records[0][6]~q\,
	datac => \time_records[2][10]~q\,
	datad => \LUT_DATA~41_combout\,
	combout => \LUT_DATA~42_combout\);

-- Location: LCCOMB_X107_Y35_N10
\LUT_DATA~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~43_combout\ = (LUT_INDEX(4) & (LUT_INDEX(0) & ((\LUT_DATA~42_combout\)))) # (!LUT_INDEX(4) & ((LUT_INDEX(3) & ((\LUT_DATA~42_combout\))) # (!LUT_INDEX(3) & (LUT_INDEX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => LUT_INDEX(0),
	datac => LUT_INDEX(3),
	datad => \LUT_DATA~42_combout\,
	combout => \LUT_DATA~43_combout\);

-- Location: LCCOMB_X108_Y35_N16
\LUT_DATA~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~44_combout\ = (\LUT_DATA[3]~12_combout\ & (\LUT_DATA[3]~3_combout\)) # (!\LUT_DATA[3]~12_combout\ & ((\LUT_DATA[3]~3_combout\ & (\time_records[1][6]~q\)) # (!\LUT_DATA[3]~3_combout\ & ((\LUT_DATA~43_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA[3]~12_combout\,
	datab => \LUT_DATA[3]~3_combout\,
	datac => \time_records[1][6]~q\,
	datad => \LUT_DATA~43_combout\,
	combout => \LUT_DATA~44_combout\);

-- Location: LCCOMB_X107_Y35_N28
\LUT_DATA~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~45_combout\ = (\LUT_DATA[3]~12_combout\ & ((\LUT_DATA~44_combout\ & ((\time_records[2][6]~q\))) # (!\LUT_DATA~44_combout\ & (\LUT_DATA~40_combout\)))) # (!\LUT_DATA[3]~12_combout\ & (((\LUT_DATA~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA~40_combout\,
	datab => \LUT_DATA[3]~12_combout\,
	datac => \time_records[2][6]~q\,
	datad => \LUT_DATA~44_combout\,
	combout => \LUT_DATA~45_combout\);

-- Location: LCCOMB_X106_Y35_N10
\LUT_DATA~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~50_combout\ = (\LUT_DATA[3]~26_combout\ & ((\LUT_DATA[3]~25_combout\ & (\LUT_DATA~49_combout\)) # (!\LUT_DATA[3]~25_combout\ & ((\LUT_DATA~45_combout\))))) # (!\LUT_DATA[3]~26_combout\ & (!\LUT_DATA[3]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA[3]~26_combout\,
	datab => \LUT_DATA[3]~25_combout\,
	datac => \LUT_DATA~49_combout\,
	datad => \LUT_DATA~45_combout\,
	combout => \LUT_DATA~50_combout\);

-- Location: LCCOMB_X106_Y35_N16
\LUT_DATA~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~51_combout\ = (\LUT_DATA[3]~10_combout\ & (((\LUT_DATA~50_combout\)))) # (!\LUT_DATA[3]~10_combout\ & ((\LUT_DATA~50_combout\ & ((\LUT_DATA~38_combout\))) # (!\LUT_DATA~50_combout\ & (\LUT_DATA~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA~39_combout\,
	datab => \LUT_DATA[3]~10_combout\,
	datac => \LUT_DATA~38_combout\,
	datad => \LUT_DATA~50_combout\,
	combout => \LUT_DATA~51_combout\);

-- Location: LCCOMB_X106_Y35_N30
\LUT_DATA[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[2]~1_combout\ = (LUT_INDEX(5) & (\LUT_DATA~55_combout\)) # (!LUT_INDEX(5) & ((\LUT_DATA~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(5),
	datab => \LUT_DATA~55_combout\,
	datad => \LUT_DATA~51_combout\,
	combout => \LUT_DATA[2]~1_combout\);

-- Location: LCCOMB_X106_Y34_N18
\WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~0_combout\ = (LUT_INDEX(1) & (LUT_INDEX(0) $ (((!LUT_INDEX(4) & LUT_INDEX(3)))))) # (!LUT_INDEX(1) & (!LUT_INDEX(4) & (LUT_INDEX(0) & !LUT_INDEX(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datab => LUT_INDEX(4),
	datac => LUT_INDEX(0),
	datad => LUT_INDEX(3),
	combout => \WideOr1~0_combout\);

-- Location: LCCOMB_X106_Y34_N8
\WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr1~1_combout\ = (LUT_INDEX(5) & (((LUT_INDEX(2) & \WideOr2~4_combout\)))) # (!LUT_INDEX(5) & (\WideOr1~0_combout\ & (!LUT_INDEX(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(5),
	datab => \WideOr1~0_combout\,
	datac => LUT_INDEX(2),
	datad => \WideOr2~4_combout\,
	combout => \WideOr1~1_combout\);

-- Location: FF_X106_Y35_N31
\LUT_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_DATA[2]~1_combout\,
	asdata => \WideOr1~1_combout\,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(2));

-- Location: LCCOMB_X108_Y34_N8
\mLCD_DATA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~3_combout\ = (LUT_DATA(2) & (\oRESET~q\ & (!\Btn_start_stop_stable~q\ & !\Btn_split_stable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_DATA(2),
	datab => \oRESET~q\,
	datac => \Btn_start_stop_stable~q\,
	datad => \Btn_split_stable~q\,
	combout => \mLCD_DATA~3_combout\);

-- Location: FF_X108_Y34_N9
\mLCD_DATA[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~3_combout\,
	ena => \mLCD_DATA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(2));

-- Location: LCCOMB_X108_Y35_N10
\time_records~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~24_combout\ = (\reset~input_o\ & BCD(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => BCD(7),
	combout => \time_records~24_combout\);

-- Location: FF_X109_Y35_N21
\time_records[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~24_combout\,
	sload => VCC,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][7]~q\);

-- Location: LCCOMB_X108_Y35_N20
\time_records~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~25_combout\ = (\reset~input_o\ & BCD(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => BCD(11),
	combout => \time_records~25_combout\);

-- Location: FF_X109_Y35_N23
\time_records[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~25_combout\,
	sload => VCC,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][11]~q\);

-- Location: LCCOMB_X111_Y35_N22
\time_records~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~23_combout\ = (\reset~input_o\ & BCD(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => BCD(3),
	combout => \time_records~23_combout\);

-- Location: FF_X109_Y35_N27
\time_records[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~23_combout\,
	sload => VCC,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][3]~q\);

-- Location: LCCOMB_X108_Y35_N12
\LUT_DATA~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~72_combout\ = (!LUT_INDEX(1) & ((\time_records[3][3]~q\) # (!LUT_INDEX(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(1),
	datad => \time_records[3][3]~q\,
	combout => \LUT_DATA~72_combout\);

-- Location: LCCOMB_X110_Y35_N20
\time_records~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~21_combout\ = (BCD(15) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => BCD(15),
	datad => \reset~input_o\,
	combout => \time_records~21_combout\);

-- Location: FF_X109_Y35_N17
\time_records[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~21_combout\,
	sload => VCC,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][15]~q\);

-- Location: LCCOMB_X109_Y35_N16
\LUT_DATA~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~73_combout\ = (\LUT_DATA[3]~31_combout\ & ((\LUT_DATA[3]~32_combout\ & (\LUT_DATA~72_combout\)) # (!\LUT_DATA[3]~32_combout\ & ((\time_records[3][15]~q\))))) # (!\LUT_DATA[3]~31_combout\ & (((!\LUT_DATA[3]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA~72_combout\,
	datab => \LUT_DATA[3]~31_combout\,
	datac => \time_records[3][15]~q\,
	datad => \LUT_DATA[3]~32_combout\,
	combout => \LUT_DATA~73_combout\);

-- Location: LCCOMB_X109_Y35_N22
\LUT_DATA~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~74_combout\ = (\LUT_DATA[3]~29_combout\ & ((\LUT_DATA~73_combout\ & ((\time_records[3][11]~q\))) # (!\LUT_DATA~73_combout\ & (\time_records[3][7]~q\)))) # (!\LUT_DATA[3]~29_combout\ & (((\LUT_DATA~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA[3]~29_combout\,
	datab => \time_records[3][7]~q\,
	datac => \time_records[3][11]~q\,
	datad => \LUT_DATA~73_combout\,
	combout => \LUT_DATA~74_combout\);

-- Location: LCCOMB_X109_Y35_N14
\LUT_DATA~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~75_combout\ = (\LUT_DATA~74_combout\ & (!LUT_INDEX(3) & !LUT_INDEX(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA~74_combout\,
	datab => LUT_INDEX(3),
	datad => LUT_INDEX(4),
	combout => \LUT_DATA~75_combout\);

-- Location: FF_X108_Y35_N9
\time_records[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~21_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][15]~q\);

-- Location: LCCOMB_X111_Y35_N16
\time_records~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \time_records~22_combout\ = (BCD(19) & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => BCD(19),
	datad => \reset~input_o\,
	combout => \time_records~22_combout\);

-- Location: FF_X105_Y35_N27
\time_records[2][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~22_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][19]~q\);

-- Location: FF_X110_Y35_N31
\time_records[0][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~22_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][19]~q\);

-- Location: LCCOMB_X110_Y35_N30
\LUT_DATA~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~56_combout\ = (\time_records[0][19]~q\ & LUT_INDEX(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \time_records[0][19]~q\,
	datad => LUT_INDEX(0),
	combout => \LUT_DATA~56_combout\);

-- Location: FF_X110_Y35_N25
\time_records[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~21_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][15]~q\);

-- Location: LCCOMB_X110_Y35_N24
\LUT_DATA~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~57_combout\ = (\LUT_DATA[3]~5_combout\ & ((\LUT_DATA[3]~6_combout\ & ((\time_records[0][15]~q\))) # (!\LUT_DATA[3]~6_combout\ & (\LUT_DATA~56_combout\)))) # (!\LUT_DATA[3]~5_combout\ & (((\LUT_DATA[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA~56_combout\,
	datab => \LUT_DATA[3]~5_combout\,
	datac => \time_records[0][15]~q\,
	datad => \LUT_DATA[3]~6_combout\,
	combout => \LUT_DATA~57_combout\);

-- Location: LCCOMB_X105_Y35_N26
\LUT_DATA~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~58_combout\ = (\LUT_DATA[3]~3_combout\ & ((\LUT_DATA~57_combout\ & (\time_records[2][15]~q\)) # (!\LUT_DATA~57_combout\ & ((\time_records[2][19]~q\))))) # (!\LUT_DATA[3]~3_combout\ & (((\LUT_DATA~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA[3]~3_combout\,
	datab => \time_records[2][15]~q\,
	datac => \time_records[2][19]~q\,
	datad => \LUT_DATA~57_combout\,
	combout => \LUT_DATA~58_combout\);

-- Location: FF_X109_Y35_N1
\time_records[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~23_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][3]~q\);

-- Location: LCCOMB_X107_Y35_N8
\LUT_DATA~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~59_combout\ = (!LUT_INDEX(0) & \time_records[1][3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => LUT_INDEX(0),
	datad => \time_records[1][3]~q\,
	combout => \LUT_DATA~59_combout\);

-- Location: FF_X111_Y35_N17
\time_records[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~23_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][3]~q\);

-- Location: LCCOMB_X110_Y35_N4
\LUT_DATA~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~66_combout\ = (\time_records[2][3]~q\ & !LUT_INDEX(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \time_records[2][3]~q\,
	datad => LUT_INDEX(0),
	combout => \LUT_DATA~66_combout\);

-- Location: FF_X110_Y35_N17
\time_records[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~21_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][15]~q\);

-- Location: FF_X109_Y35_N29
\time_records[1][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~22_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][19]~q\);

-- Location: LCCOMB_X109_Y35_N28
\LUT_DATA~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~67_combout\ = (LUT_INDEX(4) & (((!\LUT_DATA[3]~21_combout\)))) # (!LUT_INDEX(4) & ((\LUT_DATA[3]~21_combout\ & (\time_records[1][15]~q\)) # (!\LUT_DATA[3]~21_combout\ & ((\time_records[1][19]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => \time_records[1][15]~q\,
	datac => \time_records[1][19]~q\,
	datad => \LUT_DATA[3]~21_combout\,
	combout => \LUT_DATA~67_combout\);

-- Location: FF_X109_Y35_N19
\time_records[3][19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~22_combout\,
	sload => VCC,
	ena => \time_records[3][9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[3][19]~q\);

-- Location: LCCOMB_X109_Y35_N18
\LUT_DATA~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~68_combout\ = (\LUT_DATA~67_combout\ & ((\LUT_DATA~66_combout\) # ((!\LUT_DATA[3]~20_combout\)))) # (!\LUT_DATA~67_combout\ & (((\time_records[3][19]~q\ & \LUT_DATA[3]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA~66_combout\,
	datab => \LUT_DATA~67_combout\,
	datac => \time_records[3][19]~q\,
	datad => \LUT_DATA[3]~20_combout\,
	combout => \LUT_DATA~68_combout\);

-- Location: LCCOMB_X106_Y35_N14
\LUT_DATA~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~69_combout\ = (\LUT_DATA~68_combout\ & ((LUT_INDEX(4)) # (LUT_INDEX(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => LUT_INDEX(1),
	datad => \LUT_DATA~68_combout\,
	combout => \LUT_DATA~69_combout\);

-- Location: FF_X110_Y35_N21
\time_records[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~23_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][3]~q\);

-- Location: LCCOMB_X108_Y35_N18
\LUT_DATA~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~60_combout\ = (LUT_INDEX(3) & ((\time_records[0][3]~q\) # (!LUT_INDEX(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => \time_records[0][3]~q\,
	datad => LUT_INDEX(0),
	combout => \LUT_DATA~60_combout\);

-- Location: FF_X108_Y35_N7
\time_records[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~24_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][7]~q\);

-- Location: FF_X108_Y35_N3
\time_records[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~24_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][7]~q\);

-- Location: FF_X107_Y35_N31
\time_records[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~24_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][7]~q\);

-- Location: FF_X107_Y35_N13
\time_records[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~25_combout\,
	sload => VCC,
	ena => \time_records[2][18]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[2][11]~q\);

-- Location: FF_X108_Y35_N13
\time_records[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~25_combout\,
	sload => VCC,
	ena => \time_records[1][5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[1][11]~q\);

-- Location: FF_X107_Y35_N7
\time_records[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \time_records~25_combout\,
	sload => VCC,
	ena => \time_records[0][3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \time_records[0][11]~q\);

-- Location: LCCOMB_X107_Y35_N6
\LUT_DATA~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~61_combout\ = (LUT_INDEX(4) & ((\time_records[1][11]~q\) # ((\LUT_DATA[3]~13_combout\)))) # (!LUT_INDEX(4) & (((\time_records[0][11]~q\ & !\LUT_DATA[3]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => \time_records[1][11]~q\,
	datac => \time_records[0][11]~q\,
	datad => \LUT_DATA[3]~13_combout\,
	combout => \LUT_DATA~61_combout\);

-- Location: LCCOMB_X107_Y35_N12
\LUT_DATA~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~62_combout\ = (\LUT_DATA[3]~13_combout\ & ((\LUT_DATA~61_combout\ & ((\time_records[2][11]~q\))) # (!\LUT_DATA~61_combout\ & (\time_records[0][7]~q\)))) # (!\LUT_DATA[3]~13_combout\ & (((\LUT_DATA~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \time_records[0][7]~q\,
	datab => \LUT_DATA[3]~13_combout\,
	datac => \time_records[2][11]~q\,
	datad => \LUT_DATA~61_combout\,
	combout => \LUT_DATA~62_combout\);

-- Location: LCCOMB_X107_Y35_N22
\LUT_DATA~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~63_combout\ = (\LUT_DATA~62_combout\) # ((LUT_INDEX(4) & (!LUT_INDEX(0))) # (!LUT_INDEX(4) & ((!LUT_INDEX(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => LUT_INDEX(0),
	datac => LUT_INDEX(3),
	datad => \LUT_DATA~62_combout\,
	combout => \LUT_DATA~63_combout\);

-- Location: LCCOMB_X108_Y35_N2
\LUT_DATA~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~64_combout\ = (\LUT_DATA[3]~12_combout\ & (\LUT_DATA[3]~3_combout\)) # (!\LUT_DATA[3]~12_combout\ & ((\LUT_DATA[3]~3_combout\ & (\time_records[1][7]~q\)) # (!\LUT_DATA[3]~3_combout\ & ((\LUT_DATA~63_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA[3]~12_combout\,
	datab => \LUT_DATA[3]~3_combout\,
	datac => \time_records[1][7]~q\,
	datad => \LUT_DATA~63_combout\,
	combout => \LUT_DATA~64_combout\);

-- Location: LCCOMB_X108_Y35_N6
\LUT_DATA~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~65_combout\ = (\LUT_DATA[3]~12_combout\ & ((\LUT_DATA~64_combout\ & ((\time_records[2][7]~q\))) # (!\LUT_DATA~64_combout\ & (\LUT_DATA~60_combout\)))) # (!\LUT_DATA[3]~12_combout\ & (((\LUT_DATA~64_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA[3]~12_combout\,
	datab => \LUT_DATA~60_combout\,
	datac => \time_records[2][7]~q\,
	datad => \LUT_DATA~64_combout\,
	combout => \LUT_DATA~65_combout\);

-- Location: LCCOMB_X106_Y35_N0
\LUT_DATA~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~70_combout\ = (\LUT_DATA[3]~26_combout\ & ((\LUT_DATA[3]~25_combout\ & (\LUT_DATA~69_combout\)) # (!\LUT_DATA[3]~25_combout\ & ((\LUT_DATA~65_combout\))))) # (!\LUT_DATA[3]~26_combout\ & (!\LUT_DATA[3]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA[3]~26_combout\,
	datab => \LUT_DATA[3]~25_combout\,
	datac => \LUT_DATA~69_combout\,
	datad => \LUT_DATA~65_combout\,
	combout => \LUT_DATA~70_combout\);

-- Location: LCCOMB_X106_Y35_N18
\LUT_DATA~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~71_combout\ = (\LUT_DATA[3]~10_combout\ & (((\LUT_DATA~70_combout\)))) # (!\LUT_DATA[3]~10_combout\ & ((\LUT_DATA~70_combout\ & (\LUT_DATA~58_combout\)) # (!\LUT_DATA~70_combout\ & ((\LUT_DATA~59_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA~58_combout\,
	datab => \LUT_DATA[3]~10_combout\,
	datac => \LUT_DATA~59_combout\,
	datad => \LUT_DATA~70_combout\,
	combout => \LUT_DATA~71_combout\);

-- Location: LCCOMB_X106_Y35_N12
\LUT_DATA[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA[3]~2_combout\ = (LUT_INDEX(5) & (\LUT_DATA~75_combout\)) # (!LUT_INDEX(5) & ((\LUT_DATA~71_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LUT_DATA~75_combout\,
	datab => LUT_INDEX(5),
	datad => \LUT_DATA~71_combout\,
	combout => \LUT_DATA[3]~2_combout\);

-- Location: LCCOMB_X106_Y34_N2
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (LUT_INDEX(4) & (LUT_INDEX(0) $ ((LUT_INDEX(1))))) # (!LUT_INDEX(4) & ((LUT_INDEX(1) & ((LUT_INDEX(0)) # (!LUT_INDEX(3)))) # (!LUT_INDEX(1) & ((LUT_INDEX(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(4),
	datac => LUT_INDEX(1),
	datad => LUT_INDEX(3),
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X106_Y34_N20
\WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (LUT_INDEX(5) & (((LUT_INDEX(2))))) # (!LUT_INDEX(5) & ((LUT_INDEX(2) & (\WideOr2~1_combout\)) # (!LUT_INDEX(2) & ((!\WideOr0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(5),
	datab => \WideOr2~1_combout\,
	datac => LUT_INDEX(2),
	datad => \WideOr0~0_combout\,
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X106_Y34_N26
\WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~2_combout\ = (LUT_INDEX(5) & ((\WideOr0~1_combout\ & (\WideOr2~4_combout\)) # (!\WideOr0~1_combout\ & ((\WideOr2~0_combout\))))) # (!LUT_INDEX(5) & (((\WideOr0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr2~4_combout\,
	datab => \WideOr2~0_combout\,
	datac => LUT_INDEX(5),
	datad => \WideOr0~1_combout\,
	combout => \WideOr0~2_combout\);

-- Location: FF_X106_Y35_N13
\LUT_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_DATA[3]~2_combout\,
	asdata => \WideOr0~2_combout\,
	sload => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(3));

-- Location: LCCOMB_X108_Y34_N18
\mLCD_DATA~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~4_combout\ = (!\Btn_start_stop_stable~q\ & (\oRESET~q\ & (LUT_DATA(3) & !\Btn_split_stable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Btn_start_stop_stable~q\,
	datab => \oRESET~q\,
	datac => LUT_DATA(3),
	datad => \Btn_split_stable~q\,
	combout => \mLCD_DATA~4_combout\);

-- Location: FF_X108_Y34_N19
\mLCD_DATA[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~4_combout\,
	ena => \mLCD_DATA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(3));

-- Location: LCCOMB_X107_Y34_N30
\WideOr5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~3_combout\ = (LUT_INDEX(2) & (LUT_INDEX(1) $ (((LUT_INDEX(0)) # (!LUT_INDEX(4)))))) # (!LUT_INDEX(2) & (LUT_INDEX(1) & (LUT_INDEX(4) $ (!LUT_INDEX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => LUT_INDEX(0),
	datac => LUT_INDEX(2),
	datad => LUT_INDEX(1),
	combout => \WideOr5~3_combout\);

-- Location: LCCOMB_X106_Y34_N22
\WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~1_combout\ = (LUT_INDEX(4)) # ((LUT_INDEX(2) & ((LUT_INDEX(1)) # (!LUT_INDEX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(1),
	datac => LUT_INDEX(2),
	datad => LUT_INDEX(4),
	combout => \WideOr5~1_combout\);

-- Location: LCCOMB_X106_Y34_N28
\WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~0_combout\ = (LUT_INDEX(0) & (LUT_INDEX(2) $ (((LUT_INDEX(1)) # (!LUT_INDEX(4)))))) # (!LUT_INDEX(0) & (!LUT_INDEX(4) & (LUT_INDEX(1) $ (LUT_INDEX(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(1),
	datac => LUT_INDEX(2),
	datad => LUT_INDEX(4),
	combout => \WideOr5~0_combout\);

-- Location: LCCOMB_X106_Y34_N4
\WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~2_combout\ = (!LUT_INDEX(3) & ((LUT_INDEX(5) & (!\WideOr5~1_combout\)) # (!LUT_INDEX(5) & ((!\WideOr5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr5~1_combout\,
	datab => LUT_INDEX(3),
	datac => LUT_INDEX(5),
	datad => \WideOr5~0_combout\,
	combout => \WideOr5~2_combout\);

-- Location: LCCOMB_X107_Y34_N24
\WideOr5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~4_combout\ = (\WideOr5~2_combout\) # ((!\WideOr5~3_combout\ & (LUT_INDEX(3) & !LUT_INDEX(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr5~3_combout\,
	datab => \WideOr5~2_combout\,
	datac => LUT_INDEX(3),
	datad => LUT_INDEX(5),
	combout => \WideOr5~4_combout\);

-- Location: FF_X107_Y34_N25
\LUT_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \WideOr5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(4));

-- Location: LCCOMB_X108_Y34_N20
\mLCD_DATA~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~5_combout\ = (!\Btn_start_stop_stable~q\ & (\oRESET~q\ & (LUT_DATA(4) & !\Btn_split_stable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Btn_start_stop_stable~q\,
	datab => \oRESET~q\,
	datac => LUT_DATA(4),
	datad => \Btn_split_stable~q\,
	combout => \mLCD_DATA~5_combout\);

-- Location: FF_X108_Y34_N21
\mLCD_DATA[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~5_combout\,
	ena => \mLCD_DATA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(4));

-- Location: LCCOMB_X110_Y34_N4
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (LUT_INDEX(4) & (LUT_INDEX(0) & (LUT_INDEX(2) & !LUT_INDEX(1)))) # (!LUT_INDEX(4) & (LUT_INDEX(2) $ (((LUT_INDEX(0)) # (LUT_INDEX(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001110010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(0),
	datab => LUT_INDEX(4),
	datac => LUT_INDEX(2),
	datad => LUT_INDEX(1),
	combout => \WideOr4~0_combout\);

-- Location: LCCOMB_X110_Y34_N14
\WideOr4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~1_combout\ = (LUT_INDEX(3)) # ((LUT_INDEX(5)) # (!\WideOr4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datac => \WideOr4~0_combout\,
	datad => LUT_INDEX(5),
	combout => \WideOr4~1_combout\);

-- Location: FF_X109_Y34_N31
\LUT_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	asdata => \WideOr4~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(5));

-- Location: LCCOMB_X108_Y34_N2
\mLCD_DATA~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~6_combout\ = (!\Btn_start_stop_stable~q\ & (!\Btn_split_stable~q\ & (LUT_DATA(5) & \oRESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Btn_start_stop_stable~q\,
	datab => \Btn_split_stable~q\,
	datac => LUT_DATA(5),
	datad => \oRESET~q\,
	combout => \mLCD_DATA~6_combout\);

-- Location: FF_X108_Y34_N3
\mLCD_DATA[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~6_combout\,
	ena => \mLCD_DATA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(5));

-- Location: LCCOMB_X107_Y34_N4
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!LUT_INDEX(3) & (LUT_INDEX(0) & (LUT_INDEX(4) & !LUT_INDEX(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datab => LUT_INDEX(0),
	datac => LUT_INDEX(4),
	datad => LUT_INDEX(5),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X107_Y34_N26
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!LUT_INDEX(1) & (\Decoder0~0_combout\ & LUT_INDEX(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datab => \Decoder0~0_combout\,
	datac => LUT_INDEX(2),
	combout => \Decoder0~1_combout\);

-- Location: FF_X107_Y34_N27
\LUT_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(6));

-- Location: LCCOMB_X108_Y34_N28
\mLCD_DATA~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~7_combout\ = (LUT_DATA(6) & (!\Btn_split_stable~q\ & (!\Btn_start_stop_stable~q\ & \oRESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_DATA(6),
	datab => \Btn_split_stable~q\,
	datac => \Btn_start_stop_stable~q\,
	datad => \oRESET~q\,
	combout => \mLCD_DATA~7_combout\);

-- Location: FF_X108_Y34_N29
\mLCD_DATA[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~7_combout\,
	ena => \mLCD_DATA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(6));

-- Location: LCCOMB_X107_Y34_N22
\LUT_DATA~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~76_combout\ = (LUT_INDEX(2) & (!LUT_INDEX(1) & (LUT_INDEX(4) $ (!LUT_INDEX(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(4),
	datab => LUT_INDEX(0),
	datac => LUT_INDEX(2),
	datad => LUT_INDEX(1),
	combout => \LUT_DATA~76_combout\);

-- Location: LCCOMB_X107_Y34_N8
\LUT_DATA~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \LUT_DATA~77_combout\ = (!LUT_INDEX(3) & (\LUT_DATA~76_combout\ & !LUT_INDEX(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(3),
	datac => \LUT_DATA~76_combout\,
	datad => LUT_INDEX(5),
	combout => \LUT_DATA~77_combout\);

-- Location: FF_X107_Y34_N9
\LUT_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \LUT_DATA~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(7));

-- Location: LCCOMB_X108_Y34_N10
\mLCD_DATA~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_DATA~8_combout\ = (LUT_DATA(7) & (!\Btn_split_stable~q\ & (!\Btn_start_stop_stable~q\ & \oRESET~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_DATA(7),
	datab => \Btn_split_stable~q\,
	datac => \Btn_start_stop_stable~q\,
	datad => \oRESET~q\,
	combout => \mLCD_DATA~8_combout\);

-- Location: FF_X108_Y34_N11
\mLCD_DATA[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_DATA~8_combout\,
	ena => \mLCD_DATA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => mLCD_DATA(7));

-- Location: LCCOMB_X106_Y31_N18
\u0|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \u0|Selector3~0_combout\ = (\u0|ST.01~q\) # ((\u0|LCD_EN~q\ & ((\u0|ST.10~q\) # (!\u0|ST.00~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u0|ST.00~q\,
	datab => \u0|ST.10~q\,
	datac => \u0|LCD_EN~q\,
	datad => \u0|ST.01~q\,
	combout => \u0|Selector3~0_combout\);

-- Location: FF_X106_Y31_N19
\u0|LCD_EN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \u0|Selector3~0_combout\,
	clrn => \oRESET~q\,
	ena => \u0|mStart~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|LCD_EN~q\);

-- Location: LCCOMB_X106_Y34_N30
\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (LUT_INDEX(2) & ((LUT_INDEX(1)) # (LUT_INDEX(0) $ (LUT_INDEX(4))))) # (!LUT_INDEX(2) & (((LUT_INDEX(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => LUT_INDEX(1),
	datab => LUT_INDEX(0),
	datac => LUT_INDEX(2),
	datad => LUT_INDEX(4),
	combout => \WideOr3~0_combout\);

-- Location: LCCOMB_X107_Y34_N6
\WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~1_combout\ = (\WideOr3~0_combout\) # ((LUT_INDEX(3)) # (LUT_INDEX(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr3~0_combout\,
	datac => LUT_INDEX(3),
	datad => LUT_INDEX(5),
	combout => \WideOr3~1_combout\);

-- Location: FF_X107_Y34_N7
\LUT_DATA[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \WideOr3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => LUT_DATA(8));

-- Location: LCCOMB_X108_Y34_N12
\mLCD_RS~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mLCD_RS~0_combout\ = (!\Btn_start_stop_stable~q\ & (\oRESET~q\ & (LUT_DATA(8) & !\Btn_split_stable~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Btn_start_stop_stable~q\,
	datab => \oRESET~q\,
	datac => LUT_DATA(8),
	datad => \Btn_split_stable~q\,
	combout => \mLCD_RS~0_combout\);

-- Location: FF_X108_Y34_N13
mLCD_RS : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \iCLK~inputclkctrl_outclk\,
	d => \mLCD_RS~0_combout\,
	ena => \mLCD_DATA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mLCD_RS~q\);

ww_segA(0) <= \segA[0]~output_o\;

ww_segA(1) <= \segA[1]~output_o\;

ww_segA(2) <= \segA[2]~output_o\;

ww_segA(3) <= \segA[3]~output_o\;

ww_segA(4) <= \segA[4]~output_o\;

ww_segA(5) <= \segA[5]~output_o\;

ww_segA(6) <= \segA[6]~output_o\;

ww_segB(0) <= \segB[0]~output_o\;

ww_segB(1) <= \segB[1]~output_o\;

ww_segB(2) <= \segB[2]~output_o\;

ww_segB(3) <= \segB[3]~output_o\;

ww_segB(4) <= \segB[4]~output_o\;

ww_segB(5) <= \segB[5]~output_o\;

ww_segB(6) <= \segB[6]~output_o\;

ww_segB(7) <= \segB[7]~output_o\;

ww_segC(0) <= \segC[0]~output_o\;

ww_segC(1) <= \segC[1]~output_o\;

ww_segC(2) <= \segC[2]~output_o\;

ww_segC(3) <= \segC[3]~output_o\;

ww_segC(4) <= \segC[4]~output_o\;

ww_segC(5) <= \segC[5]~output_o\;

ww_segC(6) <= \segC[6]~output_o\;

ww_segD(0) <= \segD[0]~output_o\;

ww_segD(1) <= \segD[1]~output_o\;

ww_segD(2) <= \segD[2]~output_o\;

ww_segD(3) <= \segD[3]~output_o\;

ww_segD(4) <= \segD[4]~output_o\;

ww_segD(5) <= \segD[5]~output_o\;

ww_segD(6) <= \segD[6]~output_o\;

ww_segE(0) <= \segE[0]~output_o\;

ww_segE(1) <= \segE[1]~output_o\;

ww_segE(2) <= \segE[2]~output_o\;

ww_segE(3) <= \segE[3]~output_o\;

ww_segE(4) <= \segE[4]~output_o\;

ww_segE(5) <= \segE[5]~output_o\;

ww_segE(6) <= \segE[6]~output_o\;

ww_LCD_DATA(0) <= \LCD_DATA[0]~output_o\;

ww_LCD_DATA(1) <= \LCD_DATA[1]~output_o\;

ww_LCD_DATA(2) <= \LCD_DATA[2]~output_o\;

ww_LCD_DATA(3) <= \LCD_DATA[3]~output_o\;

ww_LCD_DATA(4) <= \LCD_DATA[4]~output_o\;

ww_LCD_DATA(5) <= \LCD_DATA[5]~output_o\;

ww_LCD_DATA(6) <= \LCD_DATA[6]~output_o\;

ww_LCD_DATA(7) <= \LCD_DATA[7]~output_o\;

ww_LCD_RW <= \LCD_RW~output_o\;

ww_LCD_EN <= \LCD_EN~output_o\;

ww_LCD_RS <= \LCD_RS~output_o\;
END structure;


