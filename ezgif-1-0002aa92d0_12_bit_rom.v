module ezgif-1-0002aa92d0_rom
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
		if(({row_reg, col_reg}>=12'b000000000000) && ({row_reg, col_reg}<12'b000000010101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000000010101)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b000000010110)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b000000010111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b000000011000)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b000000011001)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b000000011010)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b000000011011)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b000000011100) && ({row_reg, col_reg}<12'b000000100000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}>=12'b000000100000) && ({row_reg, col_reg}<12'b000000100010)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b000000100010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b000000100011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000000100100)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b000000100101)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b000000100110)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b000000100111) && ({row_reg, col_reg}<12'b000001010010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000001010010)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b000001010011)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b000001010100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000001010101)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b000001010110)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b000001010111) && ({row_reg, col_reg}<12'b000001100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000001100110)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b000001100111)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b000001101000)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b000001101001)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b000001101010)) color_data = 12'b111011101110;

		if(({row_reg, col_reg}>=12'b000001101011) && ({row_reg, col_reg}<12'b000010001111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000010001111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b000010010000)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b000010010001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b000010010010)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b000010010011) && ({row_reg, col_reg}<12'b000010101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000010101010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b000010101011)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b000010101100)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b000010101101) && ({row_reg, col_reg}<12'b000011001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000011001101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b000011001110)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b000011001111)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b000011010000) && ({row_reg, col_reg}<12'b000011011001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000011011001)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b000011011010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b000011011011)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b000011011100)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b000011011101) && ({row_reg, col_reg}<12'b000011011111)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b000011011111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b000011100000)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b000011100001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b000011100010)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b000011100011) && ({row_reg, col_reg}<12'b000011101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000011101100)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b000011101101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b000011101110)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b000011101111) && ({row_reg, col_reg}<12'b000100001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000100001011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b000100001100)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b000100001101)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b000100001110) && ({row_reg, col_reg}<12'b000100010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000100010111)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000100011000)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b000100011001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b000100011010) && ({row_reg, col_reg}<12'b000100100010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000100100010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b000100100011)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b000100100100)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b000100100101)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b000100100110) && ({row_reg, col_reg}<12'b000100101110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000100101110)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b000100101111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b000100110000)) color_data = 12'b111011101110;

		if(({row_reg, col_reg}>=12'b000100110001) && ({row_reg, col_reg}<12'b000101001010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000101001010)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b000101001011)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=12'b000101001100) && ({row_reg, col_reg}<12'b000101010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000101010101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b000101010110)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b000101010111) && ({row_reg, col_reg}<12'b000101100101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000101100101)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b000101100110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b000101100111) && ({row_reg, col_reg}<12'b000101110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000101110000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b000101110001)) color_data = 12'b101110111011;

		if(({row_reg, col_reg}>=12'b000101110010) && ({row_reg, col_reg}<12'b000110001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000110001000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b000110001001)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b000110001010) && ({row_reg, col_reg}<12'b000110010011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000110010011)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b000110010100)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=12'b000110010101) && ({row_reg, col_reg}<12'b000110100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000110100111)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b000110101000)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=12'b000110101001) && ({row_reg, col_reg}<12'b000110110001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000110110001)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b000110110010)) color_data = 12'b100010001000;

		if(({row_reg, col_reg}>=12'b000110110011) && ({row_reg, col_reg}<12'b000111000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000111000111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b000111001000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b000111001001) && ({row_reg, col_reg}<12'b000111010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000111010010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b000111010011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b000111010100) && ({row_reg, col_reg}<12'b000111101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b000111101000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b000111101001)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b000111101010) && ({row_reg, col_reg}<12'b000111110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b000111110011)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b000111110100)) color_data = 12'b111011101110;

		if(({row_reg, col_reg}>=12'b000111110101) && ({row_reg, col_reg}<12'b001000000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001000000110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001000000111)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b001000001000) && ({row_reg, col_reg}<12'b001000010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001000010001)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b001000010010)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b001000010011) && ({row_reg, col_reg}<12'b001000101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001000101001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001000101010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b001000101011) && ({row_reg, col_reg}<12'b001000110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001000110100)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b001000110101)) color_data = 12'b111011101110;

		if(({row_reg, col_reg}>=12'b001000110110) && ({row_reg, col_reg}<12'b001001000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001001000101)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b001001000110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b001001000111) && ({row_reg, col_reg}<12'b001001010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001001010000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b001001010001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b001001010010) && ({row_reg, col_reg}<12'b001001101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001001101010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001001101011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b001001101100) && ({row_reg, col_reg}<12'b001001110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001001110101)) color_data = 12'b011001100110;

		if(({row_reg, col_reg}>=12'b001001110110) && ({row_reg, col_reg}<12'b001010000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001010000101)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b001010000110) && ({row_reg, col_reg}<12'b001010001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001010001111)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b001010010000)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b001010010001) && ({row_reg, col_reg}<12'b001010101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001010101011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b001010101100)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b001010101101) && ({row_reg, col_reg}<12'b001010110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001010110110)) color_data = 12'b011101110111;

		if(({row_reg, col_reg}>=12'b001010110111) && ({row_reg, col_reg}<12'b001011000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001011000100)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b001011000101) && ({row_reg, col_reg}<12'b001011001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001011001111)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b001011010000) && ({row_reg, col_reg}<12'b001011101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001011101100)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b001011101101) && ({row_reg, col_reg}<12'b001011110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001011110110)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b001011110111)) color_data = 12'b101010101010;

		if(({row_reg, col_reg}>=12'b001011111000) && ({row_reg, col_reg}<12'b001100000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001100000011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b001100000100)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=12'b001100000101) && ({row_reg, col_reg}<12'b001100001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001100001110)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b001100001111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b001100010000) && ({row_reg, col_reg}<12'b001100101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001100101100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b001100101101)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=12'b001100101110) && ({row_reg, col_reg}<12'b001100110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001100110111)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b001100111000)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b001100111001) && ({row_reg, col_reg}<12'b001101000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001101000011)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b001101000100) && ({row_reg, col_reg}<12'b001101001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001101001110)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b001101001111) && ({row_reg, col_reg}<12'b001101101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001101101101)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b001101101110) && ({row_reg, col_reg}<12'b001101111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001101111000)) color_data = 12'b011001100110;

		if(({row_reg, col_reg}>=12'b001101111001) && ({row_reg, col_reg}<12'b001110000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001110000010)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b001110000011)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b001110000100) && ({row_reg, col_reg}<12'b001110001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110001101)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b001110001110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b001110001111) && ({row_reg, col_reg}<12'b001110101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001110101101)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b001110101110)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b001110101111) && ({row_reg, col_reg}<12'b001110111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001110111001)) color_data = 12'b101110111011;

		if(({row_reg, col_reg}>=12'b001110111010) && ({row_reg, col_reg}<12'b001111000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001111000010)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b001111000011) && ({row_reg, col_reg}<12'b001111001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001111001101)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b001111001110) && ({row_reg, col_reg}<12'b001111101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b001111101110)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b001111101111) && ({row_reg, col_reg}<12'b001111111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b001111111001)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b001111111010) && ({row_reg, col_reg}<12'b010000000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010000000001)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=12'b010000000010) && ({row_reg, col_reg}<12'b010000001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010000001101)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=12'b010000001110) && ({row_reg, col_reg}<12'b010000101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010000101110)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b010000101111) && ({row_reg, col_reg}<12'b010000111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010000111010)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b010000111011) && ({row_reg, col_reg}<12'b010001000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010001000001)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b010001000010) && ({row_reg, col_reg}<12'b010001001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010001001100)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b010001001101)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b010001001110) && ({row_reg, col_reg}<12'b010001101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010001101110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b010001101111)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b010001110000) && ({row_reg, col_reg}<12'b010001111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010001111010)) color_data = 12'b011101110111;

		if(({row_reg, col_reg}==12'b010001111011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010010000000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b010010000001)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b010010000010) && ({row_reg, col_reg}<12'b010010001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010010001100)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b010010001101) && ({row_reg, col_reg}<12'b010010101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010010101111)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b010010110000) && ({row_reg, col_reg}<12'b010010111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010010111010)) color_data = 12'b001000100010;

		if(({row_reg, col_reg}==12'b010010111011)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b010011000000)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b010011000001) && ({row_reg, col_reg}<12'b010011001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010011001100)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b010011001101) && ({row_reg, col_reg}<12'b010011101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010011101111)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b010011110000) && ({row_reg, col_reg}<12'b010011111011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}==12'b010011111011)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b010100000000)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b010100000001) && ({row_reg, col_reg}<12'b010100001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010100001100)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b010100001101) && ({row_reg, col_reg}<12'b010100101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010100101111)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b010100110000) && ({row_reg, col_reg}<12'b010100111011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}==12'b010100111011)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b010101000000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b010101000001) && ({row_reg, col_reg}<12'b010101001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010101001100)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=12'b010101001101) && ({row_reg, col_reg}<12'b010101101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010101101111)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b010101110000) && ({row_reg, col_reg}<12'b010101111011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}==12'b010101111011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b010110000000)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b010110000001) && ({row_reg, col_reg}<12'b010110001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010110001011)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b010110001100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b010110001101) && ({row_reg, col_reg}<12'b010110101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010110101111)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=12'b010110110000) && ({row_reg, col_reg}<12'b010110111011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}==12'b010110111011)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b010111000000) && ({row_reg, col_reg}<12'b010111001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b010111001011)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b010111001100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b010111001101) && ({row_reg, col_reg}<12'b010111101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b010111101111)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b010111110000) && ({row_reg, col_reg}<12'b011000001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011000001011)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b011000001100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b011000001101) && ({row_reg, col_reg}<12'b011000101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011000101111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b011000110000)) color_data = 12'b000100010001;

		if(({row_reg, col_reg}>=12'b011000110001) && ({row_reg, col_reg}<12'b011001001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011001001011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b011001001100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b011001001101) && ({row_reg, col_reg}<12'b011001101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011001101111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011001110000)) color_data = 12'b000100010001;

		if(({row_reg, col_reg}>=12'b011001110001) && ({row_reg, col_reg}<12'b011010001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011010001011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b011010001100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b011010001101) && ({row_reg, col_reg}<12'b011010101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011010101111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011010110000)) color_data = 12'b000100010001;

		if(({row_reg, col_reg}>=12'b011010110001) && ({row_reg, col_reg}<12'b011011001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011011001011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b011011001100) && ({row_reg, col_reg}<12'b011011101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011011101111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011011110000)) color_data = 12'b000100010001;

		if(({row_reg, col_reg}>=12'b011011110001) && ({row_reg, col_reg}<12'b011100001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011100001011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b011100001100) && ({row_reg, col_reg}<12'b011100101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011100101111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011100110000)) color_data = 12'b000100010001;

		if(({row_reg, col_reg}>=12'b011100110001) && ({row_reg, col_reg}<12'b011101001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011101001011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b011101001100) && ({row_reg, col_reg}<12'b011101101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011101101111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011101110000)) color_data = 12'b000100010001;

		if(({row_reg, col_reg}>=12'b011101110001) && ({row_reg, col_reg}<12'b011110001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011110001011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b011110001100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b011110001101) && ({row_reg, col_reg}<12'b011110101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011110101111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011110110000)) color_data = 12'b000100010001;

		if(({row_reg, col_reg}>=12'b011110110001) && ({row_reg, col_reg}<12'b011111001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b011111001011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b011111001100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b011111001101) && ({row_reg, col_reg}<12'b011111101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b011111101111)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b011111110000)) color_data = 12'b000100010001;

		if(({row_reg, col_reg}>=12'b011111110001) && ({row_reg, col_reg}<12'b100000001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100000001011)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b100000001100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b100000001101) && ({row_reg, col_reg}<12'b100000101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100000101111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b100000110000)) color_data = 12'b000100010001;

		if(({row_reg, col_reg}>=12'b100000110001) && ({row_reg, col_reg}<12'b100001001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100001001011)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b100001001100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b100001001101) && ({row_reg, col_reg}<12'b100001101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100001101111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b100001110000)) color_data = 12'b000100010001;

		if(({row_reg, col_reg}>=12'b100001110001) && ({row_reg, col_reg}<12'b100010001011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100010001011)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b100010001100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b100010001101) && ({row_reg, col_reg}<12'b100010101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100010101111)) color_data = 12'b101110111011;

		if(({row_reg, col_reg}>=12'b100010110000) && ({row_reg, col_reg}<12'b100011001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100011001100)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b100011001101) && ({row_reg, col_reg}<12'b100011101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100011101111)) color_data = 12'b101110111011;

		if(({row_reg, col_reg}>=12'b100011110000) && ({row_reg, col_reg}<12'b100100001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100100001100)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b100100001101) && ({row_reg, col_reg}<12'b100100101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100100101111)) color_data = 12'b101010101010;

		if(({row_reg, col_reg}>=12'b100100110000) && ({row_reg, col_reg}<12'b100101001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100101001100)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b100101001101) && ({row_reg, col_reg}<12'b100101101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100101101111)) color_data = 12'b100010001000;

		if(({row_reg, col_reg}>=12'b100101110000) && ({row_reg, col_reg}<12'b100110000000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100110000000)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b100110000001) && ({row_reg, col_reg}<12'b100110001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100110001100)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b100110001101) && ({row_reg, col_reg}<12'b100110101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100110101111)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b100110110000) && ({row_reg, col_reg}<12'b100110111011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}>=12'b100110111011) && ({row_reg, col_reg}<12'b100111000001)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=12'b100111000001) && ({row_reg, col_reg}<12'b100111001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b100111001100)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b100111001101) && ({row_reg, col_reg}<12'b100111101111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b100111101111)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b100111110000) && ({row_reg, col_reg}<12'b100111111011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}==12'b100111111011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b101000000000)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b101000000001) && ({row_reg, col_reg}<12'b101000001100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101000001100)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b101000001101)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b101000001110) && ({row_reg, col_reg}<12'b101000101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101000101110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101000101111)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=12'b101000110000) && ({row_reg, col_reg}<12'b101000111011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}==12'b101000111011)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b101001000000)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b101001000001) && ({row_reg, col_reg}<12'b101001001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101001001101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b101001001110) && ({row_reg, col_reg}<12'b101001101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101001101110)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=12'b101001101111) && ({row_reg, col_reg}<12'b101001111011)) color_data = 12'b000000000000;

		if(({row_reg, col_reg}==12'b101001111011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b101010000000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b101010000001)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=12'b101010000010) && ({row_reg, col_reg}<12'b101010001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101010001101)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b101010001110) && ({row_reg, col_reg}<12'b101010101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101010101110)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b101010101111) && ({row_reg, col_reg}<12'b101010111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101010111010)) color_data = 12'b010001000100;

		if(({row_reg, col_reg}>=12'b101010111011) && ({row_reg, col_reg}<12'b101011000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101011000001)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}>=12'b101011000010) && ({row_reg, col_reg}<12'b101011001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101011001101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b101011001110) && ({row_reg, col_reg}<12'b101011101110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101011101110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b101011101111) && ({row_reg, col_reg}<12'b101011111010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101011111010)) color_data = 12'b101010101010;

		if(({row_reg, col_reg}>=12'b101011111011) && ({row_reg, col_reg}<12'b101100000001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101100000001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101100000010)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b101100000011) && ({row_reg, col_reg}<12'b101100001101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101100001101)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b101100001110)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}>=12'b101100001111) && ({row_reg, col_reg}<12'b101100101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101100101101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}>=12'b101100101110) && ({row_reg, col_reg}<12'b101100111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101100111001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b101100111010)) color_data = 12'b111011101110;

		if(({row_reg, col_reg}>=12'b101100111011) && ({row_reg, col_reg}<12'b101101000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101101000010)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b101101000011) && ({row_reg, col_reg}<12'b101101001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101101001110)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b101101001111) && ({row_reg, col_reg}<12'b101101101101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101101101101)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b101101101110) && ({row_reg, col_reg}<12'b101101111001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101101111001)) color_data = 12'b100110011001;

		if(({row_reg, col_reg}>=12'b101101111010) && ({row_reg, col_reg}<12'b101110000010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101110000010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101110000011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b101110000100) && ({row_reg, col_reg}<12'b101110001110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101110001110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b101110001111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b101110010000) && ({row_reg, col_reg}<12'b101110101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101110101100)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b101110101101)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=12'b101110101110) && ({row_reg, col_reg}<12'b101110111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101110111000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b101110111001)) color_data = 12'b111011101110;

		if(({row_reg, col_reg}>=12'b101110111010) && ({row_reg, col_reg}<12'b101111000011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101111000011)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b101111000100) && ({row_reg, col_reg}<12'b101111001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101111001111)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}>=12'b101111010000) && ({row_reg, col_reg}<12'b101111101100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b101111101100)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b101111101101) && ({row_reg, col_reg}<12'b101111111000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b101111111000)) color_data = 12'b101110111011;

		if(({row_reg, col_reg}>=12'b101111111001) && ({row_reg, col_reg}<12'b110000000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110000000100)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}>=12'b110000000101) && ({row_reg, col_reg}<12'b110000001111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110000001111)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b110000010000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b110000010001) && ({row_reg, col_reg}<12'b110000101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110000101011)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b110000101100)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=12'b110000101101) && ({row_reg, col_reg}<12'b110000110111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110000110111)) color_data = 12'b011101110111;

		if(({row_reg, col_reg}>=12'b110000111000) && ({row_reg, col_reg}<12'b110001000100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110001000100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b110001000101)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b110001000110) && ({row_reg, col_reg}<12'b110001010000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110001010000)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b110001010001) && ({row_reg, col_reg}<12'b110001101011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110001101011)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}>=12'b110001101100) && ({row_reg, col_reg}<12'b110001110110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110001110110)) color_data = 12'b010101010101;

		if(({row_reg, col_reg}>=12'b110001110111) && ({row_reg, col_reg}<12'b110010000101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110010000101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b110010000110)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=12'b110010000111) && ({row_reg, col_reg}<12'b110010010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110010010001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b110010010010) && ({row_reg, col_reg}<12'b110010101010)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110010101010)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b110010101011) && ({row_reg, col_reg}<12'b110010110101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110010110101)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b110010110110)) color_data = 12'b111011101110;

		if(({row_reg, col_reg}>=12'b110010110111) && ({row_reg, col_reg}<12'b110011000110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110011000110)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b110011000111)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=12'b110011001000) && ({row_reg, col_reg}<12'b110011010001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110011010001)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b110011010010)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}>=12'b110011010011) && ({row_reg, col_reg}<12'b110011101001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110011101001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b110011101010)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b110011101011) && ({row_reg, col_reg}<12'b110011110100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110011110100)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b110011110101)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b110011110110) && ({row_reg, col_reg}<12'b110100000111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110100000111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b110100001000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}>=12'b110100001001) && ({row_reg, col_reg}<12'b110100010010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110100010010)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b110100010011)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}>=12'b110100010100) && ({row_reg, col_reg}<12'b110100101000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110100101000)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b110100101001)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b110100101010) && ({row_reg, col_reg}<12'b110100110011)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110100110011)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b110100110100)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b110100110101) && ({row_reg, col_reg}<12'b110101001000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110101001000)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b110101001001)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b110101001010) && ({row_reg, col_reg}<12'b110101010100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110101010100)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b110101010101)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b110101010110) && ({row_reg, col_reg}<12'b110101100111)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110101100111)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b110101101000)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b110101101001) && ({row_reg, col_reg}<12'b110101110010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110101110010)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b110101110011)) color_data = 12'b111011101110;

		if(({row_reg, col_reg}>=12'b110101110100) && ({row_reg, col_reg}<12'b110110001001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110110001001)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b110110001010)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b110110001011)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b110110001100) && ({row_reg, col_reg}<12'b110110010101)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110110010101)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b110110010110)) color_data = 12'b100110011001;
		if(({row_reg, col_reg}==12'b110110010111)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b110110011000) && ({row_reg, col_reg}<12'b110110100100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110110100100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b110110100101)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b110110100110)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b110110100111) && ({row_reg, col_reg}<12'b110110110000)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110110110000)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b110110110001)) color_data = 12'b100110011001;

		if(({row_reg, col_reg}>=12'b110110110010) && ({row_reg, col_reg}<12'b110111001011)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110111001011)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b110111001100)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b110111001101) && ({row_reg, col_reg}<12'b110111010111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110111010111)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b110111011000)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b110111011001)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b110111011010)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b110111011011)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}>=12'b110111011100) && ({row_reg, col_reg}<12'b110111100000)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b110111100000)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b110111100001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b110111100010)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b110111100011)) color_data = 12'b100010001000;
		if(({row_reg, col_reg}==12'b110111100100)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}>=12'b110111100101) && ({row_reg, col_reg}<12'b110111101111)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b110111101111)) color_data = 12'b011001100110;
		if(({row_reg, col_reg}==12'b110111110000)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b110111110001) && ({row_reg, col_reg}<12'b111000001101)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b111000001101)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b111000001110)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b111000001111) && ({row_reg, col_reg}<12'b111000011010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b111000011010)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}==12'b111000011011)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b111000011100)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b111000011101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}>=12'b111000011110) && ({row_reg, col_reg}<12'b111000100000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b111000100000)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b111000100001)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=12'b111000100010) && ({row_reg, col_reg}<12'b111000101100)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b111000101100)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b111000101101)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b111000101110)) color_data = 12'b101110111011;

		if(({row_reg, col_reg}>=12'b111000101111) && ({row_reg, col_reg}<12'b111001001110)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b111001001110)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b111001001111)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b111001010000)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b111001010001)) color_data = 12'b001000100010;
		if(({row_reg, col_reg}>=12'b111001010010) && ({row_reg, col_reg}<12'b111001101010)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b111001101010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b111001101011)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b111001101100)) color_data = 12'b110011001100;

		if(({row_reg, col_reg}>=12'b111001101101) && ({row_reg, col_reg}<12'b111010010001)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b111010010001)) color_data = 12'b110111011101;
		if(({row_reg, col_reg}==12'b111010010010)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b111010010011)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b111010010100)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b111010010101)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b111010010110) && ({row_reg, col_reg}<12'b111010100110)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b111010100110)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b111010100111)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b111010101000)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b111010101001)) color_data = 12'b101110111011;
		if(({row_reg, col_reg}==12'b111010101010)) color_data = 12'b111011101110;

		if(({row_reg, col_reg}>=12'b111010101011) && ({row_reg, col_reg}<12'b111011010100)) color_data = 12'b111111111111;
		if(({row_reg, col_reg}==12'b111011010100)) color_data = 12'b111011101110;
		if(({row_reg, col_reg}==12'b111011010101)) color_data = 12'b110011001100;
		if(({row_reg, col_reg}==12'b111011010110)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b111011010111)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b111011011000)) color_data = 12'b010001000100;
		if(({row_reg, col_reg}==12'b111011011001)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b111011011010)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}>=12'b111011011011) && ({row_reg, col_reg}<12'b111011100001)) color_data = 12'b000000000000;
		if(({row_reg, col_reg}==12'b111011100001)) color_data = 12'b000100010001;
		if(({row_reg, col_reg}==12'b111011100010)) color_data = 12'b001100110011;
		if(({row_reg, col_reg}==12'b111011100011)) color_data = 12'b010101010101;
		if(({row_reg, col_reg}==12'b111011100100)) color_data = 12'b011101110111;
		if(({row_reg, col_reg}==12'b111011100101)) color_data = 12'b101010101010;
		if(({row_reg, col_reg}==12'b111011100110)) color_data = 12'b110111011101;

		if(({row_reg, col_reg}>=12'b111011100111) && ({row_reg, col_reg}<=12'b111011111011)) color_data = 12'b111111111111;
	end
endmodule