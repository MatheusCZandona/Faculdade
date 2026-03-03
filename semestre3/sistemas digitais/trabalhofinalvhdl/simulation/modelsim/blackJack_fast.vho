-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "06/27/2025 22:38:23"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	blackJack IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	LEDG : OUT std_logic_vector(7 DOWNTO 0)
	);
END blackJack;

-- Design Ports Information
-- SW[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDR[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[0]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[2]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[3]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[4]	=>  Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX3[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[0]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[1]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[2]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX2[6]	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[0]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[1]	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[2]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[3]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[4]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[5]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX1[6]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[0]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[1]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[3]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[4]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[5]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- HEX0[6]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LEDG[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF blackJack IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \Add2~1_cout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \P_ace~regout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \D_ace~regout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~0_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_10~4_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_10~10_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_11~2_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_11~4_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_12~8_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_12~12_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~0_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~2_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~4_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~10_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~0_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~4_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~8_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~14_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~16_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~0_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~6_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~18_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~0_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~2_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~8_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~12_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~14_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~22_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~0_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~6_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~8_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~10_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~20_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~24_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~0_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~6_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~8_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~10_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~12_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~14_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~16_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~20_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~24_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~0_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~4_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~12_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~24_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~2_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~6_combout\ : std_logic;
SIGNAL \P_ace~0_combout\ : std_logic;
SIGNAL \D_ace~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[16]~3_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~4_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~2_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ : std_logic;
SIGNAL \Selector59~2_combout\ : std_logic;
SIGNAL \Mux33~1_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux28~1_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \Selector24~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \temp_card_val~1_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Selector18~0_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \Selector22~1_combout\ : std_logic;
SIGNAL \Selector22~2_combout\ : std_logic;
SIGNAL \process_0~6_combout\ : std_logic;
SIGNAL \temp_card_val~4_combout\ : std_logic;
SIGNAL \temp_card_val~5_combout\ : std_logic;
SIGNAL \temp_card_val~6_combout\ : std_logic;
SIGNAL \temp_card_val~8_combout\ : std_logic;
SIGNAL \Add9~1_combout\ : std_logic;
SIGNAL \Selector25~1_combout\ : std_logic;
SIGNAL \D_cont[2]~0_combout\ : std_logic;
SIGNAL \D_cont[3]~1_combout\ : std_logic;
SIGNAL \D_cont[2]~2_combout\ : std_logic;
SIGNAL \D_cont[1]~3_combout\ : std_logic;
SIGNAL \D_cont[0]~4_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[51]~282_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[50]~284_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[49]~286_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[48]~289_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[67]~291_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[64]~294_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[85]~296_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[84]~297_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[82]~299_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[81]~300_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[80]~302_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[102]~303_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[98]~307_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[97]~308_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[96]~310_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[118]~312_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[113]~317_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[112]~318_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[136]~320_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[133]~323_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[130]~326_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[129]~327_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[128]~329_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[153]~330_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[152]~331_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[151]~332_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[150]~333_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[148]~335_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[146]~337_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[144]~339_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[169]~342_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[165]~346_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[163]~348_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[160]~351_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[187]~353_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[186]~354_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[185]~355_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[184]~356_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[183]~357_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[182]~358_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[180]~360_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[178]~362_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[177]~363_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[176]~364_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[204]~366_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[202]~368_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[196]~374_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[195]~375_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[192]~379_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[220]~381_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[218]~383_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[216]~385_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[213]~388_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[212]~389_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[211]~390_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[208]~394_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[236]~397_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~407_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[243]~412_combout\ : std_logic;
SIGNAL \card_gen|Add0~9_combout\ : std_logic;
SIGNAL \card_gen|Add0~10_combout\ : std_logic;
SIGNAL \process_0~10_combout\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \Selector30~0_combout\ : std_logic;
SIGNAL \process_0~11_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[83]~417_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[115]~428_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[114]~429_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[132]~434_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[149]~441_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[147]~443_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[166]~449_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[164]~451_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[181]~460_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[200]~468_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[199]~469_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[198]~470_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[197]~471_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[221]~475_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[217]~479_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[215]~481_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[214]~482_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[210]~486_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[238]~487_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[237]~488_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[235]~490_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[234]~491_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[233]~492_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[232]~493_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[231]~494_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[230]~495_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[229]~496_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[228]~497_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[227]~498_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[66]~502_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[193]~511_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[209]~512_combout\ : std_logic;
SIGNAL \card_gen|Add0~11_combout\ : std_logic;
SIGNAL \card_gen|lfsr~14_combout\ : std_logic;
SIGNAL \card_val_display[1]~3_combout\ : std_logic;
SIGNAL \card_gen|lfsr~4_combout\ : std_logic;
SIGNAL \card_gen|lfsr~3_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_8~1\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_8~3\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_8~5\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_8~7\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_8~6_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[51]~283_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[50]~285_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_8~2_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[49]~287_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[48]~288_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_9~1\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_9~3\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_9~5\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_9~7\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_9~9\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[68]~500_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_9~8_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[68]~290_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_8~4_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[67]~501_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_9~4_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[66]~292_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_9~2_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[65]~293_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_9~0_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[64]~295_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_10~1\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_10~3\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_10~5\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_10~7\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_10~9\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_10~11\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[85]~415_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_9~6_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[84]~416_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[83]~298_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_8~0_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[65]~503_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[82]~418_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[81]~504_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[80]~301_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_11~1\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_11~3\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_11~5\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_11~7\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_11~9\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_11~11\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_11~13\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[102]~419_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_11~10_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[101]~304_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_11~8_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[100]~305_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_11~6_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[99]~306_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_10~2_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[98]~423_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_10~0_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[97]~505_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[96]~309_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_12~1\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_12~3\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_12~5\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_12~7\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_12~9\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_12~11\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_12~13\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_12~14_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_12~15\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[119]~311_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_10~8_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[101]~420_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[118]~425_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_12~10_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[117]~313_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[116]~314_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_12~6_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[115]~315_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_12~4_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[114]~316_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_11~0_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[113]~506_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_12~0_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[112]~319_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~1\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~3\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~5\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~7\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~9\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~11\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~13\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~15\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~17\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~16_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_11~12_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[119]~424_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[136]~430_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~14_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[135]~321_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~12_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[134]~322_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[99]~422_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[116]~427_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[133]~433_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~8_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[132]~324_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_13~6_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[131]~325_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_12~2_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[130]~436_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[129]~507_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[128]~328_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~1\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~3\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~5\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~7\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~9\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~11\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~13\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~15\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~17\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~19\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[153]~437_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[135]~431_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[152]~438_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_10~6_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[100]~421_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[117]~426_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[134]~432_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[151]~439_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[150]~440_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~10_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[149]~334_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[131]~435_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[148]~442_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~6_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[147]~336_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[146]~444_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~2_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[145]~338_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[144]~340_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~1\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~3\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~5\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~7\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~9\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~11\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~13\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~15\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~17\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~19\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~21\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~20_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[170]~341_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[169]~446_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~16_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[168]~343_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~14_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[167]~344_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~12_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[166]~345_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[165]~450_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~8_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[164]~347_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[163]~452_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~4_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[162]~349_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~2_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[161]~350_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[160]~352_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~1\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~3\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~5\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~7\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~9\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~11\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~13\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~15\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~17\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~19\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~21\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~23\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~18_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[170]~445_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[187]~454_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[186]~455_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[168]~447_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[185]~456_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_14~12_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[167]~448_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[184]~457_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[183]~458_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_1~10_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[182]~459_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~10_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[181]~359_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[180]~461_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~6_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[179]~361_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[161]~509_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[178]~463_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[177]~510_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[176]~365_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~1\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~3\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~5\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~7\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~9\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~11\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~13\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~15\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~17\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~19\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~21\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~23\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~25\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[204]~464_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~22_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[203]~367_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~18_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[202]~466_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~18_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[201]~369_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~16_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[200]~370_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~14_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[199]~371_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~12_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[198]~372_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[197]~373_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[145]~508_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[162]~453_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[179]~462_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[196]~472_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~4_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[195]~473_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~4_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[194]~376_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_3~2_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[193]~377_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[192]~378_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~1\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~3\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~5\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~7\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~9\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~11\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~13\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~15\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~17\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~19\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~21\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~23\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~25\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~27\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~26_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[221]~380_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~20_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[203]~465_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[220]~476_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~22_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[219]~382_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_2~16_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[201]~467_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[218]~478_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~18_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[217]~384_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[216]~480_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[215]~386_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[214]~387_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[213]~483_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[212]~484_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[194]~474_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[211]~485_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~4_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[210]~391_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[209]~392_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~1\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~3\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~5\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~7\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~9\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~11\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~13\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~15\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~17\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~19\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~21\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~23\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~25\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~27\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~29\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~28_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[238]~395_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~26_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[237]~396_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[219]~477_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[236]~489_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~22_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[235]~398_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~20_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[234]~399_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~18_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[233]~400_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~16_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[232]~401_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~14_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[231]~402_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[230]~403_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~10_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[229]~404_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~8_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[228]~405_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~6_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[227]~406_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_4~2_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~499_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~513_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~410_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~1\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~3\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~5\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~7\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~9_cout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~11_cout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~13_cout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~15_cout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~17_cout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~19_cout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~21_cout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~23_cout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~25_cout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~27_cout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~29_cout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~31_cout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~32_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[240]~411_combout\ : std_logic;
SIGNAL \temp_card_val~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Selector11~1_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \state.I~regout\ : std_logic;
SIGNAL \state.SP_rec~0_combout\ : std_logic;
SIGNAL \state.SP_rec~regout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \state.SP_wait~regout\ : std_logic;
SIGNAL \P_cont[0]~4_combout\ : std_logic;
SIGNAL \P_cont[1]~0_combout\ : std_logic;
SIGNAL \P_cont[2]~1_combout\ : std_logic;
SIGNAL \P_cont[2]~3_combout\ : std_logic;
SIGNAL \P_cont[3]~2_combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Selector10~0_combout\ : std_logic;
SIGNAL \state.SP_recieve~regout\ : std_logic;
SIGNAL \P_sum[0]~3_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Selector11~0_combout\ : std_logic;
SIGNAL \Selector11~2_combout\ : std_logic;
SIGNAL \state.SP_rec1~feeder_combout\ : std_logic;
SIGNAL \state.SP_rec1~regout\ : std_logic;
SIGNAL \Selector12~0_combout\ : std_logic;
SIGNAL \state.SP_wait1~regout\ : std_logic;
SIGNAL \Selector13~0_combout\ : std_logic;
SIGNAL \state.SP_recieve1~regout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \WideOr28~0_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \P_sum[2]~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \process_0~7_combout\ : std_logic;
SIGNAL \P_sum[3]~1_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \P_sum[4]~0_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \LessThan9~0_combout\ : std_logic;
SIGNAL \LessThan9~1_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \D_sum[2]~2_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Selector16~0_combout\ : std_logic;
SIGNAL \state.SD_wait~regout\ : std_logic;
SIGNAL \Selector17~0_combout\ : std_logic;
SIGNAL \state.SD_recieve~regout\ : std_logic;
SIGNAL \HEX1~0_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \D_sum[0]~3_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add7~1_cout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \process_0~8_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \temp_card_val~3_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \temp_card_val~9_combout\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \D_sum[4]~0_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \process_0~9_combout\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \D_sum[3]~1_combout\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \LessThan9~2_combout\ : std_logic;
SIGNAL \LessThan9~3_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \state.S_lose~regout\ : std_logic;
SIGNAL \Selector20~0_combout\ : std_logic;
SIGNAL \state.SD_recieve1~regout\ : std_logic;
SIGNAL \Selector21~0_combout\ : std_logic;
SIGNAL \state.SD_result~regout\ : std_logic;
SIGNAL \Selector14~0_combout\ : std_logic;
SIGNAL \Selector14~1_combout\ : std_logic;
SIGNAL \state.S_decision~regout\ : std_logic;
SIGNAL \Selector22~0_combout\ : std_logic;
SIGNAL \Selector22~3_combout\ : std_logic;
SIGNAL \state.S_win~regout\ : std_logic;
SIGNAL \WideOr3~combout\ : std_logic;
SIGNAL \Selector15~0_combout\ : std_logic;
SIGNAL \Selector15~1_combout\ : std_logic;
SIGNAL \state.SD_rec~feeder_combout\ : std_logic;
SIGNAL \state.SD_rec~regout\ : std_logic;
SIGNAL \Selector25~2_combout\ : std_logic;
SIGNAL \Selector25~0_combout\ : std_logic;
SIGNAL \Selector25~3_combout\ : std_logic;
SIGNAL \rec_card~regout\ : std_logic;
SIGNAL \card_gen|lfsr[5]~1_combout\ : std_logic;
SIGNAL \card_gen|lfsr~13_combout\ : std_logic;
SIGNAL \card_gen|lfsr~12_combout\ : std_logic;
SIGNAL \card_gen|lfsr~11_combout\ : std_logic;
SIGNAL \card_gen|lfsr~10_combout\ : std_logic;
SIGNAL \card_gen|lfsr~9_combout\ : std_logic;
SIGNAL \card_gen|lfsr~8_combout\ : std_logic;
SIGNAL \card_gen|lfsr[9]~feeder_combout\ : std_logic;
SIGNAL \card_gen|lfsr~7_combout\ : std_logic;
SIGNAL \card_gen|lfsr~6_combout\ : std_logic;
SIGNAL \card_gen|lfsr~5_combout\ : std_logic;
SIGNAL \card_gen|lfsr~2_combout\ : std_logic;
SIGNAL \card_gen|lfsr~0_combout\ : std_logic;
SIGNAL \card_gen|lfsr~16_combout\ : std_logic;
SIGNAL \card_gen|lfsr~15_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[208]~393_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_5~2_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~408_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|op_6~4_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[242]~414_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~409_combout\ : std_logic;
SIGNAL \card_gen|Mod0|auto_generated|divider|divider|StageOut[241]~413_combout\ : std_logic;
SIGNAL \card_gen|Add0~8_combout\ : std_logic;
SIGNAL \temp_card_val~2_combout\ : std_logic;
SIGNAL \temp_card_val~7_combout\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \LessThan8~0_combout\ : std_logic;
SIGNAL \LessThan8~1_combout\ : std_logic;
SIGNAL \LessThan8~2_combout\ : std_logic;
SIGNAL \Selector24~1_combout\ : std_logic;
SIGNAL \Selector24~3_combout\ : std_logic;
SIGNAL \state.S_draw~regout\ : std_logic;
SIGNAL \LEDR~0_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \card_val_display[0]~2_combout\ : std_logic;
SIGNAL \Selector18~1_combout\ : std_logic;
SIGNAL \Selector18~2_combout\ : std_logic;
SIGNAL \state.SD_rec1~regout\ : std_logic;
SIGNAL \Selector19~0_combout\ : std_logic;
SIGNAL \state.SD_wait1~regout\ : std_logic;
SIGNAL \card_val_display[0]~1_combout\ : std_logic;
SIGNAL \card_val_display[0]~4_combout\ : std_logic;
SIGNAL \card_val_display[1]~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \WideOr27~0_combout\ : std_logic;
SIGNAL \WideOr30~combout\ : std_logic;
SIGNAL \WideOr29~combout\ : std_logic;
SIGNAL \WideOr28~combout\ : std_logic;
SIGNAL \WideOr27~combout\ : std_logic;
SIGNAL \WideOr26~combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[17]~1_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[16]~3_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|StageOut[15]~4_combout\ : std_logic;
SIGNAL \LessThan11~0_combout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|op_3~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~1_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~3_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~5_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~7_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ : std_logic;
SIGNAL \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \LessThan10~0_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Selector52~0_combout\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \LessThan10~1_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|StageOut[15]~5_combout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|op_3~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ : std_logic;
SIGNAL \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ : std_logic;
SIGNAL \Selector48~1_combout\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \LessThan11~1_combout\ : std_logic;
SIGNAL \Selector46~1_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\ : std_logic;
SIGNAL \Selector59~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[15]~1_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[16]~7_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\ : std_logic;
SIGNAL \Mux34~0_combout\ : std_logic;
SIGNAL \Selector59~0_combout\ : std_logic;
SIGNAL \Selector59~1_combout\ : std_logic;
SIGNAL \Selector59~4_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Selector58~1_combout\ : std_logic;
SIGNAL \Mux33~0_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[18]~3_combout\ : std_logic;
SIGNAL \Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\ : std_logic;
SIGNAL \Selector58~0_combout\ : std_logic;
SIGNAL \Selector58~2_combout\ : std_logic;
SIGNAL \Mux32~0_combout\ : std_logic;
SIGNAL \Mux32~1_combout\ : std_logic;
SIGNAL \Selector57~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Selector57~1_combout\ : std_logic;
SIGNAL \Selector57~2_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \Selector56~1_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Selector56~0_combout\ : std_logic;
SIGNAL \Selector56~2_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Selector55~1_combout\ : std_logic;
SIGNAL \Selector55~2_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Selector54~1_combout\ : std_logic;
SIGNAL \Mux29~0_combout\ : std_logic;
SIGNAL \Mux29~1_combout\ : std_logic;
SIGNAL \Selector54~0_combout\ : std_logic;
SIGNAL \Selector54~2_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Selector53~1_combout\ : std_logic;
SIGNAL \Mux28~0_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Selector53~2_combout\ : std_logic;
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \card_gen|random_number\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \card_gen|lfsr\ : std_logic_vector(15 DOWNTO 0);
SIGNAL P_sum : std_logic_vector(4 DOWNTO 0);
SIGNAL D_cont : std_logic_vector(3 DOWNTO 0);
SIGNAL D_sum : std_logic_vector(4 DOWNTO 0);
SIGNAL P_cont : std_logic_vector(3 DOWNTO 0);
SIGNAL card_val_display : std_logic_vector(6 DOWNTO 0);
SIGNAL \ALT_INV_KEY~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_card_val_display[1]~3_combout\ : std_logic;
SIGNAL \ALT_INV_state.SP_recieve1~regout\ : std_logic;
SIGNAL \ALT_INV_WideOr29~combout\ : std_logic;
SIGNAL \ALT_INV_state.SD_recieve1~regout\ : std_logic;
SIGNAL \ALT_INV_card_val_display[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.I~regout\ : std_logic;
SIGNAL ALT_INV_card_val_display : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
HEX3 <= ww_HEX3;
HEX2 <= ww_HEX2;
HEX1 <= ww_HEX1;
HEX0 <= ww_HEX0;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_KEY~combout\(0) <= NOT \KEY~combout\(0);
\ALT_INV_KEY~combout\(1) <= NOT \KEY~combout\(1);
\ALT_INV_card_val_display[1]~3_combout\ <= NOT \card_val_display[1]~3_combout\;
\ALT_INV_state.SP_recieve1~regout\ <= NOT \state.SP_recieve1~regout\;
\ALT_INV_WideOr29~combout\ <= NOT \WideOr29~combout\;
\ALT_INV_state.SD_recieve1~regout\ <= NOT \state.SD_recieve1~regout\;
\ALT_INV_card_val_display[1]~0_combout\ <= NOT \card_val_display[1]~0_combout\;
\ALT_INV_state.I~regout\ <= NOT \state.I~regout\;
ALT_INV_card_val_display(6) <= NOT card_val_display(6);
ALT_INV_card_val_display(5) <= NOT card_val_display(5);
ALT_INV_card_val_display(4) <= NOT card_val_display(4);
ALT_INV_card_val_display(3) <= NOT card_val_display(3);
ALT_INV_card_val_display(2) <= NOT card_val_display(2);
ALT_INV_card_val_display(1) <= NOT card_val_display(1);
ALT_INV_card_val_display(0) <= NOT card_val_display(0);

-- Location: LCCOMB_X46_Y12_N20
\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = P_sum(2) $ (VCC)
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(P_sum(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(2),
	datad => VCC,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X46_Y12_N24
\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (P_sum(4) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!P_sum(4) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((P_sum(4) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(4),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X44_Y13_N6
\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (D_sum(3) & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!D_sum(3) & (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!D_sum(3) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_sum(3),
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X44_Y13_N8
\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (D_sum(4) & (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!D_sum(4) & (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((D_sum(4) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(4),
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X43_Y13_N22
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod1|auto_generated|divider|divider|StageOut[16]~7_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod1|auto_generated|divider|divider|StageOut[16]~7_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[16]~7_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X43_Y13_N24
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod1|auto_generated|divider|divider|StageOut[17]~4_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod1|auto_generated|divider|divider|StageOut[17]~4_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\)))))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod1|auto_generated|divider|divider|StageOut[17]~4_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X43_Y13_N26
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod1|auto_generated|divider|divider|StageOut[18]~3_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[18]~2_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod1|auto_generated|divider|divider|StageOut[18]~3_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[18]~2_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod1|auto_generated|divider|divider|StageOut[18]~3_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[18]~2_combout\ & 
-- !\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[18]~2_combout\,
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X44_Y11_N20
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = P_sum(2) $ (VCC)
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(P_sum(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(2),
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X44_Y14_N20
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datad => VCC,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X44_Y14_N24
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\)))))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X44_Y11_N8
\Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~1_cout\ = CARRY(P_sum(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => P_sum(0),
	datad => VCC,
	cout => \Add2~1_cout\);

-- Location: LCCOMB_X44_Y11_N10
\Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (P_sum(1) & (\Add2~1_cout\ & VCC)) # (!P_sum(1) & (!\Add2~1_cout\))
-- \Add2~3\ = CARRY((!P_sum(1) & !\Add2~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(1),
	datad => VCC,
	cin => \Add2~1_cout\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X44_Y11_N12
\Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (P_sum(2) & (\Add2~3\ $ (GND))) # (!P_sum(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((P_sum(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X44_Y11_N14
\Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (P_sum(3) & (\Add2~5\ & VCC)) # (!P_sum(3) & (!\Add2~5\))
-- \Add2~7\ = CARRY((!P_sum(3) & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X44_Y11_N16
\Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (P_sum(4) & (\Add2~7\ $ (GND))) # (!P_sum(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((P_sum(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X44_Y11_N18
\Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = \Add2~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add2~9\,
	combout => \Add2~10_combout\);

-- Location: LCFF_X47_Y10_N5
P_ace : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \P_ace~0_combout\,
	sdata => \Selector30~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \ALT_INV_state.SP_recieve1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \P_ace~regout\);

-- Location: LCCOMB_X42_Y10_N16
\Add7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (D_sum(3) & (\Add7~5\ & VCC)) # (!D_sum(3) & (!\Add7~5\))
-- \Add7~7\ = CARRY((!D_sum(3) & !\Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_sum(3),
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCFF_X43_Y10_N21
D_ace : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \D_ace~0_combout\,
	sdata => \Selector40~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \ALT_INV_state.SD_recieve1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \D_ace~regout\);

-- Location: LCCOMB_X39_Y16_N16
\card_gen|Mod0|auto_generated|divider|divider|op_6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~0_combout\ = \card_gen|lfsr\(0) $ (VCC)
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~1\ = CARRY(\card_gen|lfsr\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|lfsr\(0),
	datad => VCC,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_6~1\);

-- Location: LCCOMB_X32_Y16_N6
\card_gen|Mod0|auto_generated|divider|divider|op_10~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_10~4_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_10~3\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[65]~503_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[65]~293_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_10~3\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[65]~503_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[65]~293_combout\)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_10~5\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|op_10~3\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[65]~503_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[65]~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[65]~503_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[65]~293_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_10~3\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_10~4_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_10~5\);

-- Location: LCCOMB_X32_Y16_N12
\card_gen|Mod0|auto_generated|divider|divider|op_10~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_10~10_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_10~9\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[68]~500_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[68]~290_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_10~9\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[68]~500_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[68]~290_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_10~11\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[68]~500_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[68]~290_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_10~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[68]~500_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[68]~290_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_10~9\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_10~10_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_10~11\);

-- Location: LCCOMB_X33_Y16_N8
\card_gen|Mod0|auto_generated|divider|divider|op_11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_11~2_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_11~1\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[80]~302_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[80]~301_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_11~1\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[80]~302_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[80]~301_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_11~3\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[80]~302_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[80]~301_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_11~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[80]~302_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[80]~301_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_11~1\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_11~2_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_11~3\);

-- Location: LCCOMB_X33_Y16_N10
\card_gen|Mod0|auto_generated|divider|divider|op_11~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_11~4_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_11~3\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[81]~300_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[81]~504_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_11~3\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[81]~300_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[81]~504_combout\)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_11~5\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|op_11~3\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[81]~300_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[81]~504_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[81]~300_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[81]~504_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_11~3\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_11~4_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_11~5\);

-- Location: LCCOMB_X34_Y16_N14
\card_gen|Mod0|auto_generated|divider|divider|op_12~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_12~8_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~7\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[99]~422_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[99]~306_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_12~7\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[99]~422_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[99]~306_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_12~9\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[99]~422_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[99]~306_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_12~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[99]~422_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[99]~306_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_12~7\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_12~8_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_12~9\);

-- Location: LCCOMB_X34_Y16_N18
\card_gen|Mod0|auto_generated|divider|divider|op_12~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_12~12_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~11\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[101]~420_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[101]~304_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_12~11\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[101]~420_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[101]~304_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_12~13\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[101]~420_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[101]~304_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_12~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[101]~420_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[101]~304_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_12~11\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_12~12_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_12~13\);

-- Location: LCCOMB_X34_Y17_N8
\card_gen|Mod0|auto_generated|divider|divider|op_13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~0_combout\ = \card_gen|lfsr\(7) $ (GND)
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~1\ = CARRY(!\card_gen|lfsr\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|lfsr\(7),
	datad => VCC,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_13~0_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_13~1\);

-- Location: LCCOMB_X34_Y17_N10
\card_gen|Mod0|auto_generated|divider|divider|op_13~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~2_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~1\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[112]~318_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[112]~319_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_13~1\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[112]~318_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[112]~319_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~3\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[112]~318_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[112]~319_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_13~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[112]~318_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[112]~319_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_13~1\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_13~2_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_13~3\);

-- Location: LCCOMB_X34_Y17_N12
\card_gen|Mod0|auto_generated|divider|divider|op_13~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~4_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~3\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[113]~317_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[113]~506_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_13~3\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[113]~317_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[113]~506_combout\)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~5\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|op_13~3\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[113]~317_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[113]~506_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[113]~317_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[113]~506_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_13~3\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_13~4_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_13~5\);

-- Location: LCCOMB_X34_Y17_N18
\card_gen|Mod0|auto_generated|divider|divider|op_13~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~10_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~9\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[116]~427_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[116]~314_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_13~9\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[116]~427_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[116]~314_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~11\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[116]~427_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[116]~314_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_13~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[116]~427_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[116]~314_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_13~9\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_13~10_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_13~11\);

-- Location: LCCOMB_X35_Y17_N10
\card_gen|Mod0|auto_generated|divider|divider|op_14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~0_combout\ = \card_gen|lfsr\(6) $ (VCC)
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~1\ = CARRY(\card_gen|lfsr\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|lfsr\(6),
	datad => VCC,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_14~0_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_14~1\);

-- Location: LCCOMB_X35_Y17_N14
\card_gen|Mod0|auto_generated|divider|divider|op_14~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~4_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~3\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[129]~327_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[129]~507_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_14~3\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[129]~327_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[129]~507_combout\)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~5\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|op_14~3\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[129]~327_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[129]~507_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[129]~327_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[129]~507_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_14~3\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_14~4_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_14~5\);

-- Location: LCCOMB_X35_Y17_N18
\card_gen|Mod0|auto_generated|divider|divider|op_14~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~8_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~7\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[131]~435_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[131]~325_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_14~7\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[131]~435_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[131]~325_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~9\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[131]~435_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[131]~325_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_14~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[131]~435_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[131]~325_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_14~7\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_14~8_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_14~9\);

-- Location: LCCOMB_X35_Y17_N24
\card_gen|Mod0|auto_generated|divider|divider|op_14~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~14_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~13\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[134]~432_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[134]~322_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_14~13\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[134]~432_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[134]~322_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~15\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[134]~432_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[134]~322_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_14~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[134]~432_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[134]~322_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_14~13\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_14~14_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_14~15\);

-- Location: LCCOMB_X35_Y17_N26
\card_gen|Mod0|auto_generated|divider|divider|op_14~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~16_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~15\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[135]~431_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[135]~321_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_14~15\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[135]~431_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[135]~321_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~17\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[135]~431_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[135]~321_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_14~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[135]~431_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[135]~321_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_14~15\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_14~16_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_14~17\);

-- Location: LCCOMB_X36_Y17_N8
\card_gen|Mod0|auto_generated|divider|divider|op_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~0_combout\ = \card_gen|lfsr\(5) $ (GND)
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~1\ = CARRY(!\card_gen|lfsr\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(5),
	datad => VCC,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_1~0_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_1~1\);

-- Location: LCCOMB_X36_Y17_N14
\card_gen|Mod0|auto_generated|divider|divider|op_1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~6_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|StageOut[146]~337_combout\ & (((!\card_gen|Mod0|auto_generated|divider|divider|op_1~5\)))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[146]~337_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[146]~444_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|op_1~5\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[146]~444_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_1~5\) # (GND)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~7\ = CARRY(((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[146]~337_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|StageOut[146]~444_combout\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[146]~337_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[146]~444_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_1~5\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_1~6_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_1~7\);

