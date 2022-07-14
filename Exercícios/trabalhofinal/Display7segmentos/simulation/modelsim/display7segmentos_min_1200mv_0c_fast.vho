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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "07/12/2022 03:36:35"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	display7segmentos IS
    PORT (
	data : IN std_logic_vector(3 DOWNTO 0);
	saida : OUT std_logic_vector(6 DOWNTO 0)
	);
END display7segmentos;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_AC17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF display7segmentos IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(6 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \data[1]~input_o\ : std_logic;
SIGNAL \data[2]~input_o\ : std_logic;
SIGNAL \data[0]~input_o\ : std_logic;
SIGNAL \data[3]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_data <= data;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X74_Y0_N23
\saida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\saida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\saida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~0_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X89_Y0_N16
\saida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~0_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOOBUF_X65_Y0_N9
\saida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~0_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

-- Location: IOOBUF_X65_Y0_N2
\saida[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~0_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

-- Location: IOOBUF_X89_Y0_N23
\saida[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

-- Location: IOIBUF_X115_Y6_N15
\data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(1),
	o => \data[1]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(2),
	o => \data[2]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(0),
	o => \data[0]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\data[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data(3),
	o => \data[3]~input_o\);

-- Location: LCCOMB_X89_Y4_N24
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\data[0]~input_o\ & ((\data[3]~input_o\) # (\data[1]~input_o\ $ (\data[2]~input_o\)))) # (!\data[0]~input_o\ & ((\data[1]~input_o\) # (\data[2]~input_o\ $ (\data[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[1]~input_o\,
	datab => \data[2]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[3]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X89_Y4_N10
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\data[1]~input_o\ & (!\data[3]~input_o\ & ((\data[0]~input_o\) # (!\data[2]~input_o\)))) # (!\data[1]~input_o\ & (\data[0]~input_o\ & (\data[2]~input_o\ $ (!\data[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[1]~input_o\,
	datab => \data[2]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[3]~input_o\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X89_Y4_N4
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\data[1]~input_o\ & (((\data[0]~input_o\ & !\data[3]~input_o\)))) # (!\data[1]~input_o\ & ((\data[2]~input_o\ & ((!\data[3]~input_o\))) # (!\data[2]~input_o\ & (\data[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[1]~input_o\,
	datab => \data[2]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[3]~input_o\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X89_Y4_N22
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\data[1]~input_o\ & ((\data[2]~input_o\ & (\data[0]~input_o\)) # (!\data[2]~input_o\ & (!\data[0]~input_o\ & \data[3]~input_o\)))) # (!\data[1]~input_o\ & (!\data[3]~input_o\ & (\data[2]~input_o\ $ (\data[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[1]~input_o\,
	datab => \data[2]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[3]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X89_Y4_N16
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\data[2]~input_o\ & (\data[3]~input_o\ & ((\data[1]~input_o\) # (!\data[0]~input_o\)))) # (!\data[2]~input_o\ & (\data[1]~input_o\ & (!\data[0]~input_o\ & !\data[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[1]~input_o\,
	datab => \data[2]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X89_Y4_N26
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\data[1]~input_o\ & ((\data[0]~input_o\ & ((\data[3]~input_o\))) # (!\data[0]~input_o\ & (\data[2]~input_o\)))) # (!\data[1]~input_o\ & (\data[2]~input_o\ & (\data[0]~input_o\ $ (\data[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[1]~input_o\,
	datab => \data[2]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[3]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X89_Y4_N28
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\data[2]~input_o\ & (!\data[1]~input_o\ & (\data[0]~input_o\ $ (!\data[3]~input_o\)))) # (!\data[2]~input_o\ & (\data[0]~input_o\ & (\data[1]~input_o\ $ (!\data[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data[1]~input_o\,
	datab => \data[2]~input_o\,
	datac => \data[0]~input_o\,
	datad => \data[3]~input_o\,
	combout => \Mux0~0_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;
END structure;


