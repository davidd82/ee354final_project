module x_rom
	(
		input wire clk,
		input wire [5:0] row,
		input wire [5:0] col,
		output reg [11:0] color_data
	);

	(* rom_style = "block" *)

	//signal declaration
	reg [5:0] row_reg;
	reg [5:0] col_reg;

	always @(posedge clk)
		begin
		row_reg <= row;
		col_reg <= col;
		end

	always @(*) begin
		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b000000000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000000000110)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b000000000111)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b000000001000)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=12'b000000001001) && ({row_reg, col_reg}<12'b000000110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000000110011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b000000110100)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b000000110101)) color_data = 12'b101110111011;

		if(({row_reg, col_reg}>=12'b000000110110) && ({row_reg, col_reg}<12'b000001000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000001000101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b000001000110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b000001000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000001001000)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b000001001001)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b000001001010) && ({row_reg, col_reg}<12'b000001110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000001110010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b000001110011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b000001110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000001110101)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b000001110110)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b000001110111) && ({row_reg, col_reg}<12'b000010000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000010000100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b000010000101)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b000010000110) && ({row_reg, col_reg}<12'b000010001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000010001001)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b000010001010)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b000010001011) && ({row_reg, col_reg}<12'b000010110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000010110001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b000010110010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b000010110011) && ({row_reg, col_reg}<12'b000010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000010110110)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b000010110111)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b000010111000) && ({row_reg, col_reg}<12'b000011000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000011000011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b000011000100)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b000011000101) && ({row_reg, col_reg}<12'b000011001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000011001010)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b000011001011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b000011001100) && ({row_reg, col_reg}<12'b000011110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000011110000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b000011110001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b000011110010) && ({row_reg, col_reg}<12'b000011110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000011110111)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b000011111000)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b000011111001) && ({row_reg, col_reg}<12'b000100000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000100000010)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b000100000011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b000100000100) && ({row_reg, col_reg}<12'b000100001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000100001011)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b000100001100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b000100001101) && ({row_reg, col_reg}<12'b000100101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000100101111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b000100110000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b000100110001) && ({row_reg, col_reg}<12'b000100111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000100111000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b000100111001)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b000100111010) && ({row_reg, col_reg}<12'b000101000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000101000001)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b000101000010)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=12'b000101000011) && ({row_reg, col_reg}<12'b000101001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000101001100)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b000101001101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b000101001110) && ({row_reg, col_reg}<12'b000101101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000101101110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b000101101111)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b000101110000) && ({row_reg, col_reg}<12'b000101111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000101111001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b000101111010)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}==12'b000101111011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000110000000)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b000110000001)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=12'b000110000010) && ({row_reg, col_reg}<12'b000110001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000110001101)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b000110001110)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b000110001111) && ({row_reg, col_reg}<12'b000110101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000110101101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b000110101110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b000110101111) && ({row_reg, col_reg}<12'b000110111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000110111010)) color_data = 12'b001100110011;

		if(({row_reg, col_reg}==12'b000110111011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b000111000000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b000111000001) && ({row_reg, col_reg}<12'b000111001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000111001110)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b000111001111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b000111010000) && ({row_reg, col_reg}<12'b000111101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000111101100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b000111101101)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b000111101110) && ({row_reg, col_reg}<12'b000111111011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}==12'b000111111011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b001000000000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001000000001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b001000000010) && ({row_reg, col_reg}<12'b001000001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001000001111)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b001000010000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b001000010001) && ({row_reg, col_reg}<12'b001000101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001000101011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001000101100)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b001000101101) && ({row_reg, col_reg}<12'b001000111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001000111010)) color_data = 12'b001000100010;

		if(({row_reg, col_reg}==12'b001000111011)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b001001000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001001000001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001001000010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b001001000011) && ({row_reg, col_reg}<12'b001001010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001001010000)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b001001010001)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b001001010010) && ({row_reg, col_reg}<12'b001001101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001001101010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001001101011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b001001101100) && ({row_reg, col_reg}<12'b001001111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001001111001)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b001001111010)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b001001111011) && ({row_reg, col_reg}<12'b001010000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001010000010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001010000011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b001010000100) && ({row_reg, col_reg}<12'b001010010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001010010001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b001010010010)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b001010010011) && ({row_reg, col_reg}<12'b001010101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001010101001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001010101010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b001010101011) && ({row_reg, col_reg}<12'b001010111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001010111000)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b001010111001)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b001010111010) && ({row_reg, col_reg}<12'b001011000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001011000011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001011000100)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b001011000101) && ({row_reg, col_reg}<12'b001011010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001011010010)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b001011010011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b001011010100) && ({row_reg, col_reg}<12'b001011101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001011101000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001011101001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b001011101010) && ({row_reg, col_reg}<12'b001011110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001011110111)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b001011111000)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b001011111001) && ({row_reg, col_reg}<12'b001100000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001100000100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001100000101)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b001100000110) && ({row_reg, col_reg}<12'b001100010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001100010011)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b001100010100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b001100010101) && ({row_reg, col_reg}<12'b001100100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001100100111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001100101000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b001100101001) && ({row_reg, col_reg}<12'b001100110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001100110110)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b001100110111)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b001100111000) && ({row_reg, col_reg}<12'b001101000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001101000101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001101000110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b001101000111) && ({row_reg, col_reg}<12'b001101010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001101010100)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b001101010101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b001101010110) && ({row_reg, col_reg}<12'b001101100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001101100110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001101100111)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b001101101000) && ({row_reg, col_reg}<12'b001101110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001101110101)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b001101110110)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b001101110111) && ({row_reg, col_reg}<12'b001110000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001110000110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001110000111)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b001110001000) && ({row_reg, col_reg}<12'b001110010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110010101)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b001110010110)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b001110010111) && ({row_reg, col_reg}<12'b001110100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001110100101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001110100110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b001110100111) && ({row_reg, col_reg}<12'b001110110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110110100)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b001110110101)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b001110110110) && ({row_reg, col_reg}<12'b001111000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001111000111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001111001000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b001111001001) && ({row_reg, col_reg}<12'b001111010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001111010110)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b001111010111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b001111011000) && ({row_reg, col_reg}<12'b001111100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001111100100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001111100101)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b001111100110) && ({row_reg, col_reg}<12'b001111110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001111110011)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b001111110100)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b001111110101) && ({row_reg, col_reg}<12'b010000001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010000001000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b010000001001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b010000001010) && ({row_reg, col_reg}<12'b010000010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010000010111)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b010000011000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b010000011001) && ({row_reg, col_reg}<12'b010000100011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010000100011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b010000100100)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b010000100101) && ({row_reg, col_reg}<12'b010000110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010000110010)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b010000110011)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b010000110100) && ({row_reg, col_reg}<12'b010001001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010001001001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b010001001010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b010001001011) && ({row_reg, col_reg}<12'b010001011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010001011000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b010001011001)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b010001011010) && ({row_reg, col_reg}<12'b010001100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010001100010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b010001100011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b010001100100) && ({row_reg, col_reg}<12'b010001110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010001110001)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b010001110010)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b010001110011) && ({row_reg, col_reg}<12'b010010001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010010001010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b010010001011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b010010001100) && ({row_reg, col_reg}<12'b010010011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010010011001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b010010011010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b010010011011) && ({row_reg, col_reg}<12'b010010100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010010100001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b010010100010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b010010100011) && ({row_reg, col_reg}<12'b010010110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010010110000)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b010010110001)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b010010110010) && ({row_reg, col_reg}<12'b010011001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010011001011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b010011001100)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b010011001101) && ({row_reg, col_reg}<12'b010011011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010011011010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b010011011011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b010011011100) && ({row_reg, col_reg}<12'b010011100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010011100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b010011100001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b010011100010) && ({row_reg, col_reg}<12'b010011101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010011101111)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b010011110000)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b010011110001) && ({row_reg, col_reg}<12'b010100001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010100001100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b010100001101)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b010100001110) && ({row_reg, col_reg}<12'b010100011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010100011011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b010100011100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b010100011101) && ({row_reg, col_reg}<12'b010100011111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010100011111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b010100100000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b010100100001) && ({row_reg, col_reg}<12'b010100101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010100101110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b010100101111)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b010100110000) && ({row_reg, col_reg}<12'b010101001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010101001101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b010101001110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b010101001111) && ({row_reg, col_reg}<12'b010101011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010101011100)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b010101011101) && ({row_reg, col_reg}<12'b010101011111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b010101011111)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b010101100000) && ({row_reg, col_reg}<12'b010101101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010101101101)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b010101101110)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b010101101111) && ({row_reg, col_reg}<12'b010110001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010110001110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b010110001111)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b010110010000) && ({row_reg, col_reg}<12'b010110011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010110011101)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b010110011110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b010110011111) && ({row_reg, col_reg}<12'b010110101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010110101100)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b010110101101)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b010110101110) && ({row_reg, col_reg}<12'b010111001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010111001111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b010111010000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b010111010001) && ({row_reg, col_reg}<12'b010111101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010111101011)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b010111101100)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b010111101101) && ({row_reg, col_reg}<12'b011000010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011000010000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011000010001)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b011000010010) && ({row_reg, col_reg}<12'b011000101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011000101010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b011000101011)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b011000101100) && ({row_reg, col_reg}<12'b011001010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011001010001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011001010010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b011001010011) && ({row_reg, col_reg}<12'b011001101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011001101001)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b011001101010)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b011001101011) && ({row_reg, col_reg}<12'b011010010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011010010010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011010010011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b011010010100) && ({row_reg, col_reg}<12'b011010101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011010101000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b011010101001)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b011010101010) && ({row_reg, col_reg}<12'b011011010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011011010011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011011010100)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b011011010101) && ({row_reg, col_reg}<12'b011011100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011011100111)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b011011101000)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b011011101001) && ({row_reg, col_reg}<12'b011100010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011100010100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011100010101)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b011100010110) && ({row_reg, col_reg}<12'b011100100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011100100110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b011100100111)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b011100101000) && ({row_reg, col_reg}<12'b011101010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011101010101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011101010110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b011101010111) && ({row_reg, col_reg}<12'b011101100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011101100101)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b011101100110)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b011101100111) && ({row_reg, col_reg}<12'b011110010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011110010101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011110010110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b011110010111) && ({row_reg, col_reg}<12'b011110100101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011110100101)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b011110100110)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b011110100111) && ({row_reg, col_reg}<12'b011111010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011111010100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011111010101)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b011111010110) && ({row_reg, col_reg}<12'b011111100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011111100110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b011111100111)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b011111101000) && ({row_reg, col_reg}<12'b100000010011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100000010011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b100000010100)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b100000010101) && ({row_reg, col_reg}<12'b100000100111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100000100111)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b100000101000)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b100000101001) && ({row_reg, col_reg}<12'b100001010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100001010010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b100001010011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b100001010100) && ({row_reg, col_reg}<12'b100001101000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100001101000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b100001101001)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b100001101010) && ({row_reg, col_reg}<12'b100010010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100010010001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b100010010010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b100010010011) && ({row_reg, col_reg}<12'b100010101001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100010101001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b100010101010)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b100010101011) && ({row_reg, col_reg}<12'b100011010000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100011010000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b100011010001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b100011010010) && ({row_reg, col_reg}<12'b100011101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100011101010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b100011101011)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b100011101100) && ({row_reg, col_reg}<12'b100100001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100100001111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b100100010000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b100100010001) && ({row_reg, col_reg}<12'b100100101011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100100101011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b100100101100)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b100100101101) && ({row_reg, col_reg}<12'b100101001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100101001110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b100101001111)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b100101010000) && ({row_reg, col_reg}<12'b100101011101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b100101011101) && ({row_reg, col_reg}<12'b100101011111)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b100101011111) && ({row_reg, col_reg}<12'b100101101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100101101100)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b100101101101)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b100101101110) && ({row_reg, col_reg}<12'b100110001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100110001101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b100110001110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b100110001111) && ({row_reg, col_reg}<12'b100110011100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100110011100)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b100110011101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b100110011110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b100110011111)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b100110100000) && ({row_reg, col_reg}<12'b100110101101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100110101101)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b100110101110)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b100110101111) && ({row_reg, col_reg}<12'b100111001100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100111001100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b100111001101)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b100111001110) && ({row_reg, col_reg}<12'b100111011011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100111011011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b100111011100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b100111011101) && ({row_reg, col_reg}<12'b100111011111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100111011111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b100111100000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b100111100001) && ({row_reg, col_reg}<12'b100111101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100111101110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b100111101111)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b100111110000) && ({row_reg, col_reg}<12'b101000001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101000001011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101000001100)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b101000001101) && ({row_reg, col_reg}<12'b101000011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101000011010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b101000011011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b101000011100) && ({row_reg, col_reg}<12'b101000100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101000100000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101000100001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b101000100010) && ({row_reg, col_reg}<12'b101000101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101000101111)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b101000110000)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b101000110001) && ({row_reg, col_reg}<12'b101001001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101001001010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101001001011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b101001001100) && ({row_reg, col_reg}<12'b101001011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101001011001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b101001011010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b101001011011) && ({row_reg, col_reg}<12'b101001100001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101001100001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101001100010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b101001100011) && ({row_reg, col_reg}<12'b101001110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101001110000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b101001110001)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b101001110010) && ({row_reg, col_reg}<12'b101010001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101010001001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101010001010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b101010001011) && ({row_reg, col_reg}<12'b101010011000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101010011000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b101010011001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b101010011010) && ({row_reg, col_reg}<12'b101010100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101010100010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101010100011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b101010100100) && ({row_reg, col_reg}<12'b101010110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101010110001)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b101010110010)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b101010110011) && ({row_reg, col_reg}<12'b101011001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101011001000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101011001001)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b101011001010) && ({row_reg, col_reg}<12'b101011010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101011010111)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b101011011000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b101011011001) && ({row_reg, col_reg}<12'b101011100011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101011100011)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b101011100100)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b101011100101) && ({row_reg, col_reg}<12'b101011110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101011110010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b101011110011)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b101011110100) && ({row_reg, col_reg}<12'b101100000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101100000111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101100001000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b101100001001) && ({row_reg, col_reg}<12'b101100010110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101100010110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b101100010111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b101100011000) && ({row_reg, col_reg}<12'b101100100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101100100100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101100100101)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b101100100110) && ({row_reg, col_reg}<12'b101100110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101100110011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b101100110100)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b101100110101) && ({row_reg, col_reg}<12'b101101000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101101000110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101101000111)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b101101001000) && ({row_reg, col_reg}<12'b101101010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101101010101)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b101101010110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b101101010111) && ({row_reg, col_reg}<12'b101101100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101101100101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101101100110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b101101100111) && ({row_reg, col_reg}<12'b101101110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101101110100)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b101101110101)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b101101110110) && ({row_reg, col_reg}<12'b101110000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101110000101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101110000110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b101110000111) && ({row_reg, col_reg}<12'b101110010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101110010100)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b101110010101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b101110010110) && ({row_reg, col_reg}<12'b101110100110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101110100110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101110100111)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b101110101000) && ({row_reg, col_reg}<12'b101110110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101110110101)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b101110110110)) color_data = 12'b111011101110;

		if(({row_reg, col_reg}>=12'b101110110111) && ({row_reg, col_reg}<12'b101111000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101111000100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b101111000101)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b101111000110) && ({row_reg, col_reg}<12'b101111010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101111010011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b101111010100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b101111010101) && ({row_reg, col_reg}<12'b101111100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101111100111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101111101000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b101111101001) && ({row_reg, col_reg}<12'b101111110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101111110110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b101111110111)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b101111111000) && ({row_reg, col_reg}<12'b110000000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110000000011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b110000000100)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b110000000101) && ({row_reg, col_reg}<12'b110000010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110000010010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b110000010011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b110000010100) && ({row_reg, col_reg}<12'b110000101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110000101000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b110000101001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b110000101010) && ({row_reg, col_reg}<12'b110000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110000110111)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b110000111000)) color_data = 12'b111011101110;

		if(({row_reg, col_reg}>=12'b110000111001) && ({row_reg, col_reg}<12'b110001000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110001000010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b110001000011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b110001000100) && ({row_reg, col_reg}<12'b110001010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110001010001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b110001010010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b110001010011) && ({row_reg, col_reg}<12'b110001101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110001101001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b110001101010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b110001101011) && ({row_reg, col_reg}<12'b110001111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110001111000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b110001111001)) color_data = 12'b111011101110;

		if(({row_reg, col_reg}>=12'b110001111010) && ({row_reg, col_reg}<12'b110010000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110010000001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b110010000010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b110010000011) && ({row_reg, col_reg}<12'b110010010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110010010000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b110010010001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b110010010010) && ({row_reg, col_reg}<12'b110010101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110010101010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b110010101011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b110010101100) && ({row_reg, col_reg}<12'b110010111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110010111001)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b110010111010)) color_data = 12'b111011101110;

		if(({row_reg, col_reg}==12'b110010111011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110011000000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b110011000001)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b110011000010) && ({row_reg, col_reg}<12'b110011001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110011001111)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b110011010000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b110011010001) && ({row_reg, col_reg}<12'b110011101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110011101011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b110011101100)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b110011101101) && ({row_reg, col_reg}<12'b110011111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110011111010)) color_data = 12'b010001000100;

		if(({row_reg, col_reg}==12'b110011111011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b110100000000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b110100000001) && ({row_reg, col_reg}<12'b110100001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110100001110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b110100001111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b110100010000) && ({row_reg, col_reg}<12'b110100101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110100101100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b110100101101)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b110100101110) && ({row_reg, col_reg}<12'b110100111011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}==12'b110100111011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b110101000000)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b110101000001)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=12'b110101000010) && ({row_reg, col_reg}<12'b110101001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110101001101)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b110101001110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b110101001111) && ({row_reg, col_reg}<12'b110101101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110101101101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b110101101110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b110101101111) && ({row_reg, col_reg}<12'b110101111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110101111010)) color_data = 12'b000100010001;

		if(({row_reg, col_reg}==12'b110101111011)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b110110000000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110110000001)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b110110000010)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b110110000011) && ({row_reg, col_reg}<12'b110110001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110110001100)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b110110001101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b110110001110) && ({row_reg, col_reg}<12'b110110101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110110101110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b110110101111)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b110110110000) && ({row_reg, col_reg}<12'b110110111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110110111001)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b110110111010)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b110110111011) && ({row_reg, col_reg}<12'b110111000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110111000010)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b110111000011)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=12'b110111000100) && ({row_reg, col_reg}<12'b110111001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110111001011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b110111001100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b110111001101) && ({row_reg, col_reg}<12'b110111101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110111101111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b110111110000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b110111110001) && ({row_reg, col_reg}<12'b110111111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110111111000)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b110111111001)) color_data = 12'b101110111011;

		if(({row_reg, col_reg}>=12'b110111111010) && ({row_reg, col_reg}<12'b111000000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b111000000011)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b111000000100)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b111000000101) && ({row_reg, col_reg}<12'b111000001010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b111000001010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b111000001011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b111000001100) && ({row_reg, col_reg}<12'b111000110000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b111000110000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b111000110001)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b111000110010) && ({row_reg, col_reg}<12'b111000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b111000110111)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b111000111000)) color_data = 12'b101110111011;

		if(({row_reg, col_reg}>=12'b111000111001) && ({row_reg, col_reg}<12'b111001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b111001000100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b111001000101)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b111001000110) && ({row_reg, col_reg}<12'b111001001001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b111001001001)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b111001001010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b111001001011) && ({row_reg, col_reg}<12'b111001110001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b111001110001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b111001110010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b111001110011) && ({row_reg, col_reg}<12'b111001110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b111001110110)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b111001110111)) color_data = 12'b101110111011;

		if(({row_reg, col_reg}>=12'b111001111000) && ({row_reg, col_reg}<12'b111010000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b111010000101)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b111010000110)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b111010000111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b111010001000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b111010001001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b111010001010) && ({row_reg, col_reg}<12'b111010110010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b111010110010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b111010110011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b111010110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b111010110101)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b111010110110)) color_data = 12'b101110111011;

		if(({row_reg, col_reg}>=12'b111010110111) && ({row_reg, col_reg}<12'b111011000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b111011000110)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b111011000111)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b111011001000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b111011001001) && ({row_reg, col_reg}<12'b111011110011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b111011110011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b111011110100)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b111011110101)) color_data = 12'b101110111011;

		if(({row_reg, col_reg}>=12'b111011110110) && ({row_reg, col_reg}<=12'b111011111011)) color_data = 12'b111111111111;
	end
endmodule