-- Location: LCCOMB_X36_Y17_N26
\card_gen|Mod0|auto_generated|divider|divider|op_1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~18_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~17\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[152]~331_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[152]~438_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_1~17\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[152]~331_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[152]~438_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~19\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[152]~331_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[152]~438_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_1~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[152]~331_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[152]~438_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_1~17\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_1~18_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_1~19\);

-- Location: LCCOMB_X36_Y16_N6
\card_gen|Mod0|auto_generated|divider|divider|op_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~0_combout\ = \card_gen|lfsr\(4) $ (VCC)
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~1\ = CARRY(\card_gen|lfsr\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|lfsr\(4),
	datad => VCC,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_2~0_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_2~1\);

-- Location: LCCOMB_X36_Y16_N8
\card_gen|Mod0|auto_generated|divider|divider|op_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~2_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~1\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[160]~351_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[160]~352_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_2~1\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[160]~351_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[160]~352_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~3\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[160]~351_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[160]~352_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_2~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[160]~351_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[160]~352_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_2~1\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_2~2_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_2~3\);

-- Location: LCCOMB_X36_Y16_N14
\card_gen|Mod0|auto_generated|divider|divider|op_2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~8_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~7\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[163]~348_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[163]~452_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_2~7\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[163]~348_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[163]~452_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~9\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[163]~348_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[163]~452_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[163]~348_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[163]~452_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_2~7\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_2~9\);

-- Location: LCCOMB_X36_Y16_N18
\card_gen|Mod0|auto_generated|divider|divider|op_2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~12_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~11\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[165]~346_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[165]~450_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_2~11\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[165]~346_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[165]~450_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~13\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[165]~346_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[165]~450_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[165]~346_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[165]~450_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_2~11\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_2~12_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_2~13\);

-- Location: LCCOMB_X36_Y16_N20
\card_gen|Mod0|auto_generated|divider|divider|op_2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~14_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~13\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[166]~449_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[166]~345_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_2~13\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[166]~449_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[166]~345_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~15\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[166]~449_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[166]~345_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[166]~449_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[166]~345_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_2~13\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_2~14_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_2~15\);

-- Location: LCCOMB_X36_Y16_N28
\card_gen|Mod0|auto_generated|divider|divider|op_2~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~22_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~21\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[170]~445_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[170]~341_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_2~21\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[170]~445_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[170]~341_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~23\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[170]~445_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[170]~341_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_2~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[170]~445_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[170]~341_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_2~21\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_2~22_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_2~23\);

-- Location: LCCOMB_X36_Y14_N2
\card_gen|Mod0|auto_generated|divider|divider|op_3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~0_combout\ = \card_gen|lfsr\(3) $ (VCC)
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~1\ = CARRY(\card_gen|lfsr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|lfsr\(3),
	datad => VCC,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_3~0_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_3~1\);

-- Location: LCCOMB_X36_Y14_N8
\card_gen|Mod0|auto_generated|divider|divider|op_3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~6_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|StageOut[178]~362_combout\ & (((!\card_gen|Mod0|auto_generated|divider|divider|op_3~5\)))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[178]~362_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[178]~463_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|op_3~5\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[178]~463_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_3~5\) # (GND)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~7\ = CARRY(((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[178]~362_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|StageOut[178]~463_combout\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[178]~362_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[178]~463_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_3~5\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_3~6_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_3~7\);

-- Location: LCCOMB_X36_Y14_N10
\card_gen|Mod0|auto_generated|divider|divider|op_3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~8_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~7\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[179]~462_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[179]~361_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_3~7\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[179]~462_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[179]~361_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~9\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[179]~462_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[179]~361_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[179]~462_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[179]~361_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_3~7\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_3~8_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_3~9\);

-- Location: LCCOMB_X36_Y14_N12
\card_gen|Mod0|auto_generated|divider|divider|op_3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~10_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~9\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[180]~360_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[180]~461_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_3~9\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[180]~360_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[180]~461_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~11\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[180]~360_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[180]~461_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[180]~360_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[180]~461_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_3~9\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_3~11\);

-- Location: LCCOMB_X36_Y14_N22
\card_gen|Mod0|auto_generated|divider|divider|op_3~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~20_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~19\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[185]~355_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[185]~456_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_3~19\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[185]~355_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[185]~456_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~21\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[185]~355_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[185]~456_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_3~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[185]~355_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[185]~456_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_3~19\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_3~21\);

-- Location: LCCOMB_X36_Y14_N26
\card_gen|Mod0|auto_generated|divider|divider|op_3~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~24_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~23\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[187]~353_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[187]~454_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_3~23\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[187]~353_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[187]~454_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~25\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[187]~353_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[187]~454_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_3~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[187]~353_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[187]~454_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_3~23\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_3~24_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_3~25\);

-- Location: LCCOMB_X36_Y15_N0
\card_gen|Mod0|auto_generated|divider|divider|op_4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~0_combout\ = \card_gen|lfsr\(2) $ (VCC)
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~1\ = CARRY(\card_gen|lfsr\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(2),
	datad => VCC,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_4~0_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_4~1\);

-- Location: LCCOMB_X36_Y15_N6
\card_gen|Mod0|auto_generated|divider|divider|op_4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~6_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|StageOut[194]~474_combout\ & (((!\card_gen|Mod0|auto_generated|divider|divider|op_4~5\)))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[194]~474_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[194]~376_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|op_4~5\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[194]~376_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_4~5\) # (GND)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~7\ = CARRY(((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[194]~474_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|StageOut[194]~376_combout\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[194]~474_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[194]~376_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_4~5\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_4~6_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_4~7\);

-- Location: LCCOMB_X36_Y15_N8
\card_gen|Mod0|auto_generated|divider|divider|op_4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~8_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~7\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[195]~375_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[195]~473_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_4~7\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[195]~375_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[195]~473_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~9\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[195]~375_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[195]~473_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[195]~375_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[195]~473_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_4~7\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_4~8_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_4~9\);

-- Location: LCCOMB_X36_Y15_N10
\card_gen|Mod0|auto_generated|divider|divider|op_4~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~10_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~9\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[196]~374_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[196]~472_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_4~9\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[196]~374_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[196]~472_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~11\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[196]~374_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[196]~472_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_4~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[196]~374_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[196]~472_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_4~9\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_4~10_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_4~11\);

-- Location: LCCOMB_X36_Y15_N12
\card_gen|Mod0|auto_generated|divider|divider|op_4~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~12_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~11\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[197]~471_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[197]~373_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_4~11\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[197]~471_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[197]~373_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~13\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[197]~471_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[197]~373_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[197]~471_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[197]~373_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_4~11\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_4~13\);

-- Location: LCCOMB_X36_Y15_N14
\card_gen|Mod0|auto_generated|divider|divider|op_4~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~14_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~13\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[198]~470_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[198]~372_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_4~13\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[198]~470_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[198]~372_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~15\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[198]~470_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[198]~372_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_4~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[198]~470_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[198]~372_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_4~13\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_4~14_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_4~15\);

-- Location: LCCOMB_X36_Y15_N16
\card_gen|Mod0|auto_generated|divider|divider|op_4~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~16_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~15\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[199]~469_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[199]~371_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_4~15\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[199]~469_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[199]~371_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~17\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[199]~469_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[199]~371_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_4~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[199]~469_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[199]~371_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_4~15\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_4~16_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_4~17\);

-- Location: LCCOMB_X36_Y15_N20
\card_gen|Mod0|auto_generated|divider|divider|op_4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~20_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~19\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[201]~467_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[201]~369_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_4~19\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[201]~467_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[201]~369_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~21\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[201]~467_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[201]~369_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_4~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[201]~467_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[201]~369_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_4~19\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_4~20_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_4~21\);

-- Location: LCCOMB_X36_Y15_N24
\card_gen|Mod0|auto_generated|divider|divider|op_4~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~24_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~23\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[203]~465_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[203]~367_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_4~23\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[203]~465_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[203]~367_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~25\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[203]~465_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[203]~367_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_4~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[203]~465_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[203]~367_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_4~23\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_4~25\);

-- Location: LCCOMB_X38_Y15_N0
\card_gen|Mod0|auto_generated|divider|divider|op_5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~0_combout\ = \card_gen|lfsr\(1) $ (VCC)
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~1\ = CARRY(\card_gen|lfsr\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(1),
	datad => VCC,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_5~0_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_5~1\);

-- Location: LCCOMB_X38_Y15_N4
\card_gen|Mod0|auto_generated|divider|divider|op_5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~4_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~3\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[209]~512_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[209]~392_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_5~3\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[209]~512_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[209]~392_combout\)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~5\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|op_5~3\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[209]~512_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[209]~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[209]~512_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[209]~392_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_5~3\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_5~4_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_5~5\);

-- Location: LCCOMB_X38_Y15_N12
\card_gen|Mod0|auto_generated|divider|divider|op_5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~12_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~11\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[213]~388_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[213]~483_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_5~11\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[213]~388_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[213]~483_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~13\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[213]~388_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[213]~483_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[213]~388_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[213]~483_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_5~11\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_5~12_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_5~13\);

-- Location: LCCOMB_X38_Y15_N24
\card_gen|Mod0|auto_generated|divider|divider|op_5~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~24_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~23\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[219]~477_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[219]~382_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_5~23\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[219]~477_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[219]~382_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~25\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[219]~477_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[219]~382_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_5~23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[219]~477_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[219]~382_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_5~23\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_5~24_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_5~25\);

-- Location: LCCOMB_X39_Y16_N18
\card_gen|Mod0|auto_generated|divider|divider|op_6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~2_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_6~1\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~409_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~410_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_6~1\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~409_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~410_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~3\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~409_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~410_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~409_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~410_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_6~1\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_6~3\);

-- Location: LCCOMB_X39_Y16_N22
\card_gen|Mod0|auto_generated|divider|divider|op_6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~6_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~407_combout\ & (((!\card_gen|Mod0|auto_generated|divider|divider|op_6~5\)))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~407_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~499_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|op_6~5\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~499_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_6~5\) # (GND)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~7\ = CARRY(((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~407_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~499_combout\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_6~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~407_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~499_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_6~5\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_6~6_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_6~7\);

-- Location: LCCOMB_X47_Y10_N4
\P_ace~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_ace~0_combout\ = (\P_ace~regout\ & (!\LessThan2~2_combout\)) # (!\P_ace~regout\ & ((\process_0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datac => \P_ace~regout\,
	datad => \process_0~10_combout\,
	combout => \P_ace~0_combout\);

-- Location: LCCOMB_X43_Y10_N20
\D_ace~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_ace~0_combout\ = (\D_ace~regout\ & (!\LessThan5~2_combout\)) # (!\D_ace~regout\ & ((\process_0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan5~2_combout\,
	datac => \D_ace~regout\,
	datad => \process_0~11_combout\,
	combout => \D_ace~0_combout\);

-- Location: LCCOMB_X46_Y12_N14
\Div0|auto_generated|divider|divider|StageOut[18]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((P_sum(4)))) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => P_sum(4),
	combout => \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LCCOMB_X45_Y14_N26
\Div0|auto_generated|divider|divider|StageOut[17]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~1_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & P_sum(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => P_sum(3),
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~1_combout\);

-- Location: LCCOMB_X46_Y12_N8
\Div0|auto_generated|divider|divider|StageOut[16]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[16]~3_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((P_sum(2)))) # (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => P_sum(2),
	combout => \Div0|auto_generated|divider|divider|StageOut[16]~3_combout\);

-- Location: LCCOMB_X45_Y14_N20
\Div0|auto_generated|divider|divider|StageOut[15]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~4_combout\ = (P_sum(1) & \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(1),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~4_combout\);

-- Location: LCCOMB_X44_Y13_N14
\Div1|auto_generated|divider|divider|StageOut[17]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~2_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~2_combout\);

-- Location: LCCOMB_X45_Y13_N24
\Div1|auto_generated|divider|divider|StageOut[15]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~5_combout\ = (D_sum(1) & !\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => D_sum(1),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~5_combout\);

-- Location: LCCOMB_X43_Y13_N12
\Mod1|auto_generated|divider|divider|StageOut[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\ = (D_sum(1) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(1),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\);

-- Location: LCCOMB_X43_Y13_N18
\Mod1|auto_generated|divider|divider|StageOut[17]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[17]~4_combout\ = (D_sum(3) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => D_sum(3),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: LCCOMB_X43_Y13_N4
\Mod1|auto_generated|divider|divider|StageOut[23]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[17]~4_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\);

-- Location: LCCOMB_X44_Y14_N12
\Mod0|auto_generated|divider|divider|StageOut[15]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & P_sum(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => P_sum(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~1_combout\);

-- Location: LCCOMB_X44_Y14_N6
\Mod0|auto_generated|divider|divider|StageOut[18]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & P_sum(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => P_sum(4),
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\);

-- Location: LCCOMB_X44_Y14_N16
\Mod0|auto_generated|divider|divider|StageOut[16]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\);

-- Location: LCCOMB_X44_Y14_N2
\Mod0|auto_generated|divider|divider|StageOut[21]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (P_sum(1))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(1),
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\);

-- Location: LCCOMB_X44_Y16_N12
\Selector59~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector59~2_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\) # (P_sum(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => P_sum(0),
	combout => \Selector59~2_combout\);

-- Location: LCCOMB_X42_Y16_N12
\Mux33~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~1_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\ & ((D_sum(0) & ((\Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\))) # (!D_sum(0) & (\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\ & (D_sum(0) $ (\Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => D_sum(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \Mux33~1_combout\);

-- Location: LCCOMB_X44_Y16_N16
\Mux19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & ((P_sum(0) & ((\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\))) # (!P_sum(0) & (\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ $ (P_sum(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => P_sum(0),
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X44_Y16_N2
\Mux18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\) # (!P_sum(0))))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & !P_sum(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => P_sum(0),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X44_Y16_N4
\Mux16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\) # ((P_sum(0) & ((\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\))) # (!P_sum(0) & (\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => P_sum(0),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X44_Y16_N26
\Mux15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & ((P_sum(0)) # (!\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & (P_sum(0) & (\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ $ (!\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => P_sum(0),
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X42_Y16_N30
\Mux28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~1_combout\ = (D_sum(0) & ((\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\ $ (\Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\)))) # (!D_sum(0) & 
-- ((\Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\ $ (\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => D_sum(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \Mux28~1_combout\);

-- Location: LCCOMB_X44_Y16_N18
\Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (P_sum(0) & ((\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ $ (\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\)))) # (!P_sum(0) & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\) # (\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ $ (\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => P_sum(0),
	combout => \Mux14~1_combout\);

-- Location: LCFF_X47_Y10_N11
\D_cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \D_cont[3]~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_cont(3));

-- Location: LCFF_X47_Y10_N13
\D_cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \D_cont[2]~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_cont(2));

-- Location: LCCOMB_X46_Y10_N24
\process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!D_sum(3) & (!D_cont(3) & (!D_sum(1) & !D_cont(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(3),
	datab => D_cont(3),
	datac => D_sum(1),
	datad => D_cont(2),
	combout => \process_0~0_combout\);

-- Location: LCFF_X47_Y10_N31
\D_cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \D_cont[1]~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_cont(1));

-- Location: LCFF_X49_Y10_N25
\D_cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \D_cont[0]~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_cont(0));

-- Location: LCCOMB_X46_Y10_N2
\process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (D_sum(2) & (D_cont(1) & (D_sum(4) & !D_cont(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(2),
	datab => D_cont(1),
	datac => D_sum(4),
	datad => D_cont(0),
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X46_Y10_N4
\process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (D_sum(0) & (\process_0~0_combout\ & \process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_sum(0),
	datac => \process_0~0_combout\,
	datad => \process_0~1_combout\,
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X46_Y10_N14
\Selector24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~2_combout\ = (\state.SD_result~regout\ & (((!D_sum(0)) # (!\process_0~1_combout\)) # (!\process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => \process_0~1_combout\,
	datac => \state.SD_result~regout\,
	datad => D_sum(0),
	combout => \Selector24~2_combout\);

-- Location: LCFF_X40_Y15_N27
\card_gen|random_number[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \card_gen|Add0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|random_number\(2));

-- Location: LCFF_X39_Y15_N21
\card_gen|random_number[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \card_gen|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|random_number\(1));

-- Location: LCCOMB_X40_Y11_N12
\process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (\SW~combout\(5) & (\card_gen|random_number\(3) & ((\card_gen|random_number\(2)) # (\card_gen|random_number\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|random_number\(2),
	datab => \card_gen|random_number\(1),
	datac => \SW~combout\(5),
	datad => \card_gen|random_number\(3),
	combout => \process_0~3_combout\);

-- Location: LCCOMB_X42_Y11_N6
\temp_card_val~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp_card_val~1_combout\ = (\process_0~3_combout\) # ((\SW~combout\(5) & (\card_gen|random_number\(1))) # (!\SW~combout\(5) & ((\SW~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \card_gen|random_number\(1),
	datac => \SW~combout\(5),
	datad => \SW~combout\(1),
	combout => \temp_card_val~1_combout\);

-- Location: LCCOMB_X46_Y11_N16
\Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\temp_card_val~1_combout\ & ((\temp_card_val~0_combout\ & ((\temp_card_val~3_combout\))) # (!\temp_card_val~0_combout\ & (\temp_card_val~2_combout\)))) # (!\temp_card_val~1_combout\ & (\temp_card_val~2_combout\ & 
-- (\temp_card_val~3_combout\ $ (\temp_card_val~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_card_val~1_combout\,
	datab => \temp_card_val~2_combout\,
	datac => \temp_card_val~3_combout\,
	datad => \temp_card_val~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X46_Y11_N14
\Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\temp_card_val~2_combout\ & (\temp_card_val~3_combout\ & ((\temp_card_val~1_combout\) # (!\temp_card_val~0_combout\)))) # (!\temp_card_val~2_combout\ & (\temp_card_val~1_combout\ & (!\temp_card_val~3_combout\ & 
-- !\temp_card_val~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_card_val~1_combout\,
	datab => \temp_card_val~2_combout\,
	datac => \temp_card_val~3_combout\,
	datad => \temp_card_val~0_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X47_Y10_N6
\Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~0_combout\ = (\state.SD_rec1~regout\ & ((\state.S_lose~regout\) # ((\state.S_draw~regout\) # (\state.S_win~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_lose~regout\,
	datab => \state.S_draw~regout\,
	datac => \state.SD_rec1~regout\,
	datad => \state.S_win~regout\,
	combout => \Selector18~0_combout\);

-- Location: LCCOMB_X47_Y11_N16
\process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~5_combout\ = (P_sum(4) & (!P_sum(3) & (!P_cont(0) & P_sum(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(4),
	datab => P_sum(3),
	datac => P_cont(0),
	datad => P_sum(2),
	combout => \process_0~5_combout\);

-- Location: LCCOMB_X46_Y10_N8
\Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~1_combout\ = (D_sum(2) & ((D_sum(1)) # ((\LessThan8~2_combout\ & P_sum(4))))) # (!D_sum(2) & (D_sum(1) & (\LessThan8~2_combout\ & P_sum(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(2),
	datab => D_sum(1),
	datac => \LessThan8~2_combout\,
	datad => P_sum(4),
	combout => \Selector22~1_combout\);

-- Location: LCCOMB_X46_Y10_N30
\Selector22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~2_combout\ = (D_sum(4) & (!\process_0~2_combout\ & ((D_sum(3)) # (\Selector22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(3),
	datab => \Selector22~1_combout\,
	datac => D_sum(4),
	datad => \process_0~2_combout\,
	combout => \Selector22~2_combout\);

-- Location: LCCOMB_X44_Y11_N6
\process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~6_combout\ = ((!\Add2~6_combout\ & ((!\Add2~2_combout\) # (!\Add2~4_combout\)))) # (!\Add2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add2~6_combout\,
	datac => \Add2~8_combout\,
	datad => \Add2~2_combout\,
	combout => \process_0~6_combout\);

-- Location: LCCOMB_X43_Y10_N18
\temp_card_val~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp_card_val~4_combout\ = (\temp_card_val~3_combout\) # ((\Equal0~0_combout\ & (\process_0~6_combout\ & !\Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \process_0~6_combout\,
	datac => \temp_card_val~3_combout\,
	datad => \Add2~10_combout\,
	combout => \temp_card_val~4_combout\);

-- Location: LCCOMB_X43_Y10_N28
\temp_card_val~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp_card_val~5_combout\ = (\temp_card_val~1_combout\) # ((\Equal0~0_combout\ & (\process_0~6_combout\ & !\Add2~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \process_0~6_combout\,
	datac => \temp_card_val~1_combout\,
	datad => \Add2~10_combout\,
	combout => \temp_card_val~5_combout\);

-- Location: LCCOMB_X46_Y11_N24
\temp_card_val~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp_card_val~6_combout\ = (\temp_card_val~3_combout\) # ((!\temp_card_val~1_combout\ & (!\temp_card_val~2_combout\ & \temp_card_val~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_card_val~1_combout\,
	datab => \temp_card_val~2_combout\,
	datac => \temp_card_val~3_combout\,
	datad => \temp_card_val~0_combout\,
	combout => \temp_card_val~6_combout\);

-- Location: LCCOMB_X43_Y10_N30
\temp_card_val~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp_card_val~8_combout\ = (\temp_card_val~3_combout\) # ((\process_0~8_combout\ & (!\Add7~10_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_card_val~3_combout\,
	datab => \process_0~8_combout\,
	datac => \Add7~10_combout\,
	datad => \Equal0~0_combout\,
	combout => \temp_card_val~8_combout\);

-- Location: LCCOMB_X43_Y10_N14
\Add9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add9~1_combout\ = \Add8~4_combout\ $ (\Add8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add8~4_combout\,
	datad => \Add8~2_combout\,
	combout => \Add9~1_combout\);

-- Location: LCCOMB_X49_Y10_N26
\Selector25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~1_combout\ = (!\state.SD_wait1~regout\ & !\state.SD_wait~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SD_wait1~regout\,
	datab => \state.SD_wait~regout\,
	combout => \Selector25~1_combout\);

-- Location: LCCOMB_X47_Y10_N26
\D_cont[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_cont[2]~0_combout\ = (D_cont(1) & (D_cont(0) & ((\state.SD_recieve~regout\) # (!\Selector25~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~1_combout\,
	datab => D_cont(1),
	datac => \state.SD_recieve~regout\,
	datad => D_cont(0),
	combout => \D_cont[2]~0_combout\);

-- Location: LCCOMB_X47_Y10_N10
\D_cont[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_cont[3]~1_combout\ = D_cont(3) $ (((\D_cont[2]~0_combout\ & D_cont(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \D_cont[2]~0_combout\,
	datac => D_cont(3),
	datad => D_cont(2),
	combout => \D_cont[3]~1_combout\);

-- Location: LCCOMB_X47_Y10_N12
\D_cont[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_cont[2]~2_combout\ = D_cont(2) $ (\D_cont[2]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => D_cont(2),
	datad => \D_cont[2]~0_combout\,
	combout => \D_cont[2]~2_combout\);

-- Location: LCCOMB_X47_Y10_N30
\D_cont[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_cont[1]~3_combout\ = D_cont(1) $ (((D_cont(0) & ((\state.SD_recieve~regout\) # (!\Selector25~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~1_combout\,
	datab => D_cont(0),
	datac => D_cont(1),
	datad => \state.SD_recieve~regout\,
	combout => \D_cont[1]~3_combout\);

-- Location: LCCOMB_X49_Y10_N24
\D_cont[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_cont[0]~4_combout\ = D_cont(0) $ (((\state.SD_wait1~regout\) # ((\state.SD_wait~regout\) # (\state.SD_recieve~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SD_wait1~regout\,
	datab => \state.SD_wait~regout\,
	datac => D_cont(0),
	datad => \state.SD_recieve~regout\,
	combout => \D_cont[0]~4_combout\);

-- Location: LCCOMB_X31_Y16_N18
\card_gen|Mod0|auto_generated|divider|divider|StageOut[51]~282\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[51]~282_combout\ = (!\card_gen|lfsr\(15) & \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(15),
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[51]~282_combout\);

-- Location: LCCOMB_X31_Y16_N14
\card_gen|Mod0|auto_generated|divider|divider|StageOut[50]~284\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[50]~284_combout\ = (\card_gen|lfsr\(14) & \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|lfsr\(14),
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[50]~284_combout\);

-- Location: LCCOMB_X30_Y16_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[49]~286\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[49]~286_combout\ = (!\card_gen|lfsr\(13) & \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|lfsr\(13),
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[49]~286_combout\);

-- Location: LCCOMB_X30_Y16_N14
\card_gen|Mod0|auto_generated|divider|divider|StageOut[48]~289\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[48]~289_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_8~0_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_8~0_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[48]~289_combout\);

-- Location: LCCOMB_X32_Y16_N16
\card_gen|Mod0|auto_generated|divider|divider|StageOut[67]~291\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[67]~291_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_9~6_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_9~6_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[67]~291_combout\);

-- Location: LCCOMB_X32_Y16_N20
\card_gen|Mod0|auto_generated|divider|divider|StageOut[64]~294\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[64]~294_combout\ = (!\card_gen|lfsr\(11) & \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|lfsr\(11),
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[64]~294_combout\);

-- Location: LCCOMB_X33_Y16_N24
\card_gen|Mod0|auto_generated|divider|divider|StageOut[85]~296\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[85]~296_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_10~10_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[85]~296_combout\);

-- Location: LCCOMB_X33_Y16_N22
\card_gen|Mod0|auto_generated|divider|divider|StageOut[84]~297\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[84]~297_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_10~8_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_10~8_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[84]~297_combout\);

-- Location: LCCOMB_X32_Y17_N16
\card_gen|Mod0|auto_generated|divider|divider|StageOut[82]~299\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[82]~299_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_10~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_10~4_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[82]~299_combout\);

-- Location: LCCOMB_X33_Y15_N2
\card_gen|Mod0|auto_generated|divider|divider|StageOut[81]~300\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[81]~300_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_10~2_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[81]~300_combout\);

-- Location: LCCOMB_X33_Y15_N10
\card_gen|Mod0|auto_generated|divider|divider|StageOut[80]~302\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[80]~302_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_10~0_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_10~0_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[80]~302_combout\);

-- Location: LCCOMB_X34_Y16_N24
\card_gen|Mod0|auto_generated|divider|divider|StageOut[102]~303\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[102]~303_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_11~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_11~12_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[102]~303_combout\);

-- Location: LCCOMB_X35_Y16_N16
\card_gen|Mod0|auto_generated|divider|divider|StageOut[98]~307\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[98]~307_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_11~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_11~4_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[98]~307_combout\);

-- Location: LCCOMB_X35_Y16_N26
\card_gen|Mod0|auto_generated|divider|divider|StageOut[97]~308\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[97]~308_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_11~2_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_11~2_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[97]~308_combout\);

-- Location: LCCOMB_X33_Y16_N30
\card_gen|Mod0|auto_generated|divider|divider|StageOut[96]~310\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[96]~310_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_11~0_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[96]~310_combout\);

-- Location: LCCOMB_X33_Y17_N8
\card_gen|Mod0|auto_generated|divider|divider|StageOut[118]~312\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[118]~312_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~12_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_12~12_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[118]~312_combout\);

-- Location: LCCOMB_X33_Y17_N2
\card_gen|Mod0|auto_generated|divider|divider|StageOut[113]~317\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[113]~317_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~2_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_12~2_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[113]~317_combout\);

-- Location: LCCOMB_X34_Y15_N10
\card_gen|Mod0|auto_generated|divider|divider|StageOut[112]~318\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[112]~318_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\ & \card_gen|lfsr\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \card_gen|lfsr\(8),
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[112]~318_combout\);

-- Location: LCCOMB_X34_Y17_N6
\card_gen|Mod0|auto_generated|divider|divider|StageOut[136]~320\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[136]~320_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~16_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_13~16_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[136]~320_combout\);

-- Location: LCCOMB_X34_Y17_N2
\card_gen|Mod0|auto_generated|divider|divider|StageOut[133]~323\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[133]~323_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~10_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_13~10_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[133]~323_combout\);

-- Location: LCCOMB_X33_Y17_N14
\card_gen|Mod0|auto_generated|divider|divider|StageOut[130]~326\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[130]~326_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_13~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_13~4_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[130]~326_combout\);

-- Location: LCCOMB_X33_Y17_N28
\card_gen|Mod0|auto_generated|divider|divider|StageOut[129]~327\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[129]~327_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_13~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_13~2_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[129]~327_combout\);

-- Location: LCCOMB_X33_Y17_N24
\card_gen|Mod0|auto_generated|divider|divider|StageOut[128]~329\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[128]~329_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_13~0_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[128]~329_combout\);

-- Location: LCCOMB_X36_Y17_N4
\card_gen|Mod0|auto_generated|divider|divider|StageOut[153]~330\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[153]~330_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_14~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~18_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[153]~330_combout\);

-- Location: LCCOMB_X36_Y17_N6
\card_gen|Mod0|auto_generated|divider|divider|StageOut[152]~331\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[152]~331_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_14~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~16_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[152]~331_combout\);

-- Location: LCCOMB_X36_Y17_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[151]~332\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[151]~332_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_14~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~14_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[151]~332_combout\);

-- Location: LCCOMB_X35_Y17_N8
\card_gen|Mod0|auto_generated|divider|divider|StageOut[150]~333\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[150]~333_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~12_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_14~12_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[150]~333_combout\);

-- Location: LCCOMB_X37_Y17_N4
\card_gen|Mod0|auto_generated|divider|divider|StageOut[148]~335\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[148]~335_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~8_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_14~8_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[148]~335_combout\);

-- Location: LCCOMB_X37_Y17_N24
\card_gen|Mod0|auto_generated|divider|divider|StageOut[146]~337\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[146]~337_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~4_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_14~4_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[146]~337_combout\);

-- Location: LCCOMB_X32_Y17_N18
\card_gen|Mod0|auto_generated|divider|divider|StageOut[144]~339\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[144]~339_combout\ = (\card_gen|lfsr\(6) & \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|lfsr\(6),
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[144]~339_combout\);

-- Location: LCCOMB_X37_Y16_N8
\card_gen|Mod0|auto_generated|divider|divider|StageOut[169]~342\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[169]~342_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_1~18_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[169]~342_combout\);

-- Location: LCCOMB_X37_Y17_N6
\card_gen|Mod0|auto_generated|divider|divider|StageOut[165]~346\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[165]~346_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_1~10_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[165]~346_combout\);

-- Location: LCCOMB_X37_Y16_N2
\card_gen|Mod0|auto_generated|divider|divider|StageOut[163]~348\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[163]~348_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_1~6_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[163]~348_combout\);

-- Location: LCCOMB_X37_Y16_N4
\card_gen|Mod0|auto_generated|divider|divider|StageOut[160]~351\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[160]~351_combout\ = (!\card_gen|lfsr\(5) & \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(5),
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[160]~351_combout\);

-- Location: LCCOMB_X35_Y14_N12
\card_gen|Mod0|auto_generated|divider|divider|StageOut[187]~353\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[187]~353_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~22_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[187]~353_combout\);

-- Location: LCCOMB_X37_Y14_N16
\card_gen|Mod0|auto_generated|divider|divider|StageOut[186]~354\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[186]~354_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[186]~354_combout\);

-- Location: LCCOMB_X37_Y14_N2
\card_gen|Mod0|auto_generated|divider|divider|StageOut[185]~355\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[185]~355_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~18_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[185]~355_combout\);

-- Location: LCCOMB_X35_Y14_N30
\card_gen|Mod0|auto_generated|divider|divider|StageOut[184]~356\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[184]~356_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~16_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[184]~356_combout\);

-- Location: LCCOMB_X35_Y14_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[183]~357\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[183]~357_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~14_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~14_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[183]~357_combout\);

-- Location: LCCOMB_X37_Y14_N4
\card_gen|Mod0|auto_generated|divider|divider|StageOut[182]~358\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[182]~358_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_2~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~12_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[182]~358_combout\);

-- Location: LCCOMB_X37_Y14_N26
\card_gen|Mod0|auto_generated|divider|divider|StageOut[180]~360\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[180]~360_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_2~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[180]~360_combout\);

-- Location: LCCOMB_X37_Y14_N6
\card_gen|Mod0|auto_generated|divider|divider|StageOut[178]~362\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[178]~362_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~4_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[178]~362_combout\);

-- Location: LCCOMB_X35_Y14_N10
\card_gen|Mod0|auto_generated|divider|divider|StageOut[177]~363\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[177]~363_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~2_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_2~2_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[177]~363_combout\);

-- Location: LCCOMB_X35_Y14_N20
\card_gen|Mod0|auto_generated|divider|divider|StageOut[176]~364\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[176]~364_combout\ = (\card_gen|lfsr\(4) & \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(4),
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[176]~364_combout\);

-- Location: LCCOMB_X35_Y15_N8
\card_gen|Mod0|auto_generated|divider|divider|StageOut[204]~366\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[204]~366_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_3~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[204]~366_combout\);

-- Location: LCCOMB_X35_Y15_N6
\card_gen|Mod0|auto_generated|divider|divider|StageOut[202]~368\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[202]~368_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~20_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[202]~368_combout\);

-- Location: LCCOMB_X35_Y14_N8
\card_gen|Mod0|auto_generated|divider|divider|StageOut[196]~374\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[196]~374_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~8_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_3~8_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[196]~374_combout\);

-- Location: LCCOMB_X37_Y14_N12
\card_gen|Mod0|auto_generated|divider|divider|StageOut[195]~375\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[195]~375_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~6_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_3~6_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[195]~375_combout\);

-- Location: LCCOMB_X35_Y14_N4
\card_gen|Mod0|auto_generated|divider|divider|StageOut[192]~379\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[192]~379_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~0_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_3~0_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[192]~379_combout\);

-- Location: LCCOMB_X37_Y15_N26
\card_gen|Mod0|auto_generated|divider|divider|StageOut[220]~381\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[220]~381_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_4~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[220]~381_combout\);

-- Location: LCCOMB_X37_Y15_N2
\card_gen|Mod0|auto_generated|divider|divider|StageOut[218]~383\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[218]~383_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~20_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~20_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[218]~383_combout\);

-- Location: LCCOMB_X37_Y15_N30
\card_gen|Mod0|auto_generated|divider|divider|StageOut[216]~385\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[216]~385_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~16_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_4~16_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[216]~385_combout\);

-- Location: LCCOMB_X37_Y15_N20
\card_gen|Mod0|auto_generated|divider|divider|StageOut[213]~388\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[213]~388_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~10_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_4~10_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[213]~388_combout\);

-- Location: LCCOMB_X37_Y15_N14
\card_gen|Mod0|auto_generated|divider|divider|StageOut[212]~389\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[212]~389_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~8_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_4~8_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[212]~389_combout\);

-- Location: LCCOMB_X37_Y15_N12
\card_gen|Mod0|auto_generated|divider|divider|StageOut[211]~390\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[211]~390_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~6_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~6_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[211]~390_combout\);

-- Location: LCCOMB_X37_Y15_N8
\card_gen|Mod0|auto_generated|divider|divider|StageOut[208]~394\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[208]~394_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~0_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~0_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[208]~394_combout\);

-- Location: LCCOMB_X39_Y15_N24
\card_gen|Mod0|auto_generated|divider|divider|StageOut[236]~397\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[236]~397_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_5~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[236]~397_combout\);

-- Location: LCCOMB_X39_Y16_N12
\card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~407\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~407_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~4_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_5~4_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~407_combout\);

-- Location: LCCOMB_X40_Y15_N10
\card_gen|Mod0|auto_generated|divider|divider|StageOut[243]~412\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[243]~412_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_6~32_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~407_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~499_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_6~32_combout\ & (((\card_gen|Mod0|auto_generated|divider|divider|op_6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~407_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~499_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_6~6_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_6~32_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[243]~412_combout\);

-- Location: LCCOMB_X40_Y15_N26
\card_gen|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Add0~9_combout\ = \card_gen|Mod0|auto_generated|divider|divider|StageOut[242]~414_combout\ $ (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[241]~413_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|StageOut[240]~411_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[242]~414_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[241]~413_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|StageOut[240]~411_combout\,
	combout => \card_gen|Add0~9_combout\);

-- Location: LCCOMB_X39_Y15_N20
\card_gen|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Add0~10_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_6~32_combout\ & (((\card_gen|Add0~11_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_6~32_combout\ & 
-- (\card_gen|Mod0|auto_generated|divider|divider|op_6~0_combout\ $ ((\card_gen|Mod0|auto_generated|divider|divider|op_6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_6~32_combout\,
	datad => \card_gen|Add0~11_combout\,
	combout => \card_gen|Add0~10_combout\);

-- Location: LCCOMB_X43_Y10_N2
\process_0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~10_combout\ = (\Equal0~0_combout\ & (\process_0~6_combout\ & !\Add2~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \process_0~6_combout\,
	datad => \Add2~10_combout\,
	combout => \process_0~10_combout\);

-- Location: LCCOMB_X47_Y12_N4
\LessThan2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = (\Add3~4_combout\ & \Add3~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add3~4_combout\,
	datad => \Add3~2_combout\,
	combout => \LessThan2~1_combout\);

-- Location: LCCOMB_X47_Y12_N18
\LessThan2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = (\Add3~10_combout\) # ((\Add3~8_combout\ & ((\Add3~6_combout\) # (\LessThan2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add3~10_combout\,
	datac => \LessThan2~1_combout\,
	datad => \Add3~8_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LCCOMB_X48_Y12_N20
\Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector30~0_combout\ = (\P_ace~regout\) # ((\Equal0~0_combout\ & \state.SP_recieve~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_ace~regout\,
	datac => \Equal0~0_combout\,
	datad => \state.SP_recieve~regout\,
	combout => \Selector30~0_combout\);

-- Location: LCCOMB_X43_Y10_N0
\process_0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~11_combout\ = (\process_0~8_combout\ & (!\Add7~10_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \process_0~8_combout\,
	datac => \Add7~10_combout\,
	datad => \Equal0~0_combout\,
	combout => \process_0~11_combout\);

-- Location: LCCOMB_X43_Y10_N22
\LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (\Add8~4_combout\ & \Add8~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add8~4_combout\,
	datad => \Add8~2_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X43_Y10_N8
\LessThan5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = (\Add8~10_combout\) # ((\Add8~8_combout\ & ((\Add8~6_combout\) # (\LessThan5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~8_combout\,
	datab => \Add8~6_combout\,
	datac => \Add8~10_combout\,
	datad => \LessThan5~1_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X43_Y10_N6
\Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\D_ace~regout\) # ((\Equal0~0_combout\ & \state.SD_recieve~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datac => \D_ace~regout\,
	datad => \state.SD_recieve~regout\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X32_Y16_N30
\card_gen|Mod0|auto_generated|divider|divider|StageOut[83]~417\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[83]~417_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[66]~502_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_9~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_9~4_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|StageOut[66]~502_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[83]~417_combout\);

-- Location: LCCOMB_X34_Y15_N12
\card_gen|Mod0|auto_generated|divider|divider|StageOut[115]~428\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[115]~428_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[98]~423_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_11~4_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_11~4_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|StageOut[98]~423_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[115]~428_combout\);

-- Location: LCCOMB_X33_Y17_N20
\card_gen|Mod0|auto_generated|divider|divider|StageOut[114]~429\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[114]~429_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[97]~505_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_11~2_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[97]~505_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[114]~429_combout\);

-- Location: LCCOMB_X34_Y15_N26
\card_gen|Mod0|auto_generated|divider|divider|StageOut[132]~434\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[132]~434_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[115]~428_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_12~6_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[115]~428_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_12~6_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[132]~434_combout\);

-- Location: LCCOMB_X35_Y15_N28
\card_gen|Mod0|auto_generated|divider|divider|StageOut[149]~441\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[149]~441_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[132]~434_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_13~8_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_13~8_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|StageOut[132]~434_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[149]~441_combout\);

-- Location: LCCOMB_X34_Y15_N18
\card_gen|Mod0|auto_generated|divider|divider|StageOut[147]~443\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[147]~443_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[130]~436_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_13~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[130]~436_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_13~4_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[147]~443_combout\);

-- Location: LCCOMB_X35_Y15_N10
\card_gen|Mod0|auto_generated|divider|divider|StageOut[166]~449\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[166]~449_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[149]~441_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_14~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_14~10_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|StageOut[149]~441_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[166]~449_combout\);

-- Location: LCCOMB_X35_Y15_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[164]~451\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[164]~451_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[147]~443_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_14~6_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_14~6_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[147]~443_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[164]~451_combout\);

-- Location: LCCOMB_X35_Y15_N16
\card_gen|Mod0|auto_generated|divider|divider|StageOut[181]~460\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[181]~460_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[164]~451_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_1~8_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_1~8_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[164]~451_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[181]~460_combout\);

-- Location: LCCOMB_X35_Y15_N14
\card_gen|Mod0|auto_generated|divider|divider|StageOut[200]~468\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[200]~468_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[183]~458_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_2~14_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_2~14_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[183]~458_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[200]~468_combout\);

-- Location: LCCOMB_X37_Y16_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[199]~469\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[199]~469_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[182]~459_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_2~12_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|StageOut[182]~459_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[199]~469_combout\);

-- Location: LCCOMB_X35_Y15_N20
\card_gen|Mod0|auto_generated|divider|divider|StageOut[198]~470\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[198]~470_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[181]~460_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_2~10_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[181]~460_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_2~10_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[198]~470_combout\);

-- Location: LCCOMB_X37_Y17_N20
\card_gen|Mod0|auto_generated|divider|divider|StageOut[197]~471\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[197]~471_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[180]~461_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_2~8_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_2~8_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[180]~461_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[197]~471_combout\);

-- Location: LCCOMB_X37_Y15_N6
\card_gen|Mod0|auto_generated|divider|divider|StageOut[221]~475\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[221]~475_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[204]~464_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_3~24_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[204]~464_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_3~24_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[221]~475_combout\);

-- Location: LCCOMB_X35_Y15_N18
\card_gen|Mod0|auto_generated|divider|divider|StageOut[217]~479\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[217]~479_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[200]~468_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[200]~468_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_3~16_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[217]~479_combout\);

-- Location: LCCOMB_X35_Y15_N24
\card_gen|Mod0|auto_generated|divider|divider|StageOut[215]~481\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[215]~481_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[198]~470_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_3~12_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_3~12_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[198]~470_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[215]~481_combout\);

-- Location: LCCOMB_X37_Y17_N26
\card_gen|Mod0|auto_generated|divider|divider|StageOut[214]~482\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[214]~482_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[197]~471_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_3~10_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[197]~471_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[214]~482_combout\);

-- Location: LCCOMB_X37_Y16_N12
\card_gen|Mod0|auto_generated|divider|divider|StageOut[210]~486\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[210]~486_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[193]~511_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_3~2_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_3~2_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[193]~511_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[210]~486_combout\);

-- Location: LCCOMB_X40_Y15_N4
\card_gen|Mod0|auto_generated|divider|divider|StageOut[238]~487\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[238]~487_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[221]~475_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_4~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_4~26_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[221]~475_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[238]~487_combout\);

-- Location: LCCOMB_X38_Y16_N16
\card_gen|Mod0|auto_generated|divider|divider|StageOut[237]~488\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[237]~488_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[220]~476_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_4~24_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[220]~476_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_4~24_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[237]~488_combout\);

-- Location: LCCOMB_X35_Y15_N2
\card_gen|Mod0|auto_generated|divider|divider|StageOut[235]~490\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[235]~490_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[218]~478_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_4~20_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[218]~478_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_4~20_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[235]~490_combout\);

-- Location: LCCOMB_X35_Y15_N12
\card_gen|Mod0|auto_generated|divider|divider|StageOut[234]~491\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[234]~491_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[217]~479_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[217]~479_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~18_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[234]~491_combout\);

-- Location: LCCOMB_X40_Y15_N16
\card_gen|Mod0|auto_generated|divider|divider|StageOut[233]~492\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[233]~492_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[216]~480_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_4~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_4~16_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[216]~480_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[233]~492_combout\);

-- Location: LCCOMB_X35_Y15_N26
\card_gen|Mod0|auto_generated|divider|divider|StageOut[232]~493\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[232]~493_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[215]~481_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_4~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[215]~481_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~14_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[232]~493_combout\);

-- Location: LCCOMB_X38_Y17_N8
\card_gen|Mod0|auto_generated|divider|divider|StageOut[231]~494\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[231]~494_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[214]~482_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_4~12_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[214]~482_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[231]~494_combout\);

-- Location: LCCOMB_X39_Y16_N10
\card_gen|Mod0|auto_generated|divider|divider|StageOut[230]~495\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[230]~495_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[213]~483_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_4~10_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_4~10_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[213]~483_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[230]~495_combout\);

-- Location: LCCOMB_X38_Y16_N14
\card_gen|Mod0|auto_generated|divider|divider|StageOut[229]~496\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[229]~496_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[212]~484_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_4~8_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_4~8_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[212]~484_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[229]~496_combout\);

-- Location: LCCOMB_X38_Y16_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[228]~497\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[228]~497_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[211]~485_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_4~6_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_4~6_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[211]~485_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[228]~497_combout\);

-- Location: LCCOMB_X38_Y16_N30
\card_gen|Mod0|auto_generated|divider|divider|StageOut[227]~498\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[227]~498_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[210]~486_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[210]~486_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~4_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[227]~498_combout\);

-- Location: LCCOMB_X32_Y16_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[66]~502\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[66]~502_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\ & (!\card_gen|lfsr\(13))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_8~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(13),
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_8~2_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[66]~502_combout\);

-- Location: LCCOMB_X37_Y16_N16
\card_gen|Mod0|auto_generated|divider|divider|StageOut[193]~511\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[193]~511_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & (\card_gen|lfsr\(4))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(4),
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_2~0_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[193]~511_combout\);

-- Location: LCCOMB_X37_Y15_N10
\card_gen|Mod0|auto_generated|divider|divider|StageOut[209]~512\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[209]~512_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ & (\card_gen|lfsr\(3))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(3),
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_3~0_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[209]~512_combout\);

-- Location: LCCOMB_X40_Y15_N22
\card_gen|Add0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Add0~11_combout\ = \card_gen|lfsr\(0) $ (((\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & (\card_gen|lfsr\(1))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(1),
	datab => \card_gen|lfsr\(0),
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_5~0_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Add0~11_combout\);

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(3),
	combout => \SW~combout\(3));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(2),
	combout => \SW~combout\(2));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(5),
	combout => \SW~combout\(5));

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0),
	combout => \KEY~combout\(0));

-- Location: LCCOMB_X37_Y13_N30
\card_gen|lfsr~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|lfsr~14_combout\ = (\card_gen|lfsr\(2)) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(0),
	datad => \card_gen|lfsr\(2),
	combout => \card_gen|lfsr~14_combout\);

-- Location: LCCOMB_X47_Y10_N24
\card_val_display[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_val_display[1]~3_combout\ = (!\state.S_win~regout\ & !\state.S_draw~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_win~regout\,
	datad => \state.S_draw~regout\,
	combout => \card_val_display[1]~3_combout\);

-- Location: LCCOMB_X32_Y15_N24
\card_gen|lfsr~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|lfsr~4_combout\ = (!\card_gen|lfsr\(12) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|lfsr\(12),
	datad => \KEY~combout\(0),
	combout => \card_gen|lfsr~4_combout\);

-- Location: LCFF_X31_Y16_N13
\card_gen|lfsr[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	sdata => \card_gen|lfsr~4_combout\,
	sload => VCC,
	ena => \card_gen|lfsr[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|lfsr\(13));

-- Location: LCCOMB_X32_Y15_N2
\card_gen|lfsr~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|lfsr~3_combout\ = (!\KEY~combout\(0)) # (!\card_gen|lfsr\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|lfsr\(13),
	datad => \KEY~combout\(0),
	combout => \card_gen|lfsr~3_combout\);

-- Location: LCFF_X31_Y16_N15
\card_gen|lfsr[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	sdata => \card_gen|lfsr~3_combout\,
	sload => VCC,
	ena => \card_gen|lfsr[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|lfsr\(14));

-- Location: LCCOMB_X31_Y16_N20
\card_gen|Mod0|auto_generated|divider|divider|op_8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_8~0_combout\ = \card_gen|lfsr\(12) $ (VCC)
-- \card_gen|Mod0|auto_generated|divider|divider|op_8~1\ = CARRY(\card_gen|lfsr\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|lfsr\(12),
	datad => VCC,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_8~0_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_8~1\);

-- Location: LCCOMB_X31_Y16_N22
\card_gen|Mod0|auto_generated|divider|divider|op_8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_8~2_combout\ = (\card_gen|lfsr\(13) & (!\card_gen|Mod0|auto_generated|divider|divider|op_8~1\)) # (!\card_gen|lfsr\(13) & (\card_gen|Mod0|auto_generated|divider|divider|op_8~1\ & VCC))
-- \card_gen|Mod0|auto_generated|divider|divider|op_8~3\ = CARRY((\card_gen|lfsr\(13) & !\card_gen|Mod0|auto_generated|divider|divider|op_8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(13),
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_8~1\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_8~2_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_8~3\);

-- Location: LCCOMB_X31_Y16_N24
\card_gen|Mod0|auto_generated|divider|divider|op_8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_8~4_combout\ = (\card_gen|lfsr\(14) & (\card_gen|Mod0|auto_generated|divider|divider|op_8~3\ $ (GND))) # (!\card_gen|lfsr\(14) & (!\card_gen|Mod0|auto_generated|divider|divider|op_8~3\ & VCC))
-- \card_gen|Mod0|auto_generated|divider|divider|op_8~5\ = CARRY((\card_gen|lfsr\(14) & !\card_gen|Mod0|auto_generated|divider|divider|op_8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|lfsr\(14),
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_8~3\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_8~4_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_8~5\);

-- Location: LCCOMB_X31_Y16_N26
\card_gen|Mod0|auto_generated|divider|divider|op_8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_8~6_combout\ = (\card_gen|lfsr\(15) & ((\card_gen|Mod0|auto_generated|divider|divider|op_8~5\) # (GND))) # (!\card_gen|lfsr\(15) & (!\card_gen|Mod0|auto_generated|divider|divider|op_8~5\))
-- \card_gen|Mod0|auto_generated|divider|divider|op_8~7\ = CARRY((\card_gen|lfsr\(15)) # (!\card_gen|Mod0|auto_generated|divider|divider|op_8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(15),
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_8~5\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_8~6_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_8~7\);

-- Location: LCCOMB_X31_Y16_N28
\card_gen|Mod0|auto_generated|divider|divider|op_8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\ = \card_gen|Mod0|auto_generated|divider|divider|op_8~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_8~7\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\);

-- Location: LCCOMB_X31_Y16_N12
\card_gen|Mod0|auto_generated|divider|divider|StageOut[51]~283\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[51]~283_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_8~6_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_8~6_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[51]~283_combout\);

-- Location: LCCOMB_X31_Y16_N30
\card_gen|Mod0|auto_generated|divider|divider|StageOut[50]~285\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[50]~285_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_8~4_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_8~4_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[50]~285_combout\);

-- Location: LCCOMB_X30_Y16_N6
\card_gen|Mod0|auto_generated|divider|divider|StageOut[49]~287\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[49]~287_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_8~2_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_8~2_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[49]~287_combout\);

-- Location: LCCOMB_X30_Y16_N28
\card_gen|Mod0|auto_generated|divider|divider|StageOut[48]~288\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[48]~288_combout\ = (\card_gen|lfsr\(12) & \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|lfsr\(12),
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[48]~288_combout\);

-- Location: LCCOMB_X31_Y16_N0
\card_gen|Mod0|auto_generated|divider|divider|op_9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_9~0_combout\ = \card_gen|lfsr\(11) $ (GND)
-- \card_gen|Mod0|auto_generated|divider|divider|op_9~1\ = CARRY(!\card_gen|lfsr\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|lfsr\(11),
	datad => VCC,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_9~0_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_9~1\);

-- Location: LCCOMB_X31_Y16_N2
\card_gen|Mod0|auto_generated|divider|divider|op_9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_9~2_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_9~1\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[48]~289_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[48]~288_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_9~1\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[48]~289_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[48]~288_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_9~3\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[48]~289_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[48]~288_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_9~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[48]~289_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[48]~288_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_9~1\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_9~2_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_9~3\);

-- Location: LCCOMB_X31_Y16_N4
\card_gen|Mod0|auto_generated|divider|divider|op_9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_9~4_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_9~3\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[49]~286_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[49]~287_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_9~3\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[49]~286_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[49]~287_combout\)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_9~5\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|op_9~3\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[49]~286_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[49]~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[49]~286_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[49]~287_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_9~3\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_9~4_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_9~5\);

-- Location: LCCOMB_X31_Y16_N6
\card_gen|Mod0|auto_generated|divider|divider|op_9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_9~6_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|StageOut[50]~284_combout\ & (((!\card_gen|Mod0|auto_generated|divider|divider|op_9~5\)))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[50]~284_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[50]~285_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|op_9~5\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[50]~285_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_9~5\) # (GND)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_9~7\ = CARRY(((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[50]~284_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|StageOut[50]~285_combout\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_9~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[50]~284_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[50]~285_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_9~5\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_9~6_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_9~7\);

-- Location: LCCOMB_X31_Y16_N8
\card_gen|Mod0|auto_generated|divider|divider|op_9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_9~8_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_9~7\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[51]~282_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[51]~283_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_9~7\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[51]~282_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[51]~283_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_9~9\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[51]~282_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[51]~283_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[51]~282_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[51]~283_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_9~7\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_9~8_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_9~9\);

-- Location: LCCOMB_X31_Y16_N10
\card_gen|Mod0|auto_generated|divider|divider|op_9~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\ = !\card_gen|Mod0|auto_generated|divider|divider|op_9~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_9~9\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\);

-- Location: LCCOMB_X32_Y16_N24
\card_gen|Mod0|auto_generated|divider|divider|StageOut[68]~500\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[68]~500_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\ & (!\card_gen|lfsr\(15))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_8~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(15),
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_8~6_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[68]~500_combout\);

-- Location: LCCOMB_X32_Y16_N28
\card_gen|Mod0|auto_generated|divider|divider|StageOut[68]~290\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[68]~290_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_9~8_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_9~8_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[68]~290_combout\);

-- Location: LCCOMB_X32_Y16_N22
\card_gen|Mod0|auto_generated|divider|divider|StageOut[67]~501\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[67]~501_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\ & (\card_gen|lfsr\(14))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_8~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(14),
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_8~4_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[67]~501_combout\);

-- Location: LCCOMB_X32_Y16_N26
\card_gen|Mod0|auto_generated|divider|divider|StageOut[66]~292\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[66]~292_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_9~4_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_9~4_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[66]~292_combout\);

-- Location: LCCOMB_X30_Y16_N4
\card_gen|Mod0|auto_generated|divider|divider|StageOut[65]~293\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[65]~293_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_9~2_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[65]~293_combout\);

-- Location: LCCOMB_X31_Y16_N16
\card_gen|Mod0|auto_generated|divider|divider|StageOut[64]~295\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[64]~295_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_9~0_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_9~0_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[64]~295_combout\);

-- Location: LCCOMB_X32_Y16_N2
\card_gen|Mod0|auto_generated|divider|divider|op_10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_10~0_combout\ = \card_gen|lfsr\(10) $ (GND)
-- \card_gen|Mod0|auto_generated|divider|divider|op_10~1\ = CARRY(!\card_gen|lfsr\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|lfsr\(10),
	datad => VCC,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_10~0_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_10~1\);

-- Location: LCCOMB_X32_Y16_N4
\card_gen|Mod0|auto_generated|divider|divider|op_10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_10~2_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_10~1\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[64]~294_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[64]~295_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_10~1\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[64]~294_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[64]~295_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_10~3\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[64]~294_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[64]~295_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_10~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[64]~294_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[64]~295_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_10~1\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_10~2_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_10~3\);

-- Location: LCCOMB_X32_Y16_N8
\card_gen|Mod0|auto_generated|divider|divider|op_10~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_10~6_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|StageOut[66]~502_combout\ & (((!\card_gen|Mod0|auto_generated|divider|divider|op_10~5\)))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[66]~502_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[66]~292_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|op_10~5\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[66]~292_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_10~5\) # (GND)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_10~7\ = CARRY(((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[66]~502_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|StageOut[66]~292_combout\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[66]~502_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[66]~292_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_10~5\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_10~6_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_10~7\);

-- Location: LCCOMB_X32_Y16_N10
\card_gen|Mod0|auto_generated|divider|divider|op_10~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_10~8_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_10~7\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[67]~291_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[67]~501_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_10~7\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[67]~291_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[67]~501_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_10~9\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[67]~291_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[67]~501_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_10~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[67]~291_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[67]~501_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_10~7\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_10~8_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_10~9\);

-- Location: LCCOMB_X32_Y16_N14
\card_gen|Mod0|auto_generated|divider|divider|op_10~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\ = \card_gen|Mod0|auto_generated|divider|divider|op_10~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_10~11\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\);

-- Location: LCCOMB_X33_Y16_N4
\card_gen|Mod0|auto_generated|divider|divider|StageOut[85]~415\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[85]~415_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[68]~500_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_9~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[68]~500_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_9~8_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[85]~415_combout\);

-- Location: LCCOMB_X33_Y16_N26
\card_gen|Mod0|auto_generated|divider|divider|StageOut[84]~416\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[84]~416_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[67]~501_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[67]~501_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_9~6_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[84]~416_combout\);

-- Location: LCCOMB_X33_Y16_N28
\card_gen|Mod0|auto_generated|divider|divider|StageOut[83]~298\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[83]~298_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_10~6_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_10~6_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[83]~298_combout\);

-- Location: LCCOMB_X30_Y16_N10
\card_gen|Mod0|auto_generated|divider|divider|StageOut[65]~503\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[65]~503_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\ & (\card_gen|lfsr\(12))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(12),
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_8~0_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_8~8_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[65]~503_combout\);

-- Location: LCCOMB_X34_Y16_N30
\card_gen|Mod0|auto_generated|divider|divider|StageOut[82]~418\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[82]~418_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[65]~503_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_9~2_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[65]~503_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[82]~418_combout\);

-- Location: LCCOMB_X32_Y16_N18
\card_gen|Mod0|auto_generated|divider|divider|StageOut[81]~504\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[81]~504_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\ & ((!\card_gen|lfsr\(11)))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\ & (\card_gen|Mod0|auto_generated|divider|divider|op_9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_9~0_combout\,
	datab => \card_gen|lfsr\(11),
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_9~10_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[81]~504_combout\);

-- Location: LCCOMB_X33_Y15_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[80]~301\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[80]~301_combout\ = (!\card_gen|lfsr\(10) & \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|lfsr\(10),
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[80]~301_combout\);

-- Location: LCCOMB_X33_Y16_N6
\card_gen|Mod0|auto_generated|divider|divider|op_11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_11~0_combout\ = \card_gen|lfsr\(9) $ (VCC)
-- \card_gen|Mod0|auto_generated|divider|divider|op_11~1\ = CARRY(\card_gen|lfsr\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|lfsr\(9),
	datad => VCC,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_11~0_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_11~1\);

-- Location: LCCOMB_X33_Y16_N12
\card_gen|Mod0|auto_generated|divider|divider|op_11~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_11~6_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|StageOut[82]~299_combout\ & (((!\card_gen|Mod0|auto_generated|divider|divider|op_11~5\)))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[82]~299_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[82]~418_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|op_11~5\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[82]~418_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_11~5\) # (GND)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_11~7\ = CARRY(((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[82]~299_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|StageOut[82]~418_combout\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[82]~299_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[82]~418_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_11~5\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_11~6_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_11~7\);

-- Location: LCCOMB_X33_Y16_N14
\card_gen|Mod0|auto_generated|divider|divider|op_11~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_11~8_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_11~7\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[83]~417_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[83]~298_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_11~7\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[83]~417_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[83]~298_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_11~9\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[83]~417_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[83]~298_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_11~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[83]~417_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[83]~298_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_11~7\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_11~8_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_11~9\);

-- Location: LCCOMB_X33_Y16_N16
\card_gen|Mod0|auto_generated|divider|divider|op_11~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_11~10_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_11~9\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[84]~297_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[84]~416_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_11~9\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[84]~297_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[84]~416_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_11~11\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[84]~297_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[84]~416_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_11~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[84]~297_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[84]~416_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_11~9\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_11~10_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_11~11\);

-- Location: LCCOMB_X33_Y16_N18
\card_gen|Mod0|auto_generated|divider|divider|op_11~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_11~12_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_11~11\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[85]~296_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[85]~415_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_11~11\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[85]~296_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[85]~415_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_11~13\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[85]~296_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[85]~415_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_11~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[85]~296_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[85]~415_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_11~11\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_11~12_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_11~13\);

-- Location: LCCOMB_X33_Y16_N20
\card_gen|Mod0|auto_generated|divider|divider|op_11~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ = !\card_gen|Mod0|auto_generated|divider|divider|op_11~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_11~13\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\);

-- Location: LCCOMB_X34_Y16_N4
\card_gen|Mod0|auto_generated|divider|divider|StageOut[102]~419\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[102]~419_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[85]~415_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_10~10_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_10~10_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[85]~415_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[102]~419_combout\);

-- Location: LCCOMB_X34_Y16_N26
\card_gen|Mod0|auto_generated|divider|divider|StageOut[101]~304\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[101]~304_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_11~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_11~10_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[101]~304_combout\);

-- Location: LCCOMB_X34_Y16_N28
\card_gen|Mod0|auto_generated|divider|divider|StageOut[100]~305\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[100]~305_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_11~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_11~8_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[100]~305_combout\);

-- Location: LCCOMB_X34_Y16_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[99]~306\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[99]~306_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_11~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_11~6_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[99]~306_combout\);

-- Location: LCCOMB_X33_Y15_N22
\card_gen|Mod0|auto_generated|divider|divider|StageOut[98]~423\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[98]~423_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[81]~504_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_10~2_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|StageOut[81]~504_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[98]~423_combout\);

-- Location: LCCOMB_X33_Y15_N4
\card_gen|Mod0|auto_generated|divider|divider|StageOut[97]~505\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[97]~505_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\ & (!\card_gen|lfsr\(10))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(10),
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_10~0_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[97]~505_combout\);

-- Location: LCCOMB_X35_Y16_N12
\card_gen|Mod0|auto_generated|divider|divider|StageOut[96]~309\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[96]~309_combout\ = (\card_gen|lfsr\(9) & \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|lfsr\(9),
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[96]~309_combout\);

-- Location: LCCOMB_X34_Y16_N6
\card_gen|Mod0|auto_generated|divider|divider|op_12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_12~0_combout\ = \card_gen|lfsr\(8) $ (VCC)
-- \card_gen|Mod0|auto_generated|divider|divider|op_12~1\ = CARRY(\card_gen|lfsr\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|lfsr\(8),
	datad => VCC,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_12~0_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_12~1\);

-- Location: LCCOMB_X34_Y16_N8
\card_gen|Mod0|auto_generated|divider|divider|op_12~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_12~2_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~1\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[96]~310_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[96]~309_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_12~1\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[96]~310_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[96]~309_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_12~3\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[96]~310_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[96]~309_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_12~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[96]~310_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[96]~309_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_12~1\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_12~2_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_12~3\);

-- Location: LCCOMB_X34_Y16_N10
\card_gen|Mod0|auto_generated|divider|divider|op_12~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_12~4_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~3\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[97]~308_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[97]~505_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_12~3\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[97]~308_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[97]~505_combout\)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_12~5\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|op_12~3\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[97]~308_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[97]~505_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[97]~308_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[97]~505_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_12~3\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_12~4_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_12~5\);

-- Location: LCCOMB_X34_Y16_N12
\card_gen|Mod0|auto_generated|divider|divider|op_12~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_12~6_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|StageOut[98]~307_combout\ & (((!\card_gen|Mod0|auto_generated|divider|divider|op_12~5\)))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[98]~307_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[98]~423_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|op_12~5\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[98]~423_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_12~5\) # (GND)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_12~7\ = CARRY(((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[98]~307_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|StageOut[98]~423_combout\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_12~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[98]~307_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[98]~423_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_12~5\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_12~6_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_12~7\);

-- Location: LCCOMB_X34_Y16_N16
\card_gen|Mod0|auto_generated|divider|divider|op_12~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_12~10_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~9\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[100]~421_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[100]~305_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_12~9\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[100]~421_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[100]~305_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_12~11\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[100]~421_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[100]~305_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_12~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[100]~421_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[100]~305_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_12~9\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_12~10_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_12~11\);

-- Location: LCCOMB_X34_Y16_N20
\card_gen|Mod0|auto_generated|divider|divider|op_12~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_12~14_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~13\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[102]~303_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[102]~419_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_12~13\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[102]~303_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[102]~419_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_12~15\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[102]~303_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[102]~419_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_12~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[102]~303_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[102]~419_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_12~13\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_12~14_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_12~15\);

-- Location: LCCOMB_X34_Y16_N22
\card_gen|Mod0|auto_generated|divider|divider|op_12~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\ = \card_gen|Mod0|auto_generated|divider|divider|op_12~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_12~15\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\);

-- Location: LCCOMB_X34_Y17_N28
\card_gen|Mod0|auto_generated|divider|divider|StageOut[119]~311\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[119]~311_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~14_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_12~14_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[119]~311_combout\);

-- Location: LCCOMB_X33_Y16_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[101]~420\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[101]~420_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[84]~416_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_10~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[84]~416_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_10~8_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[101]~420_combout\);

-- Location: LCCOMB_X34_Y17_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[118]~425\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[118]~425_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[101]~420_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_11~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_11~10_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[101]~420_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[118]~425_combout\);

-- Location: LCCOMB_X33_Y17_N18
\card_gen|Mod0|auto_generated|divider|divider|StageOut[117]~313\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[117]~313_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~10_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_12~10_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[117]~313_combout\);

-- Location: LCCOMB_X35_Y16_N10
\card_gen|Mod0|auto_generated|divider|divider|StageOut[116]~314\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[116]~314_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~8_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_12~8_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[116]~314_combout\);

-- Location: LCCOMB_X35_Y16_N8
\card_gen|Mod0|auto_generated|divider|divider|StageOut[115]~315\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[115]~315_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~6_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_12~6_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[115]~315_combout\);

-- Location: LCCOMB_X33_Y17_N4
\card_gen|Mod0|auto_generated|divider|divider|StageOut[114]~316\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[114]~316_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_12~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_12~4_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[114]~316_combout\);

-- Location: LCCOMB_X34_Y15_N8
\card_gen|Mod0|auto_generated|divider|divider|StageOut[113]~506\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[113]~506_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ & (\card_gen|lfsr\(9))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_11~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(9),
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_11~0_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[113]~506_combout\);

-- Location: LCCOMB_X35_Y16_N2
\card_gen|Mod0|auto_generated|divider|divider|StageOut[112]~319\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[112]~319_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~0_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_12~0_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[112]~319_combout\);

-- Location: LCCOMB_X34_Y17_N14
\card_gen|Mod0|auto_generated|divider|divider|op_13~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~6_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|StageOut[114]~429_combout\ & (((!\card_gen|Mod0|auto_generated|divider|divider|op_13~5\)))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[114]~429_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[114]~316_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|op_13~5\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[114]~316_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_13~5\) # (GND)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~7\ = CARRY(((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[114]~429_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|StageOut[114]~316_combout\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_13~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[114]~429_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[114]~316_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_13~5\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_13~6_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_13~7\);

-- Location: LCCOMB_X34_Y17_N16
\card_gen|Mod0|auto_generated|divider|divider|op_13~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~8_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~7\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[115]~428_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[115]~315_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_13~7\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[115]~428_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[115]~315_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~9\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[115]~428_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[115]~315_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[115]~428_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[115]~315_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_13~7\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_13~8_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_13~9\);

-- Location: LCCOMB_X34_Y17_N20
\card_gen|Mod0|auto_generated|divider|divider|op_13~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~12_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~11\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[117]~426_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[117]~313_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_13~11\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[117]~426_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[117]~313_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~13\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[117]~426_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[117]~313_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_13~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[117]~426_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[117]~313_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_13~11\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_13~12_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_13~13\);

-- Location: LCCOMB_X34_Y17_N22
\card_gen|Mod0|auto_generated|divider|divider|op_13~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~14_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~13\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[118]~312_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[118]~425_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_13~13\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[118]~312_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[118]~425_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~15\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[118]~312_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[118]~425_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_13~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[118]~312_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[118]~425_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_13~13\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_13~14_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_13~15\);

-- Location: LCCOMB_X34_Y17_N24
\card_gen|Mod0|auto_generated|divider|divider|op_13~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~16_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~15\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[119]~424_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[119]~311_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_13~15\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[119]~424_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[119]~311_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~17\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[119]~424_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[119]~311_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_13~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[119]~424_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[119]~311_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_13~15\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_13~16_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_13~17\);

-- Location: LCCOMB_X34_Y17_N26
\card_gen|Mod0|auto_generated|divider|divider|op_13~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ = !\card_gen|Mod0|auto_generated|divider|divider|op_13~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_13~17\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\);

-- Location: LCCOMB_X34_Y16_N2
\card_gen|Mod0|auto_generated|divider|divider|StageOut[119]~424\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[119]~424_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[102]~419_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_11~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_11~12_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[102]~419_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[119]~424_combout\);

-- Location: LCCOMB_X35_Y17_N4
\card_gen|Mod0|auto_generated|divider|divider|StageOut[136]~430\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[136]~430_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[119]~424_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_12~14_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_12~14_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[119]~424_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[136]~430_combout\);

-- Location: LCCOMB_X34_Y17_N4
\card_gen|Mod0|auto_generated|divider|divider|StageOut[135]~321\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[135]~321_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~14_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_13~14_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[135]~321_combout\);

-- Location: LCCOMB_X33_Y17_N12
\card_gen|Mod0|auto_generated|divider|divider|StageOut[134]~322\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[134]~322_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_13~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_13~12_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[134]~322_combout\);

-- Location: LCCOMB_X35_Y16_N4
\card_gen|Mod0|auto_generated|divider|divider|StageOut[99]~422\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[99]~422_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[82]~418_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_10~4_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_10~4_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[82]~418_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[99]~422_combout\);

-- Location: LCCOMB_X35_Y16_N30
\card_gen|Mod0|auto_generated|divider|divider|StageOut[116]~427\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[116]~427_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[99]~422_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_11~6_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_11~6_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[99]~422_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[116]~427_combout\);

-- Location: LCCOMB_X35_Y16_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[133]~433\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[133]~433_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[116]~427_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_12~8_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_12~8_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[116]~427_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[133]~433_combout\);

-- Location: LCCOMB_X33_Y17_N22
\card_gen|Mod0|auto_generated|divider|divider|StageOut[132]~324\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[132]~324_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~8_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_13~8_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[132]~324_combout\);

-- Location: LCCOMB_X33_Y17_N16
\card_gen|Mod0|auto_generated|divider|divider|StageOut[131]~325\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[131]~325_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_13~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_13~6_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[131]~325_combout\);

-- Location: LCCOMB_X34_Y15_N28
\card_gen|Mod0|auto_generated|divider|divider|StageOut[130]~436\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[130]~436_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[113]~506_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_12~2_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[113]~506_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[130]~436_combout\);

-- Location: LCCOMB_X33_Y17_N6
\card_gen|Mod0|auto_generated|divider|divider|StageOut[129]~507\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[129]~507_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\ & ((\card_gen|lfsr\(8)))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\ & (\card_gen|Mod0|auto_generated|divider|divider|op_12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_12~0_combout\,
	datab => \card_gen|lfsr\(8),
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[129]~507_combout\);

-- Location: LCCOMB_X33_Y17_N26
\card_gen|Mod0|auto_generated|divider|divider|StageOut[128]~328\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[128]~328_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & !\card_gen|lfsr\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \card_gen|lfsr\(7),
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[128]~328_combout\);

-- Location: LCCOMB_X35_Y17_N12
\card_gen|Mod0|auto_generated|divider|divider|op_14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~2_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~1\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[128]~329_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[128]~328_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_14~1\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[128]~329_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[128]~328_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~3\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[128]~329_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[128]~328_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_14~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[128]~329_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[128]~328_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_14~1\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_14~2_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_14~3\);

-- Location: LCCOMB_X35_Y17_N16
\card_gen|Mod0|auto_generated|divider|divider|op_14~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~6_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|StageOut[130]~326_combout\ & (((!\card_gen|Mod0|auto_generated|divider|divider|op_14~5\)))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[130]~326_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[130]~436_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|op_14~5\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[130]~436_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_14~5\) # (GND)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~7\ = CARRY(((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[130]~326_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|StageOut[130]~436_combout\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_14~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[130]~326_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[130]~436_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_14~5\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_14~6_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_14~7\);

-- Location: LCCOMB_X35_Y17_N20
\card_gen|Mod0|auto_generated|divider|divider|op_14~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~10_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~9\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[132]~434_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[132]~324_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_14~9\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[132]~434_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[132]~324_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~11\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[132]~434_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[132]~324_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_14~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[132]~434_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[132]~324_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_14~9\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_14~10_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_14~11\);

-- Location: LCCOMB_X35_Y17_N22
\card_gen|Mod0|auto_generated|divider|divider|op_14~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~12_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~11\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[133]~323_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[133]~433_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_14~11\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[133]~323_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[133]~433_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~13\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[133]~323_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[133]~433_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_14~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[133]~323_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[133]~433_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_14~11\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_14~12_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_14~13\);

-- Location: LCCOMB_X35_Y17_N28
\card_gen|Mod0|auto_generated|divider|divider|op_14~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~18_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~17\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[136]~320_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[136]~430_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_14~17\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[136]~320_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[136]~430_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~19\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[136]~320_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[136]~430_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_14~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[136]~320_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[136]~430_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_14~17\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_14~18_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_14~19\);

-- Location: LCCOMB_X35_Y17_N30
\card_gen|Mod0|auto_generated|divider|divider|op_14~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ = \card_gen|Mod0|auto_generated|divider|divider|op_14~19\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_14~19\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\);

-- Location: LCCOMB_X35_Y17_N6
\card_gen|Mod0|auto_generated|divider|divider|StageOut[153]~437\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[153]~437_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[136]~430_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_13~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[136]~430_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_13~16_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[153]~437_combout\);

-- Location: LCCOMB_X34_Y17_N30
\card_gen|Mod0|auto_generated|divider|divider|StageOut[135]~431\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[135]~431_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[118]~425_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_12~12_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_12~12_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[118]~425_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[135]~431_combout\);

-- Location: LCCOMB_X36_Y17_N2
\card_gen|Mod0|auto_generated|divider|divider|StageOut[152]~438\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[152]~438_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[135]~431_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_13~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_13~14_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|StageOut[135]~431_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[152]~438_combout\);

-- Location: LCCOMB_X33_Y16_N2
\card_gen|Mod0|auto_generated|divider|divider|StageOut[100]~421\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[100]~421_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[83]~417_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_10~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[83]~417_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_10~12_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_10~6_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[100]~421_combout\);

-- Location: LCCOMB_X33_Y17_N30
\card_gen|Mod0|auto_generated|divider|divider|StageOut[117]~426\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[117]~426_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[100]~421_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_11~8_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_11~8_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[100]~421_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_11~14_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[117]~426_combout\);

-- Location: LCCOMB_X33_Y17_N10
\card_gen|Mod0|auto_generated|divider|divider|StageOut[134]~432\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[134]~432_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[117]~426_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_12~10_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_12~10_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|StageOut[117]~426_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[134]~432_combout\);

-- Location: LCCOMB_X37_Y17_N28
\card_gen|Mod0|auto_generated|divider|divider|StageOut[151]~439\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[151]~439_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[134]~432_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_13~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_13~12_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[134]~432_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[151]~439_combout\);

-- Location: LCCOMB_X35_Y16_N14
\card_gen|Mod0|auto_generated|divider|divider|StageOut[150]~440\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[150]~440_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[133]~433_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_13~10_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_13~10_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[133]~433_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[150]~440_combout\);

-- Location: LCCOMB_X35_Y17_N2
\card_gen|Mod0|auto_generated|divider|divider|StageOut[149]~334\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[149]~334_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~10_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_14~10_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[149]~334_combout\);

-- Location: LCCOMB_X33_Y17_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[131]~435\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[131]~435_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[114]~429_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_12~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[114]~429_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_12~16_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_12~4_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[131]~435_combout\);

-- Location: LCCOMB_X37_Y17_N14
\card_gen|Mod0|auto_generated|divider|divider|StageOut[148]~442\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[148]~442_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[131]~435_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_13~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_13~6_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[131]~435_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[148]~442_combout\);

-- Location: LCCOMB_X37_Y17_N10
\card_gen|Mod0|auto_generated|divider|divider|StageOut[147]~336\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[147]~336_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~6_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_14~6_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[147]~336_combout\);

-- Location: LCCOMB_X37_Y17_N12
\card_gen|Mod0|auto_generated|divider|divider|StageOut[146]~444\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[146]~444_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[129]~507_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_13~2_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_13~2_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[129]~507_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[146]~444_combout\);

-- Location: LCCOMB_X37_Y17_N30
\card_gen|Mod0|auto_generated|divider|divider|StageOut[145]~338\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[145]~338_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~2_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_14~2_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[145]~338_combout\);

-- Location: LCCOMB_X37_Y17_N8
\card_gen|Mod0|auto_generated|divider|divider|StageOut[144]~340\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[144]~340_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~0_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_14~0_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[144]~340_combout\);

-- Location: LCCOMB_X36_Y17_N10
\card_gen|Mod0|auto_generated|divider|divider|op_1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~2_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~1\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[144]~339_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[144]~340_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_1~1\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[144]~339_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[144]~340_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~3\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[144]~339_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[144]~340_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[144]~339_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[144]~340_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_1~1\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_1~2_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_1~3\);

-- Location: LCCOMB_X36_Y17_N12
\card_gen|Mod0|auto_generated|divider|divider|op_1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~4_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~3\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[145]~508_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[145]~338_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_1~3\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[145]~508_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[145]~338_combout\)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~5\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|op_1~3\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[145]~508_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[145]~338_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[145]~508_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[145]~338_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_1~3\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_1~4_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_1~5\);

-- Location: LCCOMB_X36_Y17_N16
\card_gen|Mod0|auto_generated|divider|divider|op_1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~8_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~7\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[147]~443_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[147]~336_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_1~7\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[147]~443_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[147]~336_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~9\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[147]~443_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[147]~336_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[147]~443_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[147]~336_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_1~7\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_1~8_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_1~9\);

-- Location: LCCOMB_X36_Y17_N18
\card_gen|Mod0|auto_generated|divider|divider|op_1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~10_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~9\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[148]~335_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[148]~442_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_1~9\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[148]~335_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[148]~442_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~11\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[148]~335_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[148]~442_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[148]~335_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[148]~442_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_1~9\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_1~10_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_1~11\);

-- Location: LCCOMB_X36_Y17_N20
\card_gen|Mod0|auto_generated|divider|divider|op_1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~12_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~11\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[149]~441_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[149]~334_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_1~11\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[149]~441_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[149]~334_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~13\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[149]~441_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[149]~334_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[149]~441_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[149]~334_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_1~11\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_1~12_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_1~13\);

-- Location: LCCOMB_X36_Y17_N22
\card_gen|Mod0|auto_generated|divider|divider|op_1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~14_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~13\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[150]~333_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[150]~440_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_1~13\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[150]~333_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[150]~440_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~15\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[150]~333_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[150]~440_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_1~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[150]~333_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[150]~440_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_1~13\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_1~14_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_1~15\);

-- Location: LCCOMB_X36_Y17_N24
\card_gen|Mod0|auto_generated|divider|divider|op_1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~16_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~15\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[151]~332_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[151]~439_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_1~15\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[151]~332_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[151]~439_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~17\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[151]~332_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[151]~439_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_1~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[151]~332_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[151]~439_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_1~15\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_1~16_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_1~17\);

-- Location: LCCOMB_X36_Y17_N28
\card_gen|Mod0|auto_generated|divider|divider|op_1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~20_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~19\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[153]~330_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[153]~437_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_1~19\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[153]~330_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[153]~437_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~21\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[153]~330_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[153]~437_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_1~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[153]~330_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[153]~437_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_1~19\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_1~20_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_1~21\);

-- Location: LCCOMB_X36_Y17_N30
\card_gen|Mod0|auto_generated|divider|divider|op_1~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ = !\card_gen|Mod0|auto_generated|divider|divider|op_1~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_1~21\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\);

-- Location: LCCOMB_X36_Y16_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[170]~341\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[170]~341_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_1~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[170]~341_combout\);

-- Location: LCCOMB_X37_Y16_N18
\card_gen|Mod0|auto_generated|divider|divider|StageOut[169]~446\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[169]~446_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[152]~438_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_14~16_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_14~16_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|StageOut[152]~438_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[169]~446_combout\);

-- Location: LCCOMB_X36_Y16_N2
\card_gen|Mod0|auto_generated|divider|divider|StageOut[168]~343\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[168]~343_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~16_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[168]~343_combout\);

-- Location: LCCOMB_X35_Y16_N28
\card_gen|Mod0|auto_generated|divider|divider|StageOut[167]~344\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[167]~344_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_1~14_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[167]~344_combout\);

-- Location: LCCOMB_X36_Y16_N4
\card_gen|Mod0|auto_generated|divider|divider|StageOut[166]~345\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[166]~345_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~12_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~12_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[166]~345_combout\);

-- Location: LCCOMB_X37_Y17_N16
\card_gen|Mod0|auto_generated|divider|divider|StageOut[165]~450\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[165]~450_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[148]~442_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_14~8_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_14~8_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[148]~442_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[165]~450_combout\);

-- Location: LCCOMB_X35_Y16_N22
\card_gen|Mod0|auto_generated|divider|divider|StageOut[164]~347\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[164]~347_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~8_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_1~8_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[164]~347_combout\);

-- Location: LCCOMB_X37_Y17_N18
\card_gen|Mod0|auto_generated|divider|divider|StageOut[163]~452\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[163]~452_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[146]~444_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_14~4_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_14~4_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|StageOut[146]~444_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[163]~452_combout\);

-- Location: LCCOMB_X37_Y16_N28
\card_gen|Mod0|auto_generated|divider|divider|StageOut[162]~349\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[162]~349_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_1~4_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[162]~349_combout\);

-- Location: LCCOMB_X37_Y16_N10
\card_gen|Mod0|auto_generated|divider|divider|StageOut[161]~350\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[161]~350_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_1~2_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[161]~350_combout\);

-- Location: LCCOMB_X37_Y16_N22
\card_gen|Mod0|auto_generated|divider|divider|StageOut[160]~352\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[160]~352_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~0_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_1~0_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[160]~352_combout\);

-- Location: LCCOMB_X36_Y16_N10
\card_gen|Mod0|auto_generated|divider|divider|op_2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~4_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~3\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[161]~509_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[161]~350_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_2~3\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[161]~509_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[161]~350_combout\)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~5\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|op_2~3\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[161]~509_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[161]~350_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[161]~509_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[161]~350_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_2~3\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_2~4_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_2~5\);

-- Location: LCCOMB_X36_Y16_N12
\card_gen|Mod0|auto_generated|divider|divider|op_2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~6_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|StageOut[162]~453_combout\ & (((!\card_gen|Mod0|auto_generated|divider|divider|op_2~5\)))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[162]~453_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[162]~349_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|op_2~5\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[162]~349_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_2~5\) # (GND)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~7\ = CARRY(((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[162]~453_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|StageOut[162]~349_combout\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[162]~453_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[162]~349_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_2~5\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_2~6_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_2~7\);

-- Location: LCCOMB_X36_Y16_N16
\card_gen|Mod0|auto_generated|divider|divider|op_2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~10_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~9\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[164]~451_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[164]~347_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_2~9\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[164]~451_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[164]~347_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~11\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[164]~451_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[164]~347_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[164]~451_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[164]~347_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_2~9\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_2~10_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_2~11\);

-- Location: LCCOMB_X36_Y16_N22
\card_gen|Mod0|auto_generated|divider|divider|op_2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~16_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~15\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[167]~448_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[167]~344_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_2~15\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[167]~448_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[167]~344_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~17\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[167]~448_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[167]~344_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_2~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[167]~448_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[167]~344_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_2~15\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_2~17\);

-- Location: LCCOMB_X36_Y16_N24
\card_gen|Mod0|auto_generated|divider|divider|op_2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~18_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~17\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[168]~447_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[168]~343_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_2~17\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[168]~447_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[168]~343_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~19\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[168]~447_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[168]~343_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_2~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[168]~447_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[168]~343_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_2~17\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_2~18_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_2~19\);

-- Location: LCCOMB_X36_Y16_N26
\card_gen|Mod0|auto_generated|divider|divider|op_2~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~20_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~19\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[169]~342_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[169]~446_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_2~19\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[169]~342_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[169]~446_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~21\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[169]~342_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[169]~446_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_2~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[169]~342_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[169]~446_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_2~19\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_2~20_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_2~21\);

-- Location: LCCOMB_X36_Y16_N30
\card_gen|Mod0|auto_generated|divider|divider|op_2~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ = \card_gen|Mod0|auto_generated|divider|divider|op_2~23\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_2~23\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\);

-- Location: LCCOMB_X35_Y17_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[170]~445\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[170]~445_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[153]~437_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_14~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[153]~437_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_14~18_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[170]~445_combout\);

-- Location: LCCOMB_X36_Y14_N30
\card_gen|Mod0|auto_generated|divider|divider|StageOut[187]~454\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[187]~454_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[170]~445_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_1~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_1~20_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|StageOut[170]~445_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[187]~454_combout\);

-- Location: LCCOMB_X37_Y16_N20
\card_gen|Mod0|auto_generated|divider|divider|StageOut[186]~455\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[186]~455_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[169]~446_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_1~18_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_1~18_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|StageOut[169]~446_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[186]~455_combout\);

-- Location: LCCOMB_X37_Y17_N2
\card_gen|Mod0|auto_generated|divider|divider|StageOut[168]~447\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[168]~447_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[151]~439_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_14~14_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_14~14_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[151]~439_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[168]~447_combout\);

-- Location: LCCOMB_X37_Y14_N8
\card_gen|Mod0|auto_generated|divider|divider|StageOut[185]~456\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[185]~456_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[168]~447_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_1~16_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_1~16_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[168]~447_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[185]~456_combout\);

-- Location: LCCOMB_X35_Y16_N20
\card_gen|Mod0|auto_generated|divider|divider|StageOut[167]~448\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[167]~448_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[150]~440_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_14~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_14~12_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|StageOut[150]~440_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[167]~448_combout\);

-- Location: LCCOMB_X35_Y16_N18
\card_gen|Mod0|auto_generated|divider|divider|StageOut[184]~457\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[184]~457_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[167]~448_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_1~14_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_1~14_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[167]~448_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[184]~457_combout\);

-- Location: LCCOMB_X35_Y15_N22
\card_gen|Mod0|auto_generated|divider|divider|StageOut[183]~458\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[183]~458_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[166]~449_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_1~12_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[166]~449_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_1~12_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[183]~458_combout\);

-- Location: LCCOMB_X37_Y17_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[182]~459\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[182]~459_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[165]~450_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_1~10_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[165]~450_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[182]~459_combout\);

-- Location: LCCOMB_X37_Y16_N24
\card_gen|Mod0|auto_generated|divider|divider|StageOut[181]~359\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[181]~359_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~10_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[181]~359_combout\);

-- Location: LCCOMB_X37_Y17_N22
\card_gen|Mod0|auto_generated|divider|divider|StageOut[180]~461\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[180]~461_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[163]~452_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_1~6_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_1~6_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[163]~452_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[180]~461_combout\);

-- Location: LCCOMB_X37_Y14_N20
\card_gen|Mod0|auto_generated|divider|divider|StageOut[179]~361\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[179]~361_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~6_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[179]~361_combout\);

-- Location: LCCOMB_X37_Y16_N6
\card_gen|Mod0|auto_generated|divider|divider|StageOut[161]~509\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[161]~509_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ & ((\card_gen|lfsr\(6)))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ & (\card_gen|Mod0|auto_generated|divider|divider|op_14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_14~0_combout\,
	datab => \card_gen|lfsr\(6),
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[161]~509_combout\);

-- Location: LCCOMB_X37_Y14_N14
\card_gen|Mod0|auto_generated|divider|divider|StageOut[178]~463\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[178]~463_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[161]~509_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_1~2_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_1~2_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|StageOut[161]~509_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[178]~463_combout\);

-- Location: LCCOMB_X37_Y13_N12
\card_gen|Mod0|auto_generated|divider|divider|StageOut[177]~510\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[177]~510_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((!\card_gen|lfsr\(5)))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & (\card_gen|Mod0|auto_generated|divider|divider|op_1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_1~0_combout\,
	datab => \card_gen|lfsr\(5),
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[177]~510_combout\);

-- Location: LCCOMB_X37_Y14_N28
\card_gen|Mod0|auto_generated|divider|divider|StageOut[176]~365\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[176]~365_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~0_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_2~0_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[176]~365_combout\);

-- Location: LCCOMB_X36_Y14_N4
\card_gen|Mod0|auto_generated|divider|divider|op_3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~2_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~1\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[176]~364_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[176]~365_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_3~1\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[176]~364_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[176]~365_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~3\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[176]~364_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[176]~365_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[176]~364_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[176]~365_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_3~1\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_3~2_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_3~3\);

-- Location: LCCOMB_X36_Y14_N6
\card_gen|Mod0|auto_generated|divider|divider|op_3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~4_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~3\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[177]~363_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[177]~510_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_3~3\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[177]~363_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[177]~510_combout\)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~5\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|op_3~3\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[177]~363_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[177]~510_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[177]~363_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[177]~510_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_3~3\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_3~4_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_3~5\);

-- Location: LCCOMB_X36_Y14_N14
\card_gen|Mod0|auto_generated|divider|divider|op_3~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~12_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~11\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[181]~460_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[181]~359_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_3~11\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[181]~460_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[181]~359_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~13\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[181]~460_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[181]~359_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[181]~460_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[181]~359_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_3~11\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_3~12_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_3~13\);

-- Location: LCCOMB_X36_Y14_N16
\card_gen|Mod0|auto_generated|divider|divider|op_3~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~14_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~13\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[182]~358_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[182]~459_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_3~13\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[182]~358_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[182]~459_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~15\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[182]~358_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[182]~459_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_3~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[182]~358_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[182]~459_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_3~13\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_3~14_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_3~15\);

-- Location: LCCOMB_X36_Y14_N18
\card_gen|Mod0|auto_generated|divider|divider|op_3~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~16_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~15\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[183]~357_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[183]~458_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_3~15\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[183]~357_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[183]~458_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~17\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[183]~357_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[183]~458_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_3~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[183]~357_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[183]~458_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_3~15\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_3~16_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_3~17\);

-- Location: LCCOMB_X36_Y14_N20
\card_gen|Mod0|auto_generated|divider|divider|op_3~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~18_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~17\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[184]~356_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[184]~457_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_3~17\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[184]~356_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[184]~457_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~19\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[184]~356_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[184]~457_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_3~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[184]~356_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[184]~457_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_3~17\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_3~18_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_3~19\);

-- Location: LCCOMB_X36_Y14_N24
\card_gen|Mod0|auto_generated|divider|divider|op_3~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~22_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~21\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[186]~354_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[186]~455_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_3~21\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[186]~354_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[186]~455_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~23\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[186]~354_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[186]~455_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_3~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[186]~354_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[186]~455_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_3~21\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_3~22_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_3~23\);

-- Location: LCCOMB_X36_Y14_N28
\card_gen|Mod0|auto_generated|divider|divider|op_3~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ = !\card_gen|Mod0|auto_generated|divider|divider|op_3~25\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_3~25\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\);

-- Location: LCCOMB_X36_Y15_N30
\card_gen|Mod0|auto_generated|divider|divider|StageOut[204]~464\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[204]~464_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[187]~454_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_2~22_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_2~22_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[187]~454_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[204]~464_combout\);

-- Location: LCCOMB_X37_Y14_N18
\card_gen|Mod0|auto_generated|divider|divider|StageOut[203]~367\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[203]~367_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_3~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~22_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[203]~367_combout\);

-- Location: LCCOMB_X37_Y14_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[202]~466\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[202]~466_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[185]~456_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_2~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[185]~456_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~18_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[202]~466_combout\);

-- Location: LCCOMB_X35_Y15_N4
\card_gen|Mod0|auto_generated|divider|divider|StageOut[201]~369\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[201]~369_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_3~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~18_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[201]~369_combout\);

-- Location: LCCOMB_X35_Y14_N26
\card_gen|Mod0|auto_generated|divider|divider|StageOut[200]~370\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[200]~370_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~16_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_3~16_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[200]~370_combout\);

-- Location: LCCOMB_X35_Y14_N16
\card_gen|Mod0|auto_generated|divider|divider|StageOut[199]~371\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[199]~371_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~14_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_3~14_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[199]~371_combout\);

-- Location: LCCOMB_X35_Y14_N2
\card_gen|Mod0|auto_generated|divider|divider|StageOut[198]~372\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[198]~372_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~12_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_3~12_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[198]~372_combout\);

-- Location: LCCOMB_X36_Y14_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[197]~373\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[197]~373_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~10_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_3~10_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[197]~373_combout\);

-- Location: LCCOMB_X35_Y14_N14
\card_gen|Mod0|auto_generated|divider|divider|StageOut[145]~508\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[145]~508_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & ((!\card_gen|lfsr\(7)))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\ & (\card_gen|Mod0|auto_generated|divider|divider|op_13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_13~0_combout\,
	datab => \card_gen|lfsr\(7),
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_13~18_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[145]~508_combout\);

-- Location: LCCOMB_X36_Y13_N2
\card_gen|Mod0|auto_generated|divider|divider|StageOut[162]~453\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[162]~453_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[145]~508_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_14~2_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_14~2_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_14~20_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[145]~508_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[162]~453_combout\);

-- Location: LCCOMB_X36_Y13_N12
\card_gen|Mod0|auto_generated|divider|divider|StageOut[179]~462\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[179]~462_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[162]~453_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_1~4_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_1~4_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[162]~453_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_1~22_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[179]~462_combout\);

-- Location: LCCOMB_X37_Y13_N16
\card_gen|Mod0|auto_generated|divider|divider|StageOut[196]~472\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[196]~472_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[179]~462_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_2~6_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_2~6_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[179]~462_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[196]~472_combout\);

-- Location: LCCOMB_X37_Y14_N30
\card_gen|Mod0|auto_generated|divider|divider|StageOut[195]~473\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[195]~473_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[178]~463_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_2~4_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[178]~463_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[195]~473_combout\);

-- Location: LCCOMB_X35_Y14_N6
\card_gen|Mod0|auto_generated|divider|divider|StageOut[194]~376\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[194]~376_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~4_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_3~4_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[194]~376_combout\);

-- Location: LCCOMB_X37_Y14_N10
\card_gen|Mod0|auto_generated|divider|divider|StageOut[193]~377\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[193]~377_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~2_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_3~2_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[193]~377_combout\);

-- Location: LCCOMB_X37_Y13_N24
\card_gen|Mod0|auto_generated|divider|divider|StageOut[192]~378\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[192]~378_combout\ = (\card_gen|lfsr\(3) & \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|lfsr\(3),
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[192]~378_combout\);

-- Location: LCCOMB_X36_Y15_N2
\card_gen|Mod0|auto_generated|divider|divider|op_4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~2_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~1\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[192]~379_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[192]~378_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_4~1\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[192]~379_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[192]~378_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~3\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[192]~379_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[192]~378_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_4~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[192]~379_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[192]~378_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_4~1\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_4~2_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_4~3\);

-- Location: LCCOMB_X36_Y15_N4
\card_gen|Mod0|auto_generated|divider|divider|op_4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~4_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~3\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[193]~511_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[193]~377_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_4~3\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[193]~511_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[193]~377_combout\)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~5\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|op_4~3\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[193]~511_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[193]~377_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[193]~511_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[193]~377_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_4~3\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_4~4_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_4~5\);

-- Location: LCCOMB_X36_Y15_N18
\card_gen|Mod0|auto_generated|divider|divider|op_4~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~18_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~17\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[200]~468_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[200]~370_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_4~17\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[200]~468_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[200]~370_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~19\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[200]~468_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[200]~370_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_4~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[200]~468_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[200]~370_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_4~17\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_4~18_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_4~19\);

-- Location: LCCOMB_X36_Y15_N22
\card_gen|Mod0|auto_generated|divider|divider|op_4~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~22_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~21\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[202]~368_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[202]~466_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_4~21\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[202]~368_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[202]~466_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~23\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[202]~368_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[202]~466_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_4~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[202]~368_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[202]~466_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_4~21\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_4~22_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_4~23\);

-- Location: LCCOMB_X36_Y15_N26
\card_gen|Mod0|auto_generated|divider|divider|op_4~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~26_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~25\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[204]~366_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[204]~464_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_4~25\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[204]~366_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[204]~464_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~27\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[204]~366_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[204]~464_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_4~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[204]~366_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[204]~464_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_4~25\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_4~26_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_4~27\);

-- Location: LCCOMB_X36_Y15_N28
\card_gen|Mod0|auto_generated|divider|divider|op_4~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ = \card_gen|Mod0|auto_generated|divider|divider|op_4~27\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_4~27\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\);

-- Location: LCCOMB_X37_Y15_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[221]~380\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[221]~380_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_4~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[221]~380_combout\);

-- Location: LCCOMB_X37_Y16_N14
\card_gen|Mod0|auto_generated|divider|divider|StageOut[203]~465\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[203]~465_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[186]~455_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_2~20_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[186]~455_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_2~20_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[203]~465_combout\);

-- Location: LCCOMB_X37_Y16_N30
\card_gen|Mod0|auto_generated|divider|divider|StageOut[220]~476\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[220]~476_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[203]~465_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_3~22_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_3~22_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[203]~465_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[220]~476_combout\);

-- Location: LCCOMB_X37_Y15_N24
\card_gen|Mod0|auto_generated|divider|divider|StageOut[219]~382\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[219]~382_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_4~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~22_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[219]~382_combout\);

-- Location: LCCOMB_X35_Y16_N24
\card_gen|Mod0|auto_generated|divider|divider|StageOut[201]~467\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[201]~467_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[184]~457_combout\) # 
-- ((!\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[184]~457_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_2~16_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[201]~467_combout\);

-- Location: LCCOMB_X35_Y16_N6
\card_gen|Mod0|auto_generated|divider|divider|StageOut[218]~478\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[218]~478_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[201]~467_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_3~18_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_3~18_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[201]~467_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[218]~478_combout\);

-- Location: LCCOMB_X37_Y15_N16
\card_gen|Mod0|auto_generated|divider|divider|StageOut[217]~384\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[217]~384_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~18_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_4~18_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[217]~384_combout\);

-- Location: LCCOMB_X37_Y15_N28
\card_gen|Mod0|auto_generated|divider|divider|StageOut[216]~480\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[216]~480_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[199]~469_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_3~14_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[199]~469_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_3~14_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[216]~480_combout\);

-- Location: LCCOMB_X37_Y15_N4
\card_gen|Mod0|auto_generated|divider|divider|StageOut[215]~386\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[215]~386_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~14_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_4~14_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[215]~386_combout\);

-- Location: LCCOMB_X37_Y15_N22
\card_gen|Mod0|auto_generated|divider|divider|StageOut[214]~387\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[214]~387_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~12_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_4~12_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[214]~387_combout\);

-- Location: LCCOMB_X37_Y13_N8
\card_gen|Mod0|auto_generated|divider|divider|StageOut[213]~483\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[213]~483_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[196]~472_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_3~8_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_3~8_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[196]~472_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[213]~483_combout\);

-- Location: LCCOMB_X37_Y14_N22
\card_gen|Mod0|auto_generated|divider|divider|StageOut[212]~484\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[212]~484_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[195]~473_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_3~6_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_3~6_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|StageOut[195]~473_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[212]~484_combout\);

-- Location: LCCOMB_X37_Y13_N22
\card_gen|Mod0|auto_generated|divider|divider|StageOut[194]~474\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[194]~474_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[177]~510_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_2~2_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_2~2_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_2~24_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[177]~510_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[194]~474_combout\);

-- Location: LCCOMB_X37_Y13_N18
\card_gen|Mod0|auto_generated|divider|divider|StageOut[211]~485\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[211]~485_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[194]~474_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_3~4_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_3~4_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[194]~474_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[211]~485_combout\);

-- Location: LCCOMB_X35_Y15_N30
\card_gen|Mod0|auto_generated|divider|divider|StageOut[210]~391\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[210]~391_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~4_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~4_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[210]~391_combout\);

-- Location: LCCOMB_X37_Y15_N18
\card_gen|Mod0|auto_generated|divider|divider|StageOut[209]~392\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[209]~392_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~2_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_4~2_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[209]~392_combout\);

-- Location: LCCOMB_X38_Y15_N2
\card_gen|Mod0|auto_generated|divider|divider|op_5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~2_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~1\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[208]~394_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[208]~393_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_5~1\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[208]~394_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[208]~393_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~3\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[208]~394_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[208]~393_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[208]~394_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[208]~393_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_5~1\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_5~2_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_5~3\);

-- Location: LCCOMB_X38_Y15_N6
\card_gen|Mod0|auto_generated|divider|divider|op_5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~6_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|StageOut[210]~486_combout\ & (((!\card_gen|Mod0|auto_generated|divider|divider|op_5~5\)))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[210]~486_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[210]~391_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|op_5~5\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[210]~391_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_5~5\) # (GND)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~7\ = CARRY(((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[210]~486_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|StageOut[210]~391_combout\)) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[210]~486_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[210]~391_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_5~5\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_5~6_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_5~7\);

-- Location: LCCOMB_X38_Y15_N8
\card_gen|Mod0|auto_generated|divider|divider|op_5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~8_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~7\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[211]~390_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[211]~485_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_5~7\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[211]~390_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[211]~485_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~9\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[211]~390_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[211]~485_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[211]~390_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[211]~485_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_5~7\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_5~8_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_5~9\);

-- Location: LCCOMB_X38_Y15_N10
\card_gen|Mod0|auto_generated|divider|divider|op_5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~10_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~9\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[212]~389_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[212]~484_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_5~9\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[212]~389_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[212]~484_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~11\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[212]~389_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[212]~484_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_5~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[212]~389_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[212]~484_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_5~9\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_5~10_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_5~11\);

-- Location: LCCOMB_X38_Y15_N14
\card_gen|Mod0|auto_generated|divider|divider|op_5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~14_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~13\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[214]~482_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[214]~387_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_5~13\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[214]~482_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[214]~387_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~15\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[214]~482_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[214]~387_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_5~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[214]~482_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[214]~387_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_5~13\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_5~15\);

-- Location: LCCOMB_X38_Y15_N16
\card_gen|Mod0|auto_generated|divider|divider|op_5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~16_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~15\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[215]~481_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[215]~386_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_5~15\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[215]~481_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[215]~386_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~17\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[215]~481_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[215]~386_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_5~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[215]~481_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[215]~386_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_5~15\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_5~16_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_5~17\);

-- Location: LCCOMB_X38_Y15_N18
\card_gen|Mod0|auto_generated|divider|divider|op_5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~18_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~17\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[216]~385_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[216]~480_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_5~17\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[216]~385_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[216]~480_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~19\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[216]~385_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[216]~480_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_5~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[216]~385_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[216]~480_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_5~17\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_5~18_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_5~19\);

-- Location: LCCOMB_X38_Y15_N20
\card_gen|Mod0|auto_generated|divider|divider|op_5~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~20_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~19\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[217]~479_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[217]~384_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_5~19\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[217]~479_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[217]~384_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~21\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[217]~479_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[217]~384_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_5~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[217]~479_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[217]~384_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_5~19\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_5~20_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_5~21\);

-- Location: LCCOMB_X38_Y15_N22
\card_gen|Mod0|auto_generated|divider|divider|op_5~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~22_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~21\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[218]~383_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[218]~478_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_5~21\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[218]~383_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[218]~478_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~23\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[218]~383_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[218]~478_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_5~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[218]~383_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[218]~478_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_5~21\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_5~22_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_5~23\);

-- Location: LCCOMB_X38_Y15_N26
\card_gen|Mod0|auto_generated|divider|divider|op_5~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~26_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~25\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[220]~381_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[220]~476_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_5~25\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[220]~381_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[220]~476_combout\)))
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~27\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[220]~381_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[220]~476_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_5~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[220]~381_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[220]~476_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_5~25\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_5~26_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_5~27\);

-- Location: LCCOMB_X38_Y15_N28
\card_gen|Mod0|auto_generated|divider|divider|op_5~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~28_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~27\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[221]~475_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[221]~380_combout\))))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_5~27\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[221]~475_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[221]~380_combout\) # (GND))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~29\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[221]~475_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[221]~380_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_5~27\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[221]~475_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[221]~380_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_5~27\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_5~28_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_5~29\);

-- Location: LCCOMB_X38_Y15_N30
\card_gen|Mod0|auto_generated|divider|divider|op_5~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ = !\card_gen|Mod0|auto_generated|divider|divider|op_5~29\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_5~29\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\);

-- Location: LCCOMB_X39_Y15_N30
\card_gen|Mod0|auto_generated|divider|divider|StageOut[238]~395\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[238]~395_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_5~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[238]~395_combout\);

-- Location: LCCOMB_X40_Y15_N18
\card_gen|Mod0|auto_generated|divider|divider|StageOut[237]~396\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[237]~396_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_5~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~26_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[237]~396_combout\);

-- Location: LCCOMB_X37_Y14_N24
\card_gen|Mod0|auto_generated|divider|divider|StageOut[219]~477\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[219]~477_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[202]~466_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_3~20_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_3~20_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_3~26_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|StageOut[202]~466_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[219]~477_combout\);

-- Location: LCCOMB_X40_Y15_N6
\card_gen|Mod0|auto_generated|divider|divider|StageOut[236]~489\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[236]~489_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[219]~477_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_4~22_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_4~22_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[219]~477_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[236]~489_combout\);

-- Location: LCCOMB_X39_Y15_N26
\card_gen|Mod0|auto_generated|divider|divider|StageOut[235]~398\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[235]~398_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_5~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~22_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[235]~398_combout\);

-- Location: LCCOMB_X40_Y15_N24
\card_gen|Mod0|auto_generated|divider|divider|StageOut[234]~399\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[234]~399_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~20_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_5~20_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[234]~399_combout\);

-- Location: LCCOMB_X39_Y15_N28
\card_gen|Mod0|auto_generated|divider|divider|StageOut[233]~400\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[233]~400_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~18_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[233]~400_combout\);

-- Location: LCCOMB_X40_Y15_N30
\card_gen|Mod0|auto_generated|divider|divider|StageOut[232]~401\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[232]~401_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_5~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~16_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[232]~401_combout\);

-- Location: LCCOMB_X39_Y15_N22
\card_gen|Mod0|auto_generated|divider|divider|StageOut[231]~402\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[231]~402_combout\ = (!\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & \card_gen|Mod0|auto_generated|divider|divider|op_5~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~14_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[231]~402_combout\);

-- Location: LCCOMB_X39_Y16_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[230]~403\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[230]~403_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~12_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_5~12_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[230]~403_combout\);

-- Location: LCCOMB_X39_Y16_N14
\card_gen|Mod0|auto_generated|divider|divider|StageOut[229]~404\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[229]~404_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~10_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_5~10_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[229]~404_combout\);

-- Location: LCCOMB_X39_Y16_N4
\card_gen|Mod0|auto_generated|divider|divider|StageOut[228]~405\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[228]~405_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~8_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_5~8_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[228]~405_combout\);

-- Location: LCCOMB_X39_Y16_N2
\card_gen|Mod0|auto_generated|divider|divider|StageOut[227]~406\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[227]~406_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~6_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_5~6_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[227]~406_combout\);

-- Location: LCCOMB_X40_Y15_N2
\card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~499\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~499_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[209]~512_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|op_4~2_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[209]~512_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_4~2_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[226]~499_combout\);

-- Location: LCCOMB_X40_Y15_N12
\card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~513\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~513_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & ((\card_gen|lfsr\(2)))) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\ & (\card_gen|Mod0|auto_generated|divider|divider|op_4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_4~0_combout\,
	datab => \card_gen|lfsr\(2),
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~513_combout\);

-- Location: LCCOMB_X39_Y16_N8
\card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~410\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~410_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~0_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_5~0_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~410_combout\);

-- Location: LCCOMB_X39_Y16_N20
\card_gen|Mod0|auto_generated|divider|divider|op_6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~4_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_6~3\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~408_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~513_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_6~3\ & ((((\card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~408_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~513_combout\)))))
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~5\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|op_6~3\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~408_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~513_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~408_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~513_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_6~3\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_6~5\);

-- Location: LCCOMB_X39_Y16_N24
\card_gen|Mod0|auto_generated|divider|divider|op_6~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~9_cout\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[227]~498_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[227]~406_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[227]~498_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[227]~406_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_6~7\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_6~9_cout\);

-- Location: LCCOMB_X39_Y16_N26
\card_gen|Mod0|auto_generated|divider|divider|op_6~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~11_cout\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[228]~497_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[228]~405_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_6~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[228]~497_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[228]~405_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_6~9_cout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_6~11_cout\);

-- Location: LCCOMB_X39_Y16_N28
\card_gen|Mod0|auto_generated|divider|divider|op_6~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~13_cout\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[229]~496_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[229]~404_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[229]~496_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[229]~404_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_6~11_cout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_6~13_cout\);

-- Location: LCCOMB_X39_Y16_N30
\card_gen|Mod0|auto_generated|divider|divider|op_6~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~15_cout\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[230]~495_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[230]~403_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[230]~495_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[230]~403_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_6~13_cout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_6~15_cout\);

-- Location: LCCOMB_X39_Y15_N0
\card_gen|Mod0|auto_generated|divider|divider|op_6~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~17_cout\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[231]~494_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[231]~402_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[231]~494_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[231]~402_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_6~15_cout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_6~17_cout\);

-- Location: LCCOMB_X39_Y15_N2
\card_gen|Mod0|auto_generated|divider|divider|op_6~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~19_cout\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[232]~493_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[232]~401_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_6~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[232]~493_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[232]~401_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_6~17_cout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_6~19_cout\);

-- Location: LCCOMB_X39_Y15_N4
\card_gen|Mod0|auto_generated|divider|divider|op_6~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~21_cout\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[233]~492_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[233]~400_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_6~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[233]~492_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[233]~400_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_6~19_cout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_6~21_cout\);

-- Location: LCCOMB_X39_Y15_N6
\card_gen|Mod0|auto_generated|divider|divider|op_6~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~23_cout\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[234]~491_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[234]~399_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_6~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[234]~491_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[234]~399_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_6~21_cout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_6~23_cout\);

-- Location: LCCOMB_X39_Y15_N8
\card_gen|Mod0|auto_generated|divider|divider|op_6~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~25_cout\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[235]~490_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[235]~398_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_6~23_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[235]~490_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[235]~398_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_6~23_cout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_6~25_cout\);

-- Location: LCCOMB_X39_Y15_N10
\card_gen|Mod0|auto_generated|divider|divider|op_6~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~27_cout\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[236]~397_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[236]~489_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_6~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[236]~397_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[236]~489_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_6~25_cout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_6~27_cout\);

-- Location: LCCOMB_X39_Y15_N12
\card_gen|Mod0|auto_generated|divider|divider|op_6~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~29_cout\ = CARRY((\card_gen|Mod0|auto_generated|divider|divider|StageOut[237]~488_combout\) # ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[237]~396_combout\) # 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_6~27_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[237]~488_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[237]~396_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_6~27_cout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_6~29_cout\);

-- Location: LCCOMB_X39_Y15_N14
\card_gen|Mod0|auto_generated|divider|divider|op_6~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~31_cout\ = CARRY((!\card_gen|Mod0|auto_generated|divider|divider|StageOut[238]~487_combout\ & (!\card_gen|Mod0|auto_generated|divider|divider|StageOut[238]~395_combout\ & 
-- !\card_gen|Mod0|auto_generated|divider|divider|op_6~29_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[238]~487_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[238]~395_combout\,
	datad => VCC,
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_6~29_cout\,
	cout => \card_gen|Mod0|auto_generated|divider|divider|op_6~31_cout\);

-- Location: LCCOMB_X39_Y15_N16
\card_gen|Mod0|auto_generated|divider|divider|op_6~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|op_6~32_combout\ = \card_gen|Mod0|auto_generated|divider|divider|op_6~31_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \card_gen|Mod0|auto_generated|divider|divider|op_6~31_cout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|op_6~32_combout\);

-- Location: LCCOMB_X39_Y15_N18
\card_gen|Mod0|auto_generated|divider|divider|StageOut[240]~411\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[240]~411_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_6~32_combout\ & ((!\card_gen|lfsr\(0)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_6~32_combout\ & 
-- (!\card_gen|Mod0|auto_generated|divider|divider|op_6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010100110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_6~0_combout\,
	datab => \card_gen|lfsr\(0),
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_6~32_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[240]~411_combout\);

-- Location: LCFF_X39_Y15_N19
\card_gen|random_number[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \card_gen|Mod0|auto_generated|divider|divider|StageOut[240]~411_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|random_number\(0));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X42_Y11_N8
\temp_card_val~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp_card_val~0_combout\ = (!\process_0~3_combout\ & ((\SW~combout\(5) & (\card_gen|random_number\(0))) # (!\SW~combout\(5) & ((\SW~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \card_gen|random_number\(0),
	datac => \SW~combout\(5),
	datad => \SW~combout\(0),
	combout => \temp_card_val~0_combout\);

-- Location: LCCOMB_X47_Y12_N8
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (P_sum(0) & (\temp_card_val~0_combout\ $ (VCC))) # (!P_sum(0) & (\temp_card_val~0_combout\ & VCC))
-- \Add1~1\ = CARRY((P_sum(0) & \temp_card_val~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(0),
	datab => \temp_card_val~0_combout\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X47_Y12_N10
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\temp_card_val~7_combout\ & ((P_sum(1) & (\Add1~1\ & VCC)) # (!P_sum(1) & (!\Add1~1\)))) # (!\temp_card_val~7_combout\ & ((P_sum(1) & (!\Add1~1\)) # (!P_sum(1) & ((\Add1~1\) # (GND)))))
-- \Add1~3\ = CARRY((\temp_card_val~7_combout\ & (!P_sum(1) & !\Add1~1\)) # (!\temp_card_val~7_combout\ & ((!\Add1~1\) # (!P_sum(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_card_val~7_combout\,
	datab => P_sum(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X49_Y10_N8
\Selector11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~1_combout\ = (\state.SP_recieve~regout\) # ((\state.SP_rec1~regout\ & ((\state.S_lose~regout\) # (!\card_val_display[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SP_recieve~regout\,
	datab => \card_val_display[1]~3_combout\,
	datac => \state.S_lose~regout\,
	datad => \state.SP_rec1~regout\,
	combout => \Selector11~1_combout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: LCCOMB_X45_Y10_N10
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\state.I~regout\) # ((!\state.S_lose~regout\ & (!\state.S_win~regout\ & !\state.S_draw~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_lose~regout\,
	datab => \state.S_win~regout\,
	datac => \state.I~regout\,
	datad => \state.S_draw~regout\,
	combout => \Selector7~0_combout\);

-- Location: LCFF_X45_Y10_N11
\state.I\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector7~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.I~regout\);

-- Location: LCCOMB_X45_Y10_N30
\state.SP_rec~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.SP_rec~0_combout\ = !\state.I~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.I~regout\,
	combout => \state.SP_rec~0_combout\);

-- Location: LCFF_X45_Y10_N31
\state.SP_rec\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \state.SP_rec~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.SP_rec~regout\);

-- Location: LCCOMB_X48_Y10_N6
\Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (\state.SP_rec~regout\) # ((\state.SP_wait~regout\ & ((\state.S_lose~regout\) # (!\card_val_display[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SP_wait~regout\,
	datab => \card_val_display[1]~3_combout\,
	datac => \state.SP_rec~regout\,
	datad => \state.S_lose~regout\,
	combout => \Selector9~0_combout\);

-- Location: LCFF_X49_Y10_N27
\state.SP_wait\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	sdata => \Selector9~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.SP_wait~regout\);

-- Location: LCCOMB_X49_Y10_N0
\P_cont[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_cont[0]~4_combout\ = P_cont(0) $ (((\state.SP_wait1~regout\) # (\state.SP_wait~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.SP_wait1~regout\,
	datac => P_cont(0),
	datad => \state.SP_wait~regout\,
	combout => \P_cont[0]~4_combout\);

-- Location: LCFF_X49_Y10_N1
\P_cont[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \P_cont[0]~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P_cont(0));

-- Location: LCCOMB_X49_Y10_N30
\P_cont[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_cont[1]~0_combout\ = P_cont(1) $ (((P_cont(0) & ((\state.SP_wait~regout\) # (\state.SP_wait1~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SP_wait~regout\,
	datab => \state.SP_wait1~regout\,
	datac => P_cont(1),
	datad => P_cont(0),
	combout => \P_cont[1]~0_combout\);

-- Location: LCFF_X49_Y10_N31
\P_cont[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \P_cont[1]~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P_cont(1));

-- Location: LCCOMB_X48_Y10_N16
\P_cont[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_cont[2]~1_combout\ = (P_cont(0) & (P_cont(1) & ((\state.SP_wait1~regout\) # (\state.SP_wait~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SP_wait1~regout\,
	datab => P_cont(0),
	datac => \state.SP_wait~regout\,
	datad => P_cont(1),
	combout => \P_cont[2]~1_combout\);

-- Location: LCCOMB_X49_Y10_N14
\P_cont[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_cont[2]~3_combout\ = P_cont(2) $ (\P_cont[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => P_cont(2),
	datad => \P_cont[2]~1_combout\,
	combout => \P_cont[2]~3_combout\);

-- Location: LCFF_X49_Y10_N15
\P_cont[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \P_cont[2]~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P_cont(2));

-- Location: LCCOMB_X49_Y10_N20
\P_cont[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_cont[3]~2_combout\ = P_cont(3) $ (((P_cont(2) & \P_cont[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => P_cont(2),
	datac => P_cont(3),
	datad => \P_cont[2]~1_combout\,
	combout => \P_cont[3]~2_combout\);

-- Location: LCFF_X49_Y10_N21
\P_cont[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \P_cont[3]~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P_cont(3));

-- Location: LCCOMB_X48_Y10_N8
\process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~4_combout\ = (!P_cont(2) & (!P_cont(3) & (!P_sum(1) & P_cont(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P_cont(2),
	datab => P_cont(3),
	datac => P_sum(1),
	datad => P_cont(1),
	combout => \process_0~4_combout\);

-- Location: LCCOMB_X49_Y10_N10
\Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector10~0_combout\ = (\state.SP_wait~regout\) # ((\state.SP_recieve~regout\ & ((\state.S_lose~regout\) # (!\card_val_display[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_lose~regout\,
	datab => \card_val_display[1]~3_combout\,
	datac => \state.SP_recieve~regout\,
	datad => \state.SP_wait~regout\,
	combout => \Selector10~0_combout\);

-- Location: LCFF_X49_Y10_N11
\state.SP_recieve\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector10~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.SP_recieve~regout\);

-- Location: LCCOMB_X48_Y10_N0
\P_sum[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_sum[0]~3_combout\ = (\state.SP_recieve~regout\ & (\Add1~0_combout\)) # (!\state.SP_recieve~regout\ & ((P_sum(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~0_combout\,
	datac => P_sum(0),
	datad => \state.SP_recieve~regout\,
	combout => \P_sum[0]~3_combout\);

-- Location: LCCOMB_X47_Y12_N20
\Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = (P_sum(0) & (\temp_card_val~0_combout\ $ (VCC))) # (!P_sum(0) & (\temp_card_val~0_combout\ & VCC))
-- \Add3~1\ = CARRY((P_sum(0) & \temp_card_val~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(0),
	datab => \temp_card_val~0_combout\,
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: LCFF_X48_Y10_N1
\P_sum[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \P_sum[0]~3_combout\,
	sdata => \Add3~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \state.SP_recieve1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P_sum(0));

-- Location: LCCOMB_X48_Y10_N26
\Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~0_combout\ = (!\LessThan3~0_combout\ & (((!P_sum(0)) # (!\process_0~4_combout\)) # (!\process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~5_combout\,
	datab => \process_0~4_combout\,
	datac => \LessThan3~0_combout\,
	datad => P_sum(0),
	combout => \Selector11~0_combout\);

-- Location: LCCOMB_X48_Y10_N18
\Selector11~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector11~2_combout\ = (\Selector11~1_combout\) # ((\state.S_decision~regout\ & (\SW~combout\(9) & \Selector11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_decision~regout\,
	datab => \Selector11~1_combout\,
	datac => \SW~combout\(9),
	datad => \Selector11~0_combout\,
	combout => \Selector11~2_combout\);

-- Location: LCCOMB_X49_Y10_N2
\state.SP_rec1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.SP_rec1~feeder_combout\ = \Selector11~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector11~2_combout\,
	combout => \state.SP_rec1~feeder_combout\);

-- Location: LCFF_X49_Y10_N3
\state.SP_rec1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \state.SP_rec1~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.SP_rec1~regout\);

-- Location: LCCOMB_X49_Y10_N4
\Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector12~0_combout\ = (\state.SP_rec1~regout\) # ((\state.SP_wait1~regout\ & ((\state.S_lose~regout\) # (!\card_val_display[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_lose~regout\,
	datab => \state.SP_rec1~regout\,
	datac => \state.SP_wait1~regout\,
	datad => \card_val_display[1]~3_combout\,
	combout => \Selector12~0_combout\);

-- Location: LCFF_X49_Y10_N5
\state.SP_wait1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector12~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.SP_wait1~regout\);

-- Location: LCCOMB_X49_Y10_N12
\Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector13~0_combout\ = (\state.SP_wait1~regout\) # ((\state.SP_recieve1~regout\ & ((\state.S_lose~regout\) # (!\card_val_display[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_lose~regout\,
	datab => \state.SP_wait1~regout\,
	datac => \state.SP_recieve1~regout\,
	datad => \card_val_display[1]~3_combout\,
	combout => \Selector13~0_combout\);

-- Location: LCFF_X49_Y10_N13
\state.SP_recieve1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector13~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.SP_recieve1~regout\);

-- Location: LCCOMB_X46_Y12_N16
\Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\state.SP_recieve1~regout\ & (\process_0~7_combout\ $ ((\Add3~2_combout\)))) # (!\state.SP_recieve1~regout\ & (((\Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~7_combout\,
	datab => \Add3~2_combout\,
	datac => \Add1~2_combout\,
	datad => \state.SP_recieve1~regout\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X46_Y12_N18
\WideOr28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr28~0_combout\ = (\state.SP_recieve~regout\) # (\state.SP_recieve1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.SP_recieve~regout\,
	datad => \state.SP_recieve1~regout\,
	combout => \WideOr28~0_combout\);

-- Location: LCFF_X46_Y12_N17
\P_sum[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector34~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \WideOr28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P_sum(1));

-- Location: LCCOMB_X47_Y12_N22
\Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\temp_card_val~5_combout\ & ((P_sum(1) & (\Add3~1\ & VCC)) # (!P_sum(1) & (!\Add3~1\)))) # (!\temp_card_val~5_combout\ & ((P_sum(1) & (!\Add3~1\)) # (!P_sum(1) & ((\Add3~1\) # (GND)))))
-- \Add3~3\ = CARRY((\temp_card_val~5_combout\ & (!P_sum(1) & !\Add3~1\)) # (!\temp_card_val~5_combout\ & ((!\Add3~1\) # (!P_sum(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_card_val~5_combout\,
	datab => P_sum(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X47_Y12_N24
\Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = ((P_sum(2) $ (\temp_card_val~2_combout\ $ (!\Add3~3\)))) # (GND)
-- \Add3~5\ = CARRY((P_sum(2) & ((\temp_card_val~2_combout\) # (!\Add3~3\))) # (!P_sum(2) & (\temp_card_val~2_combout\ & !\Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(2),
	datab => \temp_card_val~2_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X46_Y12_N0
\Add4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = \Add3~2_combout\ $ (\Add3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~2_combout\,
	datad => \Add3~4_combout\,
	combout => \Add4~1_combout\);

-- Location: LCCOMB_X46_Y12_N10
\P_sum[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_sum[2]~2_combout\ = (\process_0~7_combout\ & (!\Add4~1_combout\)) # (!\process_0~7_combout\ & ((\Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~7_combout\,
	datab => \Add4~1_combout\,
	datad => \Add3~4_combout\,
	combout => \P_sum[2]~2_combout\);

-- Location: LCCOMB_X47_Y12_N12
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((P_sum(2) $ (\temp_card_val~2_combout\ $ (!\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((P_sum(2) & ((\temp_card_val~2_combout\) # (!\Add1~3\))) # (!P_sum(2) & (\temp_card_val~2_combout\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(2),
	datab => \temp_card_val~2_combout\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCFF_X46_Y12_N11
\P_sum[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \P_sum[2]~2_combout\,
	sdata => \Add1~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \ALT_INV_state.SP_recieve1~regout\,
	ena => \WideOr28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P_sum(2));

-- Location: LCCOMB_X47_Y12_N26
\Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\temp_card_val~4_combout\ & ((P_sum(3) & (\Add3~5\ & VCC)) # (!P_sum(3) & (!\Add3~5\)))) # (!\temp_card_val~4_combout\ & ((P_sum(3) & (!\Add3~5\)) # (!P_sum(3) & ((\Add3~5\) # (GND)))))
-- \Add3~7\ = CARRY((\temp_card_val~4_combout\ & (!P_sum(3) & !\Add3~5\)) # (!\temp_card_val~4_combout\ & ((!\Add3~5\) # (!P_sum(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_card_val~4_combout\,
	datab => P_sum(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X46_Y12_N2
\Add4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = \Add3~6_combout\ $ (((\Add3~2_combout\) # (\Add3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~2_combout\,
	datac => \Add3~6_combout\,
	datad => \Add3~4_combout\,
	combout => \Add4~2_combout\);

-- Location: LCCOMB_X47_Y12_N28
\Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (P_sum(4) & (\Add3~7\ $ (GND))) # (!P_sum(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((P_sum(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X47_Y12_N30
\Add3~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = \Add3~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add3~9\,
	combout => \Add3~10_combout\);

-- Location: LCCOMB_X47_Y12_N0
\LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (\Add3~6_combout\) # ((\Add3~2_combout\ & \Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~2_combout\,
	datac => \Add3~4_combout\,
	datad => \Add3~6_combout\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X47_Y12_N6
\process_0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~7_combout\ = (\P_ace~regout\ & ((\Add3~10_combout\) # ((\LessThan2~0_combout\ & \Add3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \P_ace~regout\,
	datab => \Add3~10_combout\,
	datac => \LessThan2~0_combout\,
	datad => \Add3~8_combout\,
	combout => \process_0~7_combout\);

-- Location: LCCOMB_X46_Y12_N28
\P_sum[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_sum[3]~1_combout\ = (\process_0~7_combout\ & ((\Add4~2_combout\))) # (!\process_0~7_combout\ & (\Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datab => \Add4~2_combout\,
	datad => \process_0~7_combout\,
	combout => \P_sum[3]~1_combout\);

-- Location: LCCOMB_X47_Y12_N14
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\temp_card_val~6_combout\ & ((P_sum(3) & (\Add1~5\ & VCC)) # (!P_sum(3) & (!\Add1~5\)))) # (!\temp_card_val~6_combout\ & ((P_sum(3) & (!\Add1~5\)) # (!P_sum(3) & ((\Add1~5\) # (GND)))))
-- \Add1~7\ = CARRY((\temp_card_val~6_combout\ & (!P_sum(3) & !\Add1~5\)) # (!\temp_card_val~6_combout\ & ((!\Add1~5\) # (!P_sum(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_card_val~6_combout\,
	datab => P_sum(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCFF_X46_Y12_N29
\P_sum[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \P_sum[3]~1_combout\,
	sdata => \Add1~6_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \ALT_INV_state.SP_recieve1~regout\,
	ena => \WideOr28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P_sum(3));

-- Location: LCCOMB_X46_Y12_N30
\Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \Add3~8_combout\ $ (((\Add3~6_combout\ & ((\Add3~2_combout\) # (\Add3~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~2_combout\,
	datab => \Add3~8_combout\,
	datac => \Add3~6_combout\,
	datad => \Add3~4_combout\,
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X46_Y12_N12
\P_sum[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \P_sum[4]~0_combout\ = (\process_0~7_combout\ & (!\Add4~0_combout\)) # (!\process_0~7_combout\ & ((\Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~7_combout\,
	datab => \Add4~0_combout\,
	datad => \Add3~8_combout\,
	combout => \P_sum[4]~0_combout\);

-- Location: LCCOMB_X47_Y12_N16
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = \Add1~7\ $ (!P_sum(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => P_sum(4),
	cin => \Add1~7\,
	combout => \Add1~8_combout\);

-- Location: LCFF_X46_Y12_N13
\P_sum[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \P_sum[4]~0_combout\,
	sdata => \Add1~8_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \ALT_INV_state.SP_recieve1~regout\,
	ena => \WideOr28~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => P_sum(4));

-- Location: LCCOMB_X47_Y11_N4
\LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = (P_sum(4) & ((P_sum(3)) # ((P_sum(1) & P_sum(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(1),
	datab => P_sum(2),
	datac => P_sum(3),
	datad => P_sum(4),
	combout => \LessThan3~0_combout\);

-- Location: LCCOMB_X44_Y11_N2
\LessThan9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan9~0_combout\ = (D_sum(1) & (((D_sum(0) & !P_sum(0))) # (!P_sum(1)))) # (!D_sum(1) & (D_sum(0) & (!P_sum(1) & !P_sum(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(0),
	datab => D_sum(1),
	datac => P_sum(1),
	datad => P_sum(0),
	combout => \LessThan9~0_combout\);

-- Location: LCCOMB_X44_Y11_N28
\LessThan9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan9~1_combout\ = (D_sum(2) & ((\LessThan9~0_combout\) # (!P_sum(2)))) # (!D_sum(2) & (\LessThan9~0_combout\ & !P_sum(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(2),
	datab => \LessThan9~0_combout\,
	datac => P_sum(2),
	combout => \LessThan9~1_combout\);

-- Location: LCCOMB_X44_Y10_N4
\Add8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = (D_sum(0) & (\temp_card_val~0_combout\ $ (VCC))) # (!D_sum(0) & (\temp_card_val~0_combout\ & VCC))
-- \Add8~1\ = CARRY((D_sum(0) & \temp_card_val~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(0),
	datab => \temp_card_val~0_combout\,
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X44_Y10_N6
\Add8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (D_sum(1) & ((\temp_card_val~9_combout\ & (\Add8~1\ & VCC)) # (!\temp_card_val~9_combout\ & (!\Add8~1\)))) # (!D_sum(1) & ((\temp_card_val~9_combout\ & (!\Add8~1\)) # (!\temp_card_val~9_combout\ & ((\Add8~1\) # (GND)))))
-- \Add8~3\ = CARRY((D_sum(1) & (!\temp_card_val~9_combout\ & !\Add8~1\)) # (!D_sum(1) & ((!\Add8~1\) # (!\temp_card_val~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(1),
	datab => \temp_card_val~9_combout\,
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X44_Y10_N8
\Add8~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = ((D_sum(2) $ (\temp_card_val~2_combout\ $ (!\Add8~3\)))) # (GND)
-- \Add8~5\ = CARRY((D_sum(2) & ((\temp_card_val~2_combout\) # (!\Add8~3\))) # (!D_sum(2) & (\temp_card_val~2_combout\ & !\Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(2),
	datab => \temp_card_val~2_combout\,
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X44_Y10_N30
\D_sum[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_sum[2]~2_combout\ = (\process_0~9_combout\ & (!\Add9~1_combout\)) # (!\process_0~9_combout\ & ((\Add8~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~1_combout\,
	datab => \Add8~4_combout\,
	datad => \process_0~9_combout\,
	combout => \D_sum[2]~2_combout\);

-- Location: LCCOMB_X44_Y10_N16
\Add6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (D_sum(0) & (\temp_card_val~0_combout\ $ (VCC))) # (!D_sum(0) & (\temp_card_val~0_combout\ & VCC))
-- \Add6~1\ = CARRY((D_sum(0) & \temp_card_val~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(0),
	datab => \temp_card_val~0_combout\,
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X44_Y10_N18
\Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (D_sum(1) & ((\temp_card_val~7_combout\ & (\Add6~1\ & VCC)) # (!\temp_card_val~7_combout\ & (!\Add6~1\)))) # (!D_sum(1) & ((\temp_card_val~7_combout\ & (!\Add6~1\)) # (!\temp_card_val~7_combout\ & ((\Add6~1\) # (GND)))))
-- \Add6~3\ = CARRY((D_sum(1) & (!\temp_card_val~7_combout\ & !\Add6~1\)) # (!D_sum(1) & ((!\Add6~1\) # (!\temp_card_val~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(1),
	datab => \temp_card_val~7_combout\,
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X44_Y10_N20
\Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = ((D_sum(2) $ (\temp_card_val~2_combout\ $ (!\Add6~3\)))) # (GND)
-- \Add6~5\ = CARRY((D_sum(2) & ((\temp_card_val~2_combout\) # (!\Add6~3\))) # (!D_sum(2) & (\temp_card_val~2_combout\ & !\Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(2),
	datab => \temp_card_val~2_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X49_Y10_N18
\Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector16~0_combout\ = (\state.SD_rec~regout\) # ((\state.SD_wait~regout\ & ((\state.S_lose~regout\) # (!\card_val_display[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_lose~regout\,
	datab => \card_val_display[1]~3_combout\,
	datac => \state.SD_wait~regout\,
	datad => \state.SD_rec~regout\,
	combout => \Selector16~0_combout\);

-- Location: LCFF_X49_Y10_N19
\state.SD_wait\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector16~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.SD_wait~regout\);

-- Location: LCCOMB_X49_Y10_N28
\Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector17~0_combout\ = (\state.SD_wait~regout\) # ((\state.SD_recieve~regout\ & ((\state.S_lose~regout\) # (!\card_val_display[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_lose~regout\,
	datab => \state.SD_wait~regout\,
	datac => \state.SD_recieve~regout\,
	datad => \card_val_display[1]~3_combout\,
	combout => \Selector17~0_combout\);

-- Location: LCFF_X49_Y10_N29
\state.SD_recieve\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector17~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.SD_recieve~regout\);

-- Location: LCCOMB_X45_Y10_N14
\HEX1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \HEX1~0_combout\ = (\state.SD_recieve1~regout\) # (\state.SD_recieve~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.SD_recieve1~regout\,
	datad => \state.SD_recieve~regout\,
	combout => \HEX1~0_combout\);

-- Location: LCFF_X44_Y10_N31
\D_sum[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \D_sum[2]~2_combout\,
	sdata => \Add6~4_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \ALT_INV_state.SD_recieve1~regout\,
	ena => \HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_sum(2));

-- Location: LCCOMB_X45_Y10_N16
\D_sum[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_sum[0]~3_combout\ = (\state.SD_recieve~regout\ & (\Add6~0_combout\)) # (!\state.SD_recieve~regout\ & ((D_sum(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~0_combout\,
	datac => D_sum(0),
	datad => \state.SD_recieve~regout\,
	combout => \D_sum[0]~3_combout\);

-- Location: LCFF_X45_Y10_N17
\D_sum[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \D_sum[0]~3_combout\,
	sdata => \Add8~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \state.SD_recieve1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_sum(0));

-- Location: LCCOMB_X42_Y10_N10
\Add7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~1_cout\ = CARRY(D_sum(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_sum(0),
	datad => VCC,
	cout => \Add7~1_cout\);

-- Location: LCCOMB_X42_Y10_N12
\Add7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (D_sum(1) & (\Add7~1_cout\ & VCC)) # (!D_sum(1) & (!\Add7~1_cout\))
-- \Add7~3\ = CARRY((!D_sum(1) & !\Add7~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(1),
	datad => VCC,
	cin => \Add7~1_cout\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X42_Y10_N14
\Add7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (D_sum(2) & (\Add7~3\ $ (GND))) # (!D_sum(2) & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((D_sum(2) & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_sum(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X42_Y10_N18
\Add7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (D_sum(4) & (\Add7~7\ $ (GND))) # (!D_sum(4) & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((D_sum(4) & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(4),
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X42_Y10_N28
\process_0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~8_combout\ = ((!\Add7~6_combout\ & ((!\Add7~2_combout\) # (!\Add7~4_combout\)))) # (!\Add7~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \Add7~8_combout\,
	datac => \Add7~4_combout\,
	datad => \Add7~2_combout\,
	combout => \process_0~8_combout\);

-- Location: LCCOMB_X42_Y10_N20
\Add7~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = \Add7~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add7~9\,
	combout => \Add7~10_combout\);

-- Location: LCCOMB_X40_Y11_N16
\temp_card_val~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp_card_val~3_combout\ = (\SW~combout\(5) & ((\card_gen|random_number\(3)))) # (!\SW~combout\(5) & (\SW~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(3),
	datac => \SW~combout\(5),
	datad => \card_gen|random_number\(3),
	combout => \temp_card_val~3_combout\);

-- Location: LCCOMB_X43_Y10_N12
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\temp_card_val~1_combout\ & (!\temp_card_val~2_combout\ & (\temp_card_val~0_combout\ & !\temp_card_val~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_card_val~1_combout\,
	datab => \temp_card_val~2_combout\,
	datac => \temp_card_val~0_combout\,
	datad => \temp_card_val~3_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X43_Y10_N4
\temp_card_val~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp_card_val~9_combout\ = (\temp_card_val~1_combout\) # ((\process_0~8_combout\ & (!\Add7~10_combout\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_card_val~1_combout\,
	datab => \process_0~8_combout\,
	datac => \Add7~10_combout\,
	datad => \Equal0~0_combout\,
	combout => \temp_card_val~9_combout\);

-- Location: LCCOMB_X44_Y10_N26
\Add9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = \Add8~8_combout\ $ (((\Add8~6_combout\ & ((\Add8~2_combout\) # (\Add8~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~6_combout\,
	datab => \Add8~2_combout\,
	datac => \Add8~4_combout\,
	datad => \Add8~8_combout\,
	combout => \Add9~0_combout\);

-- Location: LCCOMB_X44_Y10_N28
\D_sum[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_sum[4]~0_combout\ = (\process_0~9_combout\ & ((!\Add9~0_combout\))) # (!\process_0~9_combout\ & (\Add8~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~8_combout\,
	datab => \process_0~9_combout\,
	datad => \Add9~0_combout\,
	combout => \D_sum[4]~0_combout\);

-- Location: LCCOMB_X44_Y10_N22
\Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\temp_card_val~6_combout\ & ((D_sum(3) & (\Add6~5\ & VCC)) # (!D_sum(3) & (!\Add6~5\)))) # (!\temp_card_val~6_combout\ & ((D_sum(3) & (!\Add6~5\)) # (!D_sum(3) & ((\Add6~5\) # (GND)))))
-- \Add6~7\ = CARRY((\temp_card_val~6_combout\ & (!D_sum(3) & !\Add6~5\)) # (!\temp_card_val~6_combout\ & ((!\Add6~5\) # (!D_sum(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_card_val~6_combout\,
	datab => D_sum(3),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X44_Y10_N24
\Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = \Add6~7\ $ (!D_sum(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => D_sum(4),
	cin => \Add6~7\,
	combout => \Add6~8_combout\);

-- Location: LCFF_X44_Y10_N29
\D_sum[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \D_sum[4]~0_combout\,
	sdata => \Add6~8_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \ALT_INV_state.SD_recieve1~regout\,
	ena => \HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_sum(4));

-- Location: LCCOMB_X44_Y10_N10
\Add8~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\temp_card_val~8_combout\ & ((D_sum(3) & (\Add8~5\ & VCC)) # (!D_sum(3) & (!\Add8~5\)))) # (!\temp_card_val~8_combout\ & ((D_sum(3) & (!\Add8~5\)) # (!D_sum(3) & ((\Add8~5\) # (GND)))))
-- \Add8~7\ = CARRY((\temp_card_val~8_combout\ & (!D_sum(3) & !\Add8~5\)) # (!\temp_card_val~8_combout\ & ((!\Add8~5\) # (!D_sum(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \temp_card_val~8_combout\,
	datab => D_sum(3),
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X44_Y10_N12
\Add8~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (D_sum(4) & (\Add8~7\ $ (GND))) # (!D_sum(4) & (!\Add8~7\ & VCC))
-- \Add8~9\ = CARRY((D_sum(4) & !\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_sum(4),
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X44_Y10_N14
\Add8~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = \Add8~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add8~9\,
	combout => \Add8~10_combout\);

-- Location: LCCOMB_X43_Y10_N26
\LessThan5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (\Add8~6_combout\) # ((\Add8~4_combout\ & \Add8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~6_combout\,
	datac => \Add8~4_combout\,
	datad => \Add8~2_combout\,
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X43_Y10_N24
\process_0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \process_0~9_combout\ = (\D_ace~regout\ & ((\Add8~10_combout\) # ((\Add8~8_combout\ & \LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D_ace~regout\,
	datab => \Add8~8_combout\,
	datac => \Add8~10_combout\,
	datad => \LessThan5~0_combout\,
	combout => \process_0~9_combout\);

-- Location: LCCOMB_X43_Y10_N16
\Add9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = \Add8~6_combout\ $ (((\Add8~4_combout\) # (\Add8~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add8~6_combout\,
	datac => \Add8~4_combout\,
	datad => \Add8~2_combout\,
	combout => \Add9~2_combout\);

-- Location: LCCOMB_X44_Y10_N2
\D_sum[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \D_sum[3]~1_combout\ = (\process_0~9_combout\ & ((\Add9~2_combout\))) # (!\process_0~9_combout\ & (\Add8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~6_combout\,
	datab => \process_0~9_combout\,
	datad => \Add9~2_combout\,
	combout => \D_sum[3]~1_combout\);

-- Location: LCFF_X44_Y10_N3
\D_sum[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \D_sum[3]~1_combout\,
	sdata => \Add6~6_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => \ALT_INV_state.SD_recieve1~regout\,
	ena => \HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_sum(3));

-- Location: LCCOMB_X45_Y11_N16
\LessThan9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan9~2_combout\ = (\LessThan9~1_combout\ & ((D_sum(3)) # (!P_sum(3)))) # (!\LessThan9~1_combout\ & (D_sum(3) & !P_sum(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan9~1_combout\,
	datac => D_sum(3),
	datad => P_sum(3),
	combout => \LessThan9~2_combout\);

-- Location: LCCOMB_X46_Y10_N16
\LessThan9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan9~3_combout\ = (D_sum(4) & ((\LessThan9~2_combout\) # (!P_sum(4)))) # (!D_sum(4) & (!P_sum(4) & \LessThan9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(4),
	datab => P_sum(4),
	datad => \LessThan9~2_combout\,
	combout => \LessThan9~3_combout\);

-- Location: LCCOMB_X47_Y10_N0
\Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\state.SD_result~regout\ & ((\process_0~2_combout\) # ((\LessThan9~3_combout\ & \Selector24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => \LessThan9~3_combout\,
	datac => \state.SD_result~regout\,
	datad => \Selector24~1_combout\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X48_Y10_N20
\Selector23~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\Selector23~0_combout\) # ((\state.S_lose~regout\) # ((\state.S_decision~regout\ & \LessThan3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_decision~regout\,
	datab => \LessThan3~0_combout\,
	datac => \Selector23~0_combout\,
	datad => \state.S_lose~regout\,
	combout => \Selector23~1_combout\);

-- Location: LCFF_X49_Y10_N9
\state.S_lose\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	sdata => \Selector23~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S_lose~regout\);

-- Location: LCCOMB_X47_Y10_N20
\Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector20~0_combout\ = (\state.SD_wait1~regout\) # ((\state.SD_recieve1~regout\ & ((\state.S_lose~regout\) # (!\card_val_display[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SD_wait1~regout\,
	datab => \card_val_display[1]~3_combout\,
	datac => \state.SD_recieve1~regout\,
	datad => \state.S_lose~regout\,
	combout => \Selector20~0_combout\);

-- Location: LCFF_X47_Y10_N21
\state.SD_recieve1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector20~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.SD_recieve1~regout\);

-- Location: LCCOMB_X49_Y10_N6
\Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector21~0_combout\ = (\state.SD_recieve1~regout\) # ((\state.SD_result~regout\ & ((\state.S_lose~regout\) # (!\card_val_display[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_lose~regout\,
	datab => \card_val_display[1]~3_combout\,
	datac => \state.SD_result~regout\,
	datad => \state.SD_recieve1~regout\,
	combout => \Selector21~0_combout\);

-- Location: LCFF_X49_Y10_N7
\state.SD_result\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector21~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.SD_result~regout\);

-- Location: LCCOMB_X48_Y10_N4
\Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~0_combout\ = (\WideOr3~combout\) # ((!\SW~combout\(8) & (!\SW~combout\(9) & \Selector11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(8),
	datab => \WideOr3~combout\,
	datac => \SW~combout\(9),
	datad => \Selector11~0_combout\,
	combout => \Selector14~0_combout\);

-- Location: LCCOMB_X48_Y10_N12
\Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector14~1_combout\ = (\state.SP_recieve1~regout\) # ((\Selector14~0_combout\ & \state.S_decision~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector14~0_combout\,
	datac => \state.S_decision~regout\,
	datad => \state.SP_recieve1~regout\,
	combout => \Selector14~1_combout\);

-- Location: LCFF_X48_Y10_N13
\state.S_decision\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector14~1_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S_decision~regout\);

-- Location: LCCOMB_X48_Y10_N24
\Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~0_combout\ = (\process_0~5_combout\ & (P_sum(0) & (\process_0~4_combout\ & \state.S_decision~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~5_combout\,
	datab => P_sum(0),
	datac => \process_0~4_combout\,
	datad => \state.S_decision~regout\,
	combout => \Selector22~0_combout\);

-- Location: LCCOMB_X47_Y10_N2
\Selector22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector22~3_combout\ = (\state.S_win~regout\) # ((\Selector22~0_combout\) # ((\Selector22~2_combout\ & \state.SD_result~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector22~2_combout\,
	datab => \state.SD_result~regout\,
	datac => \state.S_win~regout\,
	datad => \Selector22~0_combout\,
	combout => \Selector22~3_combout\);

-- Location: LCFF_X47_Y10_N3
\state.S_win\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector22~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S_win~regout\);

-- Location: LCCOMB_X47_Y10_N16
WideOr3 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr3~combout\ = (\state.S_lose~regout\) # ((\state.S_draw~regout\) # (\state.S_win~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_lose~regout\,
	datab => \state.S_draw~regout\,
	datac => \state.S_win~regout\,
	combout => \WideOr3~combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(8),
	combout => \SW~combout\(8));

-- Location: LCCOMB_X48_Y10_N28
\Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~0_combout\ = (\state.S_decision~regout\ & (\SW~combout\(8) & (!\SW~combout\(9) & \Selector11~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_decision~regout\,
	datab => \SW~combout\(8),
	datac => \SW~combout\(9),
	datad => \Selector11~0_combout\,
	combout => \Selector15~0_combout\);

-- Location: LCCOMB_X48_Y10_N10
\Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector15~1_combout\ = (\Selector15~0_combout\) # ((\WideOr3~combout\ & \state.SD_rec~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr3~combout\,
	datac => \state.SD_rec~regout\,
	datad => \Selector15~0_combout\,
	combout => \Selector15~1_combout\);

-- Location: LCCOMB_X49_Y11_N16
\state.SD_rec~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \state.SD_rec~feeder_combout\ = \Selector15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector15~1_combout\,
	combout => \state.SD_rec~feeder_combout\);

-- Location: LCFF_X49_Y11_N17
\state.SD_rec\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \state.SD_rec~feeder_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.SD_rec~regout\);

-- Location: LCCOMB_X48_Y10_N22
\Selector25~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~2_combout\ = (\state.SD_rec1~regout\) # ((\state.SD_rec~regout\) # ((\state.SP_rec~regout\) # (\state.SP_rec1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SD_rec1~regout\,
	datab => \state.SD_rec~regout\,
	datac => \state.SP_rec~regout\,
	datad => \state.SP_rec1~regout\,
	combout => \Selector25~2_combout\);

-- Location: LCCOMB_X48_Y10_N14
\Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~0_combout\ = (!\state.SP_wait~regout\ & !\state.SP_wait1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SP_wait~regout\,
	datad => \state.SP_wait1~regout\,
	combout => \Selector25~0_combout\);

-- Location: LCCOMB_X49_Y10_N22
\Selector25~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector25~3_combout\ = (\Selector25~2_combout\) # ((\Selector25~1_combout\ & (\rec_card~regout\ & \Selector25~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector25~1_combout\,
	datab => \Selector25~2_combout\,
	datac => \rec_card~regout\,
	datad => \Selector25~0_combout\,
	combout => \Selector25~3_combout\);

-- Location: LCFF_X49_Y10_N23
rec_card : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector25~3_combout\,
	ena => \KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rec_card~regout\);

-- Location: LCCOMB_X37_Y13_N6
\card_gen|lfsr[5]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|lfsr[5]~1_combout\ = (\rec_card~regout\) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datac => \rec_card~regout\,
	combout => \card_gen|lfsr[5]~1_combout\);

-- Location: LCFF_X37_Y13_N31
\card_gen|lfsr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \card_gen|lfsr~14_combout\,
	ena => \card_gen|lfsr[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|lfsr\(3));

-- Location: LCCOMB_X37_Y13_N20
\card_gen|lfsr~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|lfsr~13_combout\ = (\KEY~combout\(0) & \card_gen|lfsr\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(0),
	datad => \card_gen|lfsr\(3),
	combout => \card_gen|lfsr~13_combout\);

-- Location: LCFF_X37_Y13_N21
\card_gen|lfsr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \card_gen|lfsr~13_combout\,
	ena => \card_gen|lfsr[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|lfsr\(4));

-- Location: LCCOMB_X36_Y13_N20
\card_gen|lfsr~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|lfsr~12_combout\ = (!\card_gen|lfsr\(4) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|lfsr\(4),
	datad => \KEY~combout\(0),
	combout => \card_gen|lfsr~12_combout\);

-- Location: LCFF_X36_Y13_N21
\card_gen|lfsr[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \card_gen|lfsr~12_combout\,
	ena => \card_gen|lfsr[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|lfsr\(5));

-- Location: LCCOMB_X37_Y13_N26
\card_gen|lfsr~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|lfsr~11_combout\ = (\KEY~combout\(0) & !\card_gen|lfsr\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datad => \card_gen|lfsr\(5),
	combout => \card_gen|lfsr~11_combout\);

-- Location: LCFF_X37_Y13_N27
\card_gen|lfsr[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \card_gen|lfsr~11_combout\,
	ena => \card_gen|lfsr[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|lfsr\(6));

-- Location: LCCOMB_X37_Y13_N28
\card_gen|lfsr~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|lfsr~10_combout\ = (\KEY~combout\(0) & !\card_gen|lfsr\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(0),
	datad => \card_gen|lfsr\(6),
	combout => \card_gen|lfsr~10_combout\);

-- Location: LCFF_X37_Y13_N29
\card_gen|lfsr[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \card_gen|lfsr~10_combout\,
	ena => \card_gen|lfsr[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|lfsr\(7));

-- Location: LCCOMB_X34_Y14_N4
\card_gen|lfsr~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|lfsr~9_combout\ = (\KEY~combout\(0) & !\card_gen|lfsr\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(0),
	datad => \card_gen|lfsr\(7),
	combout => \card_gen|lfsr~9_combout\);

-- Location: LCFF_X34_Y14_N5
\card_gen|lfsr[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \card_gen|lfsr~9_combout\,
	ena => \card_gen|lfsr[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|lfsr\(8));

-- Location: LCCOMB_X33_Y15_N28
\card_gen|lfsr~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|lfsr~8_combout\ = (\card_gen|lfsr\(8) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|lfsr\(8),
	datad => \KEY~combout\(0),
	combout => \card_gen|lfsr~8_combout\);

-- Location: LCCOMB_X34_Y15_N20
\card_gen|lfsr[9]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|lfsr[9]~feeder_combout\ = \card_gen|lfsr~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \card_gen|lfsr~8_combout\,
	combout => \card_gen|lfsr[9]~feeder_combout\);

-- Location: LCFF_X34_Y15_N21
\card_gen|lfsr[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \card_gen|lfsr[9]~feeder_combout\,
	ena => \card_gen|lfsr[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|lfsr\(9));

-- Location: LCCOMB_X33_Y15_N24
\card_gen|lfsr~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|lfsr~7_combout\ = (!\card_gen|lfsr\(9) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|lfsr\(9),
	datad => \KEY~combout\(0),
	combout => \card_gen|lfsr~7_combout\);

-- Location: LCFF_X33_Y15_N25
\card_gen|lfsr[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \card_gen|lfsr~7_combout\,
	ena => \card_gen|lfsr[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|lfsr\(10));

-- Location: LCCOMB_X32_Y15_N16
\card_gen|lfsr~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|lfsr~6_combout\ = (\card_gen|lfsr\(10) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|lfsr\(10),
	datad => \KEY~combout\(0),
	combout => \card_gen|lfsr~6_combout\);

-- Location: LCFF_X31_Y16_N19
\card_gen|lfsr[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	sdata => \card_gen|lfsr~6_combout\,
	sload => VCC,
	ena => \card_gen|lfsr[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|lfsr\(11));

-- Location: LCCOMB_X32_Y15_N30
\card_gen|lfsr~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|lfsr~5_combout\ = (!\card_gen|lfsr\(11) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|lfsr\(11),
	datad => \KEY~combout\(0),
	combout => \card_gen|lfsr~5_combout\);

-- Location: LCFF_X31_Y16_N31
\card_gen|lfsr[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	sdata => \card_gen|lfsr~5_combout\,
	sload => VCC,
	ena => \card_gen|lfsr[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|lfsr\(12));

-- Location: LCCOMB_X32_Y15_N0
\card_gen|lfsr~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|lfsr~2_combout\ = (!\card_gen|lfsr\(14) & \KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|lfsr\(14),
	datad => \KEY~combout\(0),
	combout => \card_gen|lfsr~2_combout\);

-- Location: LCFF_X31_Y16_N17
\card_gen|lfsr[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	sdata => \card_gen|lfsr~2_combout\,
	sload => VCC,
	ena => \card_gen|lfsr[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|lfsr\(15));

-- Location: LCCOMB_X32_Y14_N0
\card_gen|lfsr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|lfsr~0_combout\ = \card_gen|lfsr\(13) $ (\card_gen|lfsr\(12) $ (\card_gen|lfsr\(15) $ (!\card_gen|lfsr\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(13),
	datab => \card_gen|lfsr\(12),
	datac => \card_gen|lfsr\(15),
	datad => \card_gen|lfsr\(10),
	combout => \card_gen|lfsr~0_combout\);

-- Location: LCFF_X32_Y14_N1
\card_gen|lfsr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \card_gen|lfsr~0_combout\,
	sclr => \ALT_INV_KEY~combout\(0),
	ena => \card_gen|lfsr[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|lfsr\(0));

-- Location: LCCOMB_X37_Y13_N0
\card_gen|lfsr~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|lfsr~16_combout\ = (\card_gen|lfsr\(0)) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY~combout\(0),
	datac => \card_gen|lfsr\(0),
	combout => \card_gen|lfsr~16_combout\);

-- Location: LCFF_X37_Y13_N1
\card_gen|lfsr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \card_gen|lfsr~16_combout\,
	ena => \card_gen|lfsr[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|lfsr\(1));

-- Location: LCCOMB_X37_Y13_N10
\card_gen|lfsr~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|lfsr~15_combout\ = (\card_gen|lfsr\(1)) # (!\KEY~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY~combout\(0),
	datad => \card_gen|lfsr\(1),
	combout => \card_gen|lfsr~15_combout\);

-- Location: LCFF_X37_Y13_N11
\card_gen|lfsr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \card_gen|lfsr~15_combout\,
	ena => \card_gen|lfsr[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|lfsr\(2));

-- Location: LCCOMB_X40_Y15_N28
\card_gen|Mod0|auto_generated|divider|divider|StageOut[208]~393\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[208]~393_combout\ = (\card_gen|lfsr\(2) & \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \card_gen|lfsr\(2),
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_4~28_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[208]~393_combout\);

-- Location: LCCOMB_X39_Y16_N6
\card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~408\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~408_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_5~2_combout\ & !\card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_gen|Mod0|auto_generated|divider|divider|op_5~2_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~408_combout\);

-- Location: LCCOMB_X40_Y15_N14
\card_gen|Mod0|auto_generated|divider|divider|StageOut[242]~414\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[242]~414_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_6~32_combout\ & ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~513_combout\) # 
-- ((\card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~408_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_6~32_combout\ & (((\card_gen|Mod0|auto_generated|divider|divider|op_6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~513_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[225]~408_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|op_6~4_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_6~32_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[242]~414_combout\);

-- Location: LCCOMB_X40_Y15_N0
\card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~409\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~409_combout\ = (\card_gen|lfsr\(1) & \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|lfsr\(1),
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_5~30_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~409_combout\);

-- Location: LCCOMB_X40_Y15_N20
\card_gen|Mod0|auto_generated|divider|divider|StageOut[241]~413\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Mod0|auto_generated|divider|divider|StageOut[241]~413_combout\ = (\card_gen|Mod0|auto_generated|divider|divider|op_6~32_combout\ & (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~409_combout\) # 
-- (\card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~410_combout\)))) # (!\card_gen|Mod0|auto_generated|divider|divider|op_6~32_combout\ & (\card_gen|Mod0|auto_generated|divider|divider|op_6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|op_6~2_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~409_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[224]~410_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|op_6~32_combout\,
	combout => \card_gen|Mod0|auto_generated|divider|divider|StageOut[241]~413_combout\);

-- Location: LCCOMB_X40_Y15_N8
\card_gen|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_gen|Add0~8_combout\ = \card_gen|Mod0|auto_generated|divider|divider|StageOut[243]~412_combout\ $ (((\card_gen|Mod0|auto_generated|divider|divider|StageOut[242]~414_combout\ & (\card_gen|Mod0|auto_generated|divider|divider|StageOut[241]~413_combout\ 
-- & !\card_gen|Mod0|auto_generated|divider|divider|StageOut[240]~411_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|Mod0|auto_generated|divider|divider|StageOut[243]~412_combout\,
	datab => \card_gen|Mod0|auto_generated|divider|divider|StageOut[242]~414_combout\,
	datac => \card_gen|Mod0|auto_generated|divider|divider|StageOut[241]~413_combout\,
	datad => \card_gen|Mod0|auto_generated|divider|divider|StageOut[240]~411_combout\,
	combout => \card_gen|Add0~8_combout\);

-- Location: LCFF_X40_Y15_N9
\card_gen|random_number[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \card_gen|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \card_gen|random_number\(3));

-- Location: LCCOMB_X40_Y11_N18
\temp_card_val~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp_card_val~2_combout\ = (\SW~combout\(5) & (\card_gen|random_number\(2) & ((!\card_gen|random_number\(3))))) # (!\SW~combout\(5) & (((\SW~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_gen|random_number\(2),
	datab => \SW~combout\(2),
	datac => \SW~combout\(5),
	datad => \card_gen|random_number\(3),
	combout => \temp_card_val~2_combout\);

-- Location: LCCOMB_X46_Y11_N10
\temp_card_val~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \temp_card_val~7_combout\ = (\temp_card_val~1_combout\) # ((!\temp_card_val~2_combout\ & (!\temp_card_val~3_combout\ & \temp_card_val~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_card_val~1_combout\,
	datab => \temp_card_val~2_combout\,
	datac => \temp_card_val~3_combout\,
	datad => \temp_card_val~0_combout\,
	combout => \temp_card_val~7_combout\);

-- Location: LCCOMB_X44_Y10_N0
\Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\state.SD_recieve1~regout\ & (\Add8~2_combout\ $ (((\process_0~9_combout\))))) # (!\state.SD_recieve1~regout\ & (((\Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datab => \Add6~2_combout\,
	datac => \state.SD_recieve1~regout\,
	datad => \process_0~9_combout\,
	combout => \Selector44~0_combout\);

-- Location: LCFF_X44_Y10_N1
\D_sum[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector44~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	ena => \HEX1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => D_sum(1));

-- Location: LCCOMB_X46_Y10_N18
\Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (D_sum(4) & (!D_sum(3) & (D_sum(1) $ (D_sum(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(4),
	datab => D_sum(1),
	datac => D_sum(2),
	datad => D_sum(3),
	combout => \Selector24~0_combout\);

-- Location: LCCOMB_X44_Y11_N30
\LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan8~0_combout\ = (D_sum(1) & (!D_sum(0) & (P_sum(1) & P_sum(0)))) # (!D_sum(1) & ((P_sum(1)) # ((!D_sum(0) & P_sum(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(0),
	datab => D_sum(1),
	datac => P_sum(1),
	datad => P_sum(0),
	combout => \LessThan8~0_combout\);

-- Location: LCCOMB_X44_Y11_N0
\LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan8~1_combout\ = (D_sum(2) & (\LessThan8~0_combout\ & P_sum(2))) # (!D_sum(2) & ((\LessThan8~0_combout\) # (P_sum(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(2),
	datab => \LessThan8~0_combout\,
	datac => P_sum(2),
	combout => \LessThan8~1_combout\);

-- Location: LCCOMB_X46_Y11_N4
\LessThan8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan8~2_combout\ = (D_sum(3) & (P_sum(3) & \LessThan8~1_combout\)) # (!D_sum(3) & ((P_sum(3)) # (\LessThan8~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_sum(3),
	datac => P_sum(3),
	datad => \LessThan8~1_combout\,
	combout => \LessThan8~2_combout\);

-- Location: LCCOMB_X46_Y10_N28
\Selector24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~1_combout\ = (\Selector24~0_combout\ & ((D_sum(4) & ((!P_sum(4)) # (!\LessThan8~2_combout\))) # (!D_sum(4) & (!\LessThan8~2_combout\ & !P_sum(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(4),
	datab => \Selector24~0_combout\,
	datac => \LessThan8~2_combout\,
	datad => P_sum(4),
	combout => \Selector24~1_combout\);

-- Location: LCCOMB_X47_Y10_N18
\Selector24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector24~3_combout\ = (\state.S_draw~regout\) # ((\Selector24~2_combout\ & (\Selector24~1_combout\ & !\LessThan9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector24~2_combout\,
	datab => \Selector24~1_combout\,
	datac => \state.S_draw~regout\,
	datad => \LessThan9~3_combout\,
	combout => \Selector24~3_combout\);

-- Location: LCFF_X47_Y10_N19
\state.S_draw\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector24~3_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S_draw~regout\);

-- Location: LCCOMB_X47_Y10_N28
\LEDR~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LEDR~0_combout\ = (\state.S_draw~regout\) # (\state.S_lose~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.S_draw~regout\,
	datad => \state.S_lose~regout\,
	combout => \LEDR~0_combout\);

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1),
	combout => \KEY~combout\(1));

-- Location: LCCOMB_X46_Y11_N22
\Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\temp_card_val~2_combout\ & (!\temp_card_val~1_combout\ & (\temp_card_val~3_combout\ $ (!\temp_card_val~0_combout\)))) # (!\temp_card_val~2_combout\ & (\temp_card_val~0_combout\ & (\temp_card_val~1_combout\ $ 
-- (!\temp_card_val~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_card_val~1_combout\,
	datab => \temp_card_val~2_combout\,
	datac => \temp_card_val~3_combout\,
	datad => \temp_card_val~0_combout\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X46_Y10_N20
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\card_val_display[1]~0_combout\ & (\card_val_display[1]~3_combout\ & (!\state.SD_rec~regout\ & !\Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_val_display[1]~0_combout\,
	datab => \card_val_display[1]~3_combout\,
	datac => \state.SD_rec~regout\,
	datad => \Mux6~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X48_Y10_N2
\card_val_display[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_val_display[0]~2_combout\ = (!\state.S_decision~regout\ & (\Selector25~0_combout\ & (!\state.SP_rec~regout\ & !\state.SP_rec1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S_decision~regout\,
	datab => \Selector25~0_combout\,
	datac => \state.SP_rec~regout\,
	datad => \state.SP_rec1~regout\,
	combout => \card_val_display[0]~2_combout\);

-- Location: LCCOMB_X46_Y11_N6
\Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~1_combout\ = ((!D_sum(2) & (!D_sum(3) & !D_sum(1)))) # (!D_sum(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(2),
	datab => D_sum(3),
	datac => D_sum(4),
	datad => D_sum(1),
	combout => \Selector18~1_combout\);

-- Location: LCCOMB_X47_Y10_N14
\Selector18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector18~2_combout\ = (\Selector18~0_combout\) # ((\state.SD_recieve~regout\) # ((\state.SD_result~regout\ & \Selector18~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector18~0_combout\,
	datab => \state.SD_result~regout\,
	datac => \Selector18~1_combout\,
	datad => \state.SD_recieve~regout\,
	combout => \Selector18~2_combout\);

-- Location: LCFF_X47_Y10_N15
\state.SD_rec1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector18~2_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.SD_rec1~regout\);

-- Location: LCCOMB_X48_Y10_N30
\Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector19~0_combout\ = (\state.SD_rec1~regout\) # ((\state.SD_wait1~regout\ & ((\state.S_lose~regout\) # (!\card_val_display[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SD_rec1~regout\,
	datab => \card_val_display[1]~3_combout\,
	datac => \state.SD_wait1~regout\,
	datad => \state.S_lose~regout\,
	combout => \Selector19~0_combout\);

-- Location: LCFF_X49_Y10_N17
\state.SD_wait1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	sdata => \Selector19~0_combout\,
	aclr => \ALT_INV_KEY~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.SD_wait1~regout\);

-- Location: LCCOMB_X49_Y10_N16
\card_val_display[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_val_display[0]~1_combout\ = (!\state.SD_result~regout\ & (!\state.SD_rec1~regout\ & (!\state.SD_wait1~regout\ & !\state.SD_wait~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SD_result~regout\,
	datab => \state.SD_rec1~regout\,
	datac => \state.SD_wait1~regout\,
	datad => \state.SD_wait~regout\,
	combout => \card_val_display[0]~1_combout\);

-- Location: LCCOMB_X45_Y10_N24
\card_val_display[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_val_display[0]~4_combout\ = (\card_val_display[0]~2_combout\ & (\KEY~combout\(0) & \card_val_display[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \card_val_display[0]~2_combout\,
	datac => \KEY~combout\(0),
	datad => \card_val_display[0]~1_combout\,
	combout => \card_val_display[0]~4_combout\);

-- Location: LCFF_X46_Y10_N21
\card_val_display[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector6~0_combout\,
	ena => \card_val_display[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_val_display(0));

-- Location: LCCOMB_X45_Y10_N0
\card_val_display[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \card_val_display[1]~0_combout\ = (\state.I~regout\ & !\state.S_lose~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.I~regout\,
	datad => \state.S_lose~regout\,
	combout => \card_val_display[1]~0_combout\);

-- Location: LCCOMB_X46_Y10_N22
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\Mux5~0_combout\ & (!\state.SD_rec~regout\ & (\card_val_display[1]~3_combout\ & \card_val_display[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~0_combout\,
	datab => \state.SD_rec~regout\,
	datac => \card_val_display[1]~3_combout\,
	datad => \card_val_display[1]~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCFF_X46_Y10_N23
\card_val_display[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector5~0_combout\,
	ena => \card_val_display[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_val_display(1));

-- Location: LCCOMB_X47_Y11_N26
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\Mux4~0_combout\ & (\card_val_display[1]~0_combout\ & (\card_val_display[1]~3_combout\ & !\state.SD_rec~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~0_combout\,
	datab => \card_val_display[1]~0_combout\,
	datac => \card_val_display[1]~3_combout\,
	datad => \state.SD_rec~regout\,
	combout => \Selector4~0_combout\);

-- Location: LCFF_X46_Y10_N17
\card_val_display[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	sdata => \Selector4~0_combout\,
	sload => VCC,
	ena => \card_val_display[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_val_display(2));

-- Location: LCCOMB_X43_Y10_N10
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\temp_card_val~0_combout\ & (\temp_card_val~1_combout\ $ ((!\temp_card_val~2_combout\)))) # (!\temp_card_val~0_combout\ & ((\temp_card_val~1_combout\ & (!\temp_card_val~2_combout\ & \temp_card_val~3_combout\)) # 
-- (!\temp_card_val~1_combout\ & (\temp_card_val~2_combout\ & !\temp_card_val~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_card_val~1_combout\,
	datab => \temp_card_val~2_combout\,
	datac => \temp_card_val~0_combout\,
	datad => \temp_card_val~3_combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X46_Y10_N6
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\card_val_display[1]~0_combout\ & (\card_val_display[1]~3_combout\ & (!\state.SD_rec~regout\ & !\Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_val_display[1]~0_combout\,
	datab => \card_val_display[1]~3_combout\,
	datac => \state.SD_rec~regout\,
	datad => \Mux3~0_combout\,
	combout => \Selector3~0_combout\);

-- Location: LCFF_X46_Y10_N7
\card_val_display[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector3~0_combout\,
	ena => \card_val_display[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_val_display(3));

-- Location: LCCOMB_X46_Y11_N8
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\temp_card_val~1_combout\ & (((!\temp_card_val~3_combout\ & \temp_card_val~0_combout\)))) # (!\temp_card_val~1_combout\ & ((\temp_card_val~2_combout\ & (!\temp_card_val~3_combout\)) # (!\temp_card_val~2_combout\ & 
-- ((\temp_card_val~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_card_val~1_combout\,
	datab => \temp_card_val~2_combout\,
	datac => \temp_card_val~3_combout\,
	datad => \temp_card_val~0_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X46_Y10_N0
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\card_val_display[1]~0_combout\ & (\card_val_display[1]~3_combout\ & (!\state.SD_rec~regout\ & !\Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_val_display[1]~0_combout\,
	datab => \card_val_display[1]~3_combout\,
	datac => \state.SD_rec~regout\,
	datad => \Mux2~0_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCFF_X46_Y10_N1
\card_val_display[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector2~0_combout\,
	ena => \card_val_display[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_val_display(4));

-- Location: LCCOMB_X46_Y11_N2
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\temp_card_val~1_combout\ & (!\temp_card_val~3_combout\ & ((\temp_card_val~0_combout\) # (!\temp_card_val~2_combout\)))) # (!\temp_card_val~1_combout\ & (\temp_card_val~0_combout\ & (\temp_card_val~2_combout\ $ 
-- (!\temp_card_val~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_card_val~1_combout\,
	datab => \temp_card_val~2_combout\,
	datac => \temp_card_val~3_combout\,
	datad => \temp_card_val~0_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X46_Y10_N10
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\card_val_display[1]~0_combout\ & (\card_val_display[1]~3_combout\ & (!\state.SD_rec~regout\ & !\Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_val_display[1]~0_combout\,
	datab => \card_val_display[1]~3_combout\,
	datac => \state.SD_rec~regout\,
	datad => \Mux1~0_combout\,
	combout => \Selector1~0_combout\);

-- Location: LCFF_X46_Y10_N11
\card_val_display[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector1~0_combout\,
	ena => \card_val_display[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_val_display(5));

-- Location: LCCOMB_X46_Y11_N20
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\temp_card_val~0_combout\ & ((\temp_card_val~3_combout\) # (\temp_card_val~1_combout\ $ (\temp_card_val~2_combout\)))) # (!\temp_card_val~0_combout\ & ((\temp_card_val~1_combout\) # (\temp_card_val~2_combout\ $ 
-- (\temp_card_val~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \temp_card_val~1_combout\,
	datab => \temp_card_val~2_combout\,
	datac => \temp_card_val~3_combout\,
	datad => \temp_card_val~0_combout\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X46_Y10_N12
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\card_val_display[1]~0_combout\ & (!\state.SD_rec~regout\ & (\card_val_display[1]~3_combout\ & \Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_val_display[1]~0_combout\,
	datab => \state.SD_rec~regout\,
	datac => \card_val_display[1]~3_combout\,
	datad => \Mux0~0_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCFF_X46_Y10_N13
\card_val_display[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_KEY~combout\(1),
	datain => \Selector0~0_combout\,
	ena => \card_val_display[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => card_val_display(6));

-- Location: LCCOMB_X45_Y10_N26
\WideOr27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr27~0_combout\ = (!\state.SD_recieve~regout\ & (!\state.SD_recieve1~regout\ & (!\state.SD_rec~regout\ & \card_val_display[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SD_recieve~regout\,
	datab => \state.SD_recieve1~regout\,
	datac => \state.SD_rec~regout\,
	datad => \card_val_display[0]~1_combout\,
	combout => \WideOr27~0_combout\);

-- Location: LCCOMB_X45_Y10_N4
WideOr30 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr30~combout\ = ((\state.S_lose~regout\) # (!\WideOr27~0_combout\)) # (!\state.I~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.I~regout\,
	datab => \WideOr27~0_combout\,
	datad => \state.S_lose~regout\,
	combout => \WideOr30~combout\);

-- Location: LCCOMB_X45_Y10_N8
WideOr29 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr29~combout\ = (\state.S_draw~regout\) # (!\WideOr27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr27~0_combout\,
	datad => \state.S_draw~regout\,
	combout => \WideOr29~combout\);

-- Location: LCCOMB_X45_Y10_N12
WideOr28 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr28~combout\ = ((\state.S_win~regout\) # ((\WideOr28~0_combout\) # (!\card_val_display[0]~2_combout\))) # (!\state.I~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.I~regout\,
	datab => \state.S_win~regout\,
	datac => \card_val_display[0]~2_combout\,
	datad => \WideOr28~0_combout\,
	combout => \WideOr28~combout\);

-- Location: LCCOMB_X45_Y10_N2
WideOr27 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr27~combout\ = (!\state.I~regout\) # (!\WideOr27~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideOr27~0_combout\,
	datad => \state.I~regout\,
	combout => \WideOr27~combout\);

-- Location: LCCOMB_X45_Y10_N20
WideOr26 : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr26~combout\ = ((\state.S_draw~regout\) # (\state.S_lose~regout\)) # (!\state.I~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.I~regout\,
	datab => \state.S_draw~regout\,
	datad => \state.S_lose~regout\,
	combout => \WideOr26~combout\);

-- Location: LCCOMB_X44_Y13_N4
\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = D_sum(2) $ (VCC)
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(D_sum(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(2),
	datad => VCC,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X44_Y13_N10
\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X45_Y13_N30
\Div1|auto_generated|divider|divider|StageOut[18]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[18]~0_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((D_sum(4)))) # (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (\Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datac => D_sum(4),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LCCOMB_X45_Y13_N8
\Div1|auto_generated|divider|divider|StageOut[17]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[17]~1_combout\ = (D_sum(3) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => D_sum(3),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[17]~1_combout\);

-- Location: LCCOMB_X45_Y13_N26
\Div1|auto_generated|divider|divider|StageOut[16]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[16]~3_combout\ = (\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (D_sum(2))) # (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => D_sum(2),
	datac => \Div1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[16]~3_combout\);

-- Location: LCCOMB_X45_Y13_N4
\Div1|auto_generated|divider|divider|StageOut[15]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|StageOut[15]~4_combout\ = (D_sum(1) & \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => D_sum(1),
	datad => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div1|auto_generated|divider|divider|StageOut[15]~4_combout\);

-- Location: LCCOMB_X45_Y13_N28
\LessThan11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan11~0_combout\ = ((!D_sum(1) & !D_sum(2))) # (!D_sum(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(1),
	datab => D_sum(2),
	datac => D_sum(3),
	combout => \LessThan11~0_combout\);

-- Location: LCCOMB_X45_Y13_N10
\Div1|auto_generated|divider|divider|op_3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|op_3~1_cout\ = CARRY((D_sum(4)) # (!\LessThan11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(4),
	datab => \LessThan11~0_combout\,
	datad => VCC,
	cout => \Div1|auto_generated|divider|divider|op_3~1_cout\);

-- Location: LCCOMB_X45_Y13_N12
\Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~1_cout\ = CARRY((\LessThan11~1_combout\ & ((!\Div1|auto_generated|divider|divider|op_3~1_cout\) # (!D_sum(0)))) # (!\LessThan11~1_combout\ & (!D_sum(0) & 
-- !\Div1|auto_generated|divider|divider|op_3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~1_combout\,
	datab => D_sum(0),
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|op_3~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~1_cout\);

-- Location: LCCOMB_X45_Y13_N14
\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~3_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~1_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[15]~5_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[15]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[15]~5_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[15]~4_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[0]~1_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~3_cout\);

-- Location: LCCOMB_X45_Y13_N16
\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~5_cout\ = CARRY((\LessThan11~1_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~3_cout\) # (!\Div1|auto_generated|divider|divider|StageOut[16]~3_combout\))) # 
-- (!\LessThan11~1_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[16]~3_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~1_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[16]~3_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[1]~3_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~5_cout\);

-- Location: LCCOMB_X45_Y13_N18
\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~7_cout\ = CARRY((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~5_cout\ & ((\Div1|auto_generated|divider|divider|StageOut[17]~2_combout\) # 
-- (\Div1|auto_generated|divider|divider|StageOut[17]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|StageOut[17]~2_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[17]~1_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[2]~5_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~7_cout\);

-- Location: LCCOMB_X45_Y13_N20
\Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ = CARRY((\LessThan11~1_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~7_cout\) # (!\Div1|auto_generated|divider|divider|StageOut[18]~0_combout\))) # 
-- (!\LessThan11~1_combout\ & (!\Div1|auto_generated|divider|divider|StageOut[18]~0_combout\ & !\Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan11~1_combout\,
	datab => \Div1|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datad => VCC,
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[3]~7_cout\,
	cout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\);

-- Location: LCCOMB_X45_Y13_N22
\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div1|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\,
	combout => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X45_Y10_N22
\Mux27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # ((!D_sum(4) & \LessThan11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => D_sum(4),
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \LessThan11~0_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X46_Y12_N22
\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (P_sum(3) & (\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!P_sum(3) & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!P_sum(3) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => P_sum(3),
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X46_Y12_N26
\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X44_Y14_N8
\LessThan10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan10~0_combout\ = ((!P_sum(2) & !P_sum(1))) # (!P_sum(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(2),
	datac => P_sum(1),
	datad => P_sum(3),
	combout => \LessThan10~0_combout\);

-- Location: LCCOMB_X45_Y14_N16
\Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # ((!P_sum(4) & \LessThan10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => P_sum(4),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \LessThan10~0_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X46_Y10_N26
\Selector48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (((\state.SP_recieve~regout\) # (\state.SP_recieve1~regout\)) # (!\card_val_display[1]~3_combout\)) # (!\card_val_display[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \card_val_display[0]~2_combout\,
	datab => \card_val_display[1]~3_combout\,
	datac => \state.SP_recieve~regout\,
	datad => \state.SP_recieve1~regout\,
	combout => \Selector48~0_combout\);

-- Location: LCCOMB_X45_Y10_N28
\Selector52~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~0_combout\ = ((\Selector48~0_combout\ & ((\Mux13~0_combout\))) # (!\Selector48~0_combout\ & (\Mux27~0_combout\))) # (!\state.I~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.I~regout\,
	datab => \Mux27~0_combout\,
	datac => \Mux13~0_combout\,
	datad => \Selector48~0_combout\,
	combout => \Selector52~0_combout\);

-- Location: LCCOMB_X45_Y14_N22
\Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((P_sum(4)) # (!\LessThan10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => P_sum(4),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \LessThan10~0_combout\,
	combout => \Mux11~0_combout\);

-- Location: LCCOMB_X45_Y13_N2
\Mux25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ & ((D_sum(4)) # (!\LessThan11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => D_sum(4),
	datad => \LessThan11~0_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X45_Y14_N28
\Selector50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = ((\Selector48~0_combout\ & (\Mux11~0_combout\)) # (!\Selector48~0_combout\ & ((\Mux25~0_combout\)))) # (!\state.I~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.I~regout\,
	datab => \Mux11~0_combout\,
	datac => \Mux25~0_combout\,
	datad => \Selector48~0_combout\,
	combout => \Selector50~0_combout\);

-- Location: LCCOMB_X46_Y12_N4
\LessThan10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan10~1_combout\ = (!P_sum(4) & (((!P_sum(2) & !P_sum(1))) # (!P_sum(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(2),
	datab => P_sum(3),
	datac => P_sum(1),
	datad => P_sum(4),
	combout => \LessThan10~1_combout\);

-- Location: LCCOMB_X46_Y12_N6
\Div0|auto_generated|divider|divider|StageOut[17]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\ = (\Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\);

-- Location: LCCOMB_X45_Y14_N14
\Div0|auto_generated|divider|divider|StageOut[15]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|StageOut[15]~5_combout\ = (P_sum(1) & !\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(1),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Div0|auto_generated|divider|divider|StageOut[15]~5_combout\);

-- Location: LCCOMB_X45_Y14_N0
\Div0|auto_generated|divider|divider|op_3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|op_3~1_cout\ = CARRY((P_sum(4)) # (!\LessThan10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan10~0_combout\,
	datab => P_sum(4),
	datad => VCC,
	cout => \Div0|auto_generated|divider|divider|op_3~1_cout\);

-- Location: LCCOMB_X45_Y14_N2
\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1_cout\ = CARRY((P_sum(0) & (\LessThan10~1_combout\ & !\Div0|auto_generated|divider|divider|op_3~1_cout\)) # (!P_sum(0) & ((\LessThan10~1_combout\) # 
-- (!\Div0|auto_generated|divider|divider|op_3~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(0),
	datab => \LessThan10~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|op_3~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1_cout\);

-- Location: LCCOMB_X45_Y14_N4
\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[15]~4_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[15]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[15]~4_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[15]~5_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[0]~1_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3_cout\);

-- Location: LCCOMB_X45_Y14_N6
\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[16]~3_combout\ & (\LessThan10~1_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[16]~3_combout\ & ((\LessThan10~1_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[16]~3_combout\,
	datab => \LessThan10~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~3_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5_cout\);

-- Location: LCCOMB_X45_Y14_N8
\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7_cout\ = CARRY((!\Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5_cout\ & ((\Div0|auto_generated|divider|divider|StageOut[17]~1_combout\) # 
-- (\Div0|auto_generated|divider|divider|StageOut[17]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[17]~1_combout\,
	datab => \Div0|auto_generated|divider|divider|StageOut[17]~2_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~5_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7_cout\);

-- Location: LCCOMB_X45_Y14_N10
\Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\ = CARRY((\Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & (\LessThan10~1_combout\ & !\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7_cout\)) # 
-- (!\Div0|auto_generated|divider|divider|StageOut[18]~0_combout\ & ((\LessThan10~1_combout\) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datab => \LessThan10~1_combout\,
	datad => VCC,
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~7_cout\,
	cout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\);

-- Location: LCCOMB_X45_Y14_N12
\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\ = \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~9_cout\,
	combout => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\);

-- Location: LCCOMB_X45_Y10_N6
\Selector48~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector48~1_combout\ = ((\Selector48~0_combout\ & (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\)) # (!\Selector48~0_combout\ & ((!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\)))) # 
-- (!\state.I~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.I~regout\,
	datab => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datad => \Selector48~0_combout\,
	combout => \Selector48~1_combout\);

-- Location: LCCOMB_X45_Y14_N30
\Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = ((!\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((P_sum(4)) # (!\LessThan10~0_combout\)))) # (!\Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datab => P_sum(4),
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \LessThan10~0_combout\,
	combout => \Mux8~0_combout\);

-- Location: LCCOMB_X45_Y13_N0
\Mux22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = ((!\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((D_sum(4)) # (!\LessThan11~0_combout\)))) # (!\Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Div1|auto_generated|divider|divider|add_sub_4_result_int[5]~10_combout\,
	datac => D_sum(4),
	datad => \LessThan11~0_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X45_Y14_N24
\Selector47~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = ((\Selector48~0_combout\ & (\Mux8~0_combout\)) # (!\Selector48~0_combout\ & ((\Mux22~0_combout\)))) # (!\state.I~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.I~regout\,
	datab => \Mux8~0_combout\,
	datac => \Mux22~0_combout\,
	datad => \Selector48~0_combout\,
	combout => \Selector47~0_combout\);

-- Location: LCCOMB_X45_Y14_N18
\Selector46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = ((\Selector48~0_combout\ & ((\LessThan10~1_combout\) # (\Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))) # (!\state.I~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.I~regout\,
	datab => \LessThan10~1_combout\,
	datac => \Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \Selector48~0_combout\,
	combout => \Selector46~0_combout\);

-- Location: LCCOMB_X44_Y13_N20
\LessThan11~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan11~1_combout\ = (!D_sum(4) & (((!D_sum(2) & !D_sum(1))) # (!D_sum(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(2),
	datab => D_sum(3),
	datac => D_sum(4),
	datad => D_sum(1),
	combout => \LessThan11~1_combout\);

-- Location: LCCOMB_X44_Y13_N0
\Selector46~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~1_combout\ = (\Selector46~0_combout\) # ((!\Selector48~0_combout\ & ((\Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\) # (\LessThan11~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Div1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datab => \Selector46~0_combout\,
	datac => \Selector48~0_combout\,
	datad => \LessThan11~1_combout\,
	combout => \Selector46~1_combout\);

-- Location: LCCOMB_X44_Y11_N22
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (P_sum(3) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!P_sum(3) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!P_sum(3) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(3),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X44_Y11_N24
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (P_sum(4) & (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!P_sum(4) & (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((P_sum(4) & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => P_sum(4),
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X44_Y11_N26
\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X44_Y12_N4
\Mod0|auto_generated|divider|divider|StageOut[18]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ = (!\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\);

-- Location: LCCOMB_X44_Y11_N4
\Mod0|auto_generated|divider|divider|StageOut[17]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\);

-- Location: LCCOMB_X44_Y14_N14
\Mod0|auto_generated|divider|divider|StageOut[16]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & P_sum(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => P_sum(2),
	combout => \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LCCOMB_X44_Y14_N30
\Mod0|auto_generated|divider|divider|StageOut[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & P_sum(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => P_sum(1),
	combout => \Mod0|auto_generated|divider|divider|StageOut[15]~0_combout\);

-- Location: LCCOMB_X44_Y14_N22
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X44_Y14_N26
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\)))
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\ & 
-- !\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datad => VCC,
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X44_Y14_N28
\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X44_Y14_N0
\Mod0|auto_generated|divider|divider|StageOut[22]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[16]~6_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\);

-- Location: LCCOMB_X44_Y14_N4
\Mod0|auto_generated|divider|divider|StageOut[17]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & P_sum(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => P_sum(3),
	combout => \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\);

-- Location: LCCOMB_X44_Y14_N18
\Mod0|auto_generated|divider|divider|StageOut[23]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\) # 
-- (\Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[17]~5_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[17]~4_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\);

-- Location: LCCOMB_X44_Y16_N14
\Mux20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ $ (!P_sum(0))))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (P_sum(0) & (\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ $ (!\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => P_sum(0),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X44_Y14_N10
\Mod0|auto_generated|divider|divider|StageOut[24]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\ = (\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\) # 
-- ((\Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\)))) # (!\Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[18]~2_combout\,
	datab => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datad => \Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\);

-- Location: LCCOMB_X44_Y16_N8
\Selector59~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector59~3_combout\ = (\Selector48~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\ & (\Selector59~2_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\ & ((\Mux20~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector59~2_combout\,
	datab => \Selector48~0_combout\,
	datac => \Mux20~0_combout\,
	datad => \Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\,
	combout => \Selector59~3_combout\);

-- Location: LCCOMB_X44_Y13_N24
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = D_sum(2) $ (VCC)
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(D_sum(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(2),
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X44_Y13_N26
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (D_sum(3) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!D_sum(3) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!D_sum(3) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => D_sum(3),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X44_Y13_N28
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (D_sum(4) & (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!D_sum(4) & (!\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((D_sum(4) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(4),
	datad => VCC,
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X44_Y13_N30
\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X44_Y13_N18
\Mod1|auto_generated|divider|divider|StageOut[18]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~2_combout\ = (D_sum(4) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => D_sum(4),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~2_combout\);

-- Location: LCCOMB_X44_Y13_N12
\Mod1|auto_generated|divider|divider|StageOut[17]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[17]~5_combout\);

-- Location: LCCOMB_X44_Y13_N22
\Mod1|auto_generated|divider|divider|StageOut[16]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\ = (D_sum(2) & \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => D_sum(2),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\);

-- Location: LCCOMB_X43_Y13_N30
\Mod1|auto_generated|divider|divider|StageOut[15]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[15]~1_combout\ = (D_sum(1) & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => D_sum(1),
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[15]~1_combout\);

-- Location: LCCOMB_X43_Y13_N20
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[15]~1_combout\)))
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[15]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[15]~0_combout\,
	datab => \Mod1|auto_generated|divider|divider|StageOut[15]~1_combout\,
	datad => VCC,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X43_Y13_N28
\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X44_Y13_N16
\Mod1|auto_generated|divider|divider|StageOut[16]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[16]~7_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[16]~7_combout\);

-- Location: LCCOMB_X43_Y13_N10
\Mod1|auto_generated|divider|divider|StageOut[22]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[16]~7_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[16]~7_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[16]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\);

-- Location: LCCOMB_X43_Y13_N8
\Mod1|auto_generated|divider|divider|StageOut[21]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((D_sum(1)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => D_sum(1),
	combout => \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\);

-- Location: LCCOMB_X42_Y16_N22
\Mux34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux34~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\ & (D_sum(0) & (\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\ $ (\Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\)))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\ & (D_sum(0) $ (\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => D_sum(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \Mux34~0_combout\);

-- Location: LCCOMB_X42_Y16_N8
\Selector59~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector59~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\) # ((D_sum(0)) # ((\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => D_sum(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \Selector59~0_combout\);

-- Location: LCCOMB_X42_Y16_N24
\Selector59~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector59~1_combout\ = (!\Selector48~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\ & ((\Selector59~0_combout\))) # (!\Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\ & (\Mux34~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\,
	datab => \Mux34~0_combout\,
	datac => \Selector59~0_combout\,
	datad => \Selector48~0_combout\,
	combout => \Selector59~1_combout\);

-- Location: LCCOMB_X40_Y16_N28
\Selector59~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector59~4_combout\ = (\Selector59~3_combout\) # ((\Selector59~1_combout\) # (!\state.I~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector59~3_combout\,
	datac => \Selector59~1_combout\,
	datad => \state.I~regout\,
	combout => \Selector59~4_combout\);

-- Location: LCCOMB_X44_Y16_N30
\Mux19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & P_sum(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => P_sum(0),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X43_Y16_N2
\Selector58~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector58~1_combout\ = (\Selector48~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\ & ((\Mux19~0_combout\))) # (!\Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\ & (\Mux19~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~1_combout\,
	datab => \Mux19~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\,
	datad => \Selector48~0_combout\,
	combout => \Selector58~1_combout\);

-- Location: LCCOMB_X42_Y16_N14
\Mux33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux33~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\) # ((D_sum(0) & \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => D_sum(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \Mux33~0_combout\);

-- Location: LCCOMB_X43_Y13_N16
\Mod1|auto_generated|divider|divider|StageOut[18]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[18]~3_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \Mod1|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[18]~3_combout\);

-- Location: LCCOMB_X43_Y13_N2
\Mod1|auto_generated|divider|divider|StageOut[24]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\ = (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (((\Mod1|auto_generated|divider|divider|StageOut[18]~3_combout\) # 
-- (\Mod1|auto_generated|divider|divider|StageOut[18]~2_combout\)))) # (!\Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datab => \Mod1|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \Mod1|auto_generated|divider|divider|StageOut[18]~3_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[18]~2_combout\,
	combout => \Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\);

-- Location: LCCOMB_X43_Y16_N8
\Selector58~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector58~0_combout\ = (!\Selector48~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\ & ((\Mux33~0_combout\))) # (!\Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\ & (\Mux33~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux33~1_combout\,
	datab => \Selector48~0_combout\,
	datac => \Mux33~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\,
	combout => \Selector58~0_combout\);

-- Location: LCCOMB_X43_Y16_N28
\Selector58~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector58~2_combout\ = (\Selector58~1_combout\) # ((\Selector58~0_combout\) # (!\state.I~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector58~1_combout\,
	datac => \Selector58~0_combout\,
	datad => \state.I~regout\,
	combout => \Selector58~2_combout\);

-- Location: LCCOMB_X42_Y16_N18
\Mux32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\) # (!D_sum(0))))) # 
-- (!\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\ & (!D_sum(0) & (!\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\ & \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => D_sum(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \Mux32~0_combout\);

-- Location: LCCOMB_X42_Y16_N20
\Mux32~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux32~1_combout\ = (!\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\ & (D_sum(0) $ (\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => D_sum(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \Mux32~1_combout\);

-- Location: LCCOMB_X42_Y16_N10
\Selector57~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector57~0_combout\ = (!\Selector48~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\ & ((!\Mux32~1_combout\))) # (!\Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\ & (\Mux32~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\,
	datab => \Mux32~0_combout\,
	datac => \Mux32~1_combout\,
	datad => \Selector48~0_combout\,
	combout => \Selector57~0_combout\);

-- Location: LCCOMB_X44_Y16_N24
\Mux18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ $ (P_sum(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => P_sum(0),
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X43_Y16_N18
\Selector57~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector57~1_combout\ = (\Selector48~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\ & ((!\Mux18~1_combout\))) # (!\Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\ & (\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~0_combout\,
	datab => \Mux18~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\,
	datad => \Selector48~0_combout\,
	combout => \Selector57~1_combout\);

-- Location: LCCOMB_X43_Y16_N12
\Selector57~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector57~2_combout\ = (\Selector57~0_combout\) # ((\Selector57~1_combout\) # (!\state.I~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector57~0_combout\,
	datab => \Selector57~1_combout\,
	datad => \state.I~regout\,
	combout => \Selector57~2_combout\);

-- Location: LCCOMB_X44_Y16_N22
\Mux17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = (P_sum(0) & (\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ $ ((!\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\)))) # (!P_sum(0) & ((\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & 
-- (!\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & 
-- (\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & !\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => P_sum(0),
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X44_Y16_N20
\Mux17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (!\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ $ (((\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\) # (P_sum(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => P_sum(0),
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X44_Y16_N6
\Selector56~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector56~1_combout\ = (\Selector48~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\ & ((!\Mux17~1_combout\))) # (!\Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\ & (\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\,
	datab => \Mux17~0_combout\,
	datac => \Mux17~1_combout\,
	datad => \Selector48~0_combout\,
	combout => \Selector56~1_combout\);

-- Location: LCCOMB_X42_Y16_N28
\Mux31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (D_sum(0) & ((\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\ $ (!\Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\)))) # (!D_sum(0) & ((\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\ & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\ & \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\)) # (!\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\ & 
-- (\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\ & !\Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => D_sum(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X42_Y16_N2
\Mux31~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (!\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\ & (\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\ $ (((D_sum(0)) # (\Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => D_sum(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X43_Y16_N22
\Selector56~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector56~0_combout\ = (!\Selector48~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\ & ((!\Mux31~1_combout\))) # (!\Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\ & (\Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\,
	datab => \Mux31~0_combout\,
	datac => \Mux31~1_combout\,
	datad => \Selector48~0_combout\,
	combout => \Selector56~0_combout\);

-- Location: LCCOMB_X43_Y16_N20
\Selector56~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector56~2_combout\ = (\Selector56~1_combout\) # ((\Selector56~0_combout\) # (!\state.I~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector56~1_combout\,
	datab => \Selector56~0_combout\,
	datad => \state.I~regout\,
	combout => \Selector56~2_combout\);

-- Location: LCCOMB_X42_Y16_N26
\Mux30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\ & (D_sum(0)))) # (!\Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\ & 
-- ((\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\)) # (!\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\ & ((D_sum(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => D_sum(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X42_Y16_N4
\Mux30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\) # ((D_sum(0) & (\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\)) # (!D_sum(0) & ((\Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => D_sum(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X43_Y16_N26
\Selector55~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (!\Selector48~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\ & ((\Mux30~0_combout\))) # (!\Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\ & (\Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\,
	datab => \Mux30~1_combout\,
	datac => \Mux30~0_combout\,
	datad => \Selector48~0_combout\,
	combout => \Selector55~0_combout\);

-- Location: LCCOMB_X44_Y16_N10
\Mux16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & (((!\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\ & P_sum(0))))) # (!\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & 
-- ((\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & (!\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & ((P_sum(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => P_sum(0),
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X43_Y16_N24
\Selector55~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector55~1_combout\ = (\Selector48~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\ & (\Mux16~0_combout\)) # (!\Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\ & ((\Mux16~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \Mux16~1_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\,
	datad => \Selector48~0_combout\,
	combout => \Selector55~1_combout\);

-- Location: LCCOMB_X43_Y16_N6
\Selector55~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector55~2_combout\ = (\Selector55~0_combout\) # ((\Selector55~1_combout\) # (!\state.I~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector55~0_combout\,
	datac => \Selector55~1_combout\,
	datad => \state.I~regout\,
	combout => \Selector55~2_combout\);

-- Location: LCCOMB_X44_Y16_N0
\Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\) # ((!\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & P_sum(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => P_sum(0),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X43_Y16_N30
\Selector54~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector54~1_combout\ = (\Selector48~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\ & ((\Mux15~0_combout\))) # (!\Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\ & (\Mux15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~1_combout\,
	datab => \Mux15~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\,
	datad => \Selector48~0_combout\,
	combout => \Selector54~1_combout\);

-- Location: LCCOMB_X42_Y16_N16
\Mux29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\) # ((\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\) # ((D_sum(0) & !\Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => D_sum(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \Mux29~0_combout\);

-- Location: LCCOMB_X42_Y16_N6
\Mux29~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux29~1_combout\ = (D_sum(0) & (\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\ $ (((\Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\) # (!\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\))))) # (!D_sum(0) & 
-- (!\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\ & (!\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\ & \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => D_sum(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \Mux29~1_combout\);

-- Location: LCCOMB_X43_Y16_N4
\Selector54~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector54~0_combout\ = (!\Selector48~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\ & (\Mux29~0_combout\)) # (!\Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\ & ((\Mux29~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\,
	datab => \Mux29~0_combout\,
	datac => \Mux29~1_combout\,
	datad => \Selector48~0_combout\,
	combout => \Selector54~0_combout\);

-- Location: LCCOMB_X43_Y16_N16
\Selector54~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector54~2_combout\ = (\Selector54~1_combout\) # ((\Selector54~0_combout\) # (!\state.I~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector54~1_combout\,
	datac => \Selector54~0_combout\,
	datad => \state.I~regout\,
	combout => \Selector54~2_combout\);

-- Location: LCCOMB_X44_Y16_N28
\Mux14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\) # ((\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\) # (P_sum(0)))) # 
-- (!\Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\ & (\Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\ & P_sum(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod0|auto_generated|divider|divider|StageOut[21]~8_combout\,
	datab => \Mod0|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datad => P_sum(0),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X43_Y16_N0
\Selector53~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector53~1_combout\ = (\Selector48~0_combout\ & ((\Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\ & ((\Mux14~0_combout\))) # (!\Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\ & (!\Mux14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~1_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mod0|auto_generated|divider|divider|StageOut[24]~11_combout\,
	datad => \Selector48~0_combout\,
	combout => \Selector53~1_combout\);

-- Location: LCCOMB_X42_Y16_N0
\Mux28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux28~0_combout\ = (\Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\) # ((D_sum(0) & ((\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\) # (\Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\))) # (!D_sum(0) & 
-- (\Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\ & \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mod1|auto_generated|divider|divider|StageOut[23]~10_combout\,
	datab => D_sum(0),
	datac => \Mod1|auto_generated|divider|divider|StageOut[22]~9_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[21]~8_combout\,
	combout => \Mux28~0_combout\);

-- Location: LCCOMB_X43_Y16_N14
\Selector53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (!\Selector48~0_combout\ & ((\Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\ & ((\Mux28~0_combout\))) # (!\Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\ & (!\Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~1_combout\,
	datab => \Selector48~0_combout\,
	datac => \Mux28~0_combout\,
	datad => \Mod1|auto_generated|divider|divider|StageOut[24]~11_combout\,
	combout => \Selector53~0_combout\);

-- Location: LCCOMB_X43_Y16_N10
\Selector53~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector53~2_combout\ = (\Selector53~1_combout\) # ((\Selector53~0_combout\) # (!\state.I~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector53~1_combout\,
	datac => \Selector53~0_combout\,
	datad => \state.I~regout\,
	combout => \Selector53~2_combout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(4));

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(6));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(7));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(3));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LEDR~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDR(9));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_card_val_display(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(0));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_card_val_display(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(1));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_card_val_display(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(2));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_card_val_display(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(3));

-- Location: PIN_L8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_card_val_display(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(4));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_card_val_display(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(5));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX3[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_card_val_display(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX3(6));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WideOr30~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(0));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_card_val_display[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(1));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_WideOr29~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WideOr28~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(3));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_state.I~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WideOr27~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(5));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \WideOr26~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX2(6));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector52~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(0));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_state.I~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(1));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector50~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(2));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector52~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(3));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector48~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(4));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector47~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(5));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector46~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX1(6));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector59~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector58~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector57~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector56~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(3));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector55~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(4));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector54~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(5));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\HEX0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector53~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_HEX0(6));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_card_val_display[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_card_val_display[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_card_val_display[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_card_val_display[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_card_val_display[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(4));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_card_val_display[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_card_val_display[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(6));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LEDG[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_card_val_display[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LEDG(7));
END structure;


