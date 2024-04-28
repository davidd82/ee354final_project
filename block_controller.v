`timescale 1ns / 1ps

module block_controller(
	input clk, //this clock must be a slow enough clock to view the changing positions of the objects
	input mastClk,
	input bright,
	input rst,
	input up, input down, input left, input right,
	input [9:0] hCount, vCount,
	output reg [11:0] rgb,
	output reg [3:0] square
   );
	wire xo_fill;
	reg placeSym;
	reg [3:0] xoTurn;
	
	//these two values dictate the center of the block, incrementing and decrementing them leads the block to move in certain directions
	reg [9:0] xpos, ypos;
	
	wire [11:0] x1Color;
	reg [9:0] x1xpos, x1ypos;
	wire [11:0] x2Color;
	reg [9:0] x2xpos, x2ypos;
	wire [11:0] x3Color;
	reg [9:0] x3xpos, x3ypos;

	wire [11:0] o1Color;
	reg [9:0] o1xpos, o1ypos;
	wire [11:0] o2Color;
	reg [9:0] o2xpos, o2ypos;
	wire [11:0] o3Color;
	reg [9:0] o3xpos, o3ypos;

	wire [11:0] boardColor;
	
	tictactoeboard_rom tttb(.clk(mastClk), .row(vCount), .col(hCount), .color_data(boardColor));
	x_rom xSym1(.clk(mastClk), .row(vCount-yPos), .col(hCount-xpos), .color_data(x1Color));
	x_rom xSym2(.clk(mastClk), .row(vCount-yPos), .col(hCount-xpos), .color_data(x2Color));
	x_rom xSym3(.clk(mastClk), .row(vCount-yPos), .col(hCount-xpos), .color_data(x3Color));
	o_rom oSym1(.clk(mastClk), .row(vCount-yPos), .col(hCount-xpos), .color_data(o1Color));
	o_rom oSym2(.clk(mastClk), .row(vCount-yPos), .col(hCount-xpos), .color_data(o2Color));
	o_rom oSym3(.clk(mastClk), .row(vCount-yPos), .col(hCount-xpos), .color_data(o3Color));
	/*when outputting the rgb value in an always block like this, make sure to include the if(~bright) statement, as this ensures the monitor 
	will output some data to every pixel and not just the images you are trying to display*/
	always@ (*) begin
    	if(~bright )	//force black if not inside the display area
			rgb = 12'b0000_0000_0000;
		else if (xo_fill) begin
			case (xoTurn)
				4'b0000: rgb = x1Color;
				4'b0001: rgb = o1Color;
				4'b0010: rgb = x2Color;
				4'b0011: rgb = o2Color;
				4'b0100: rgb = x3Color;
				4'b0101: rgb = o3Color;
			endcase
			end
		else if (xoTurn > 4'b000 && x1_fill)
			rgb = x1Color;
		else if (xoTurn > 4'b001 && o1_fill)
			rgb = o1Color;
		else if (xoTurn > 4'b010 && x2_fill)
			rgb = x2Color;
		else if (xoTurn > 4'b011 && o2_fill)
			rgb = o2Color;
		else if (xoTurn > 4'b100 && x3_fill)
			rgb = x3Color;
		else if (xoTurn > 4'b101 && o3_fill)
			rgb = o3Color;
		else
			rgb = boardColor;
	end

	//the +-30 for the positions give the dimension of the XO symbol (60x60 pixels)
	assign xo_fill=vCount>=(ypos) && vCount<=(ypos+59) && hCount>=(xpos+1) && hCount<=(xpos+60);

	assign x1_fill=vCount>=(x1ypos-30) && vCount<=(x1ypos+30) && hCount>=(x1xpos-30) && hCount<=(x1xpos+30);
	assign x2_fill=vCount>=(x2ypos-30) && vCount<=(x2ypos+30) && hCount>=(x2xpos-30) && hCount<=(x2xpos+30);
	assign x3_fill=vCount>=(x3ypos-30) && vCount<=(x3ypos+30) && hCount>=(x3xpos-30) && hCount<=(x3xpos+30);
	assign o1_fill=vCount>=(o1ypos-30) && vCount<=(o1ypos+30) && hCount>=(o1xpos-30) && hCount<=(o1xpos+30);
	assign o2_fill=vCount>=(o2ypos-30) && vCount<=(o2ypos+30) && hCount>=(o2xpos-30) && hCount<=(o2xpos+30);
	assign o3_fill=vCount>=(o3ypos-30) && vCount<=(o3ypos+30) && hCount>=(o3xpos-30) && hCount<=(o3xpos+30);
	
	always@(posedge clk, posedge rst) 
	begin
		if(rst)
		begin 
			xoTurn = 0;
			placeSym<=0;
			//rough values for center of screen
			xpos<=450;
			ypos<=250;
		end
		else if (clk) begin
		
		/* Note that the top left of the screen does NOT correlate to vCount=0 and hCount=0. The display_controller.v file has the 
			synchronizing pulses for both the horizontal sync and the vertical sync begin at vcount=0 and hcount=0. Recall that after 
			the length of the pulse, there is also a short period called the back porch before the display area begins. So effectively, 
			the top left corner corresponds to (hcount,vcount)~(144,35). Which means with a 640x480 resolution, the bottom right corner 
			corresponds to ~(783,515).  
		*/
			if(right) begin
				placeSym <= 0;
				xpos<=xpos+2; //change the amount you increment to make the speed faster 
				if(xpos==800) //these are rough values to attempt looping around, you can fine-tune them to make it more accurate- refer to the block comment above
					xpos<=150;
			end
			else if(left) begin
				placeSym <= 0;
				xpos<=xpos-2;
				if(xpos==150)
					xpos<=800;
			end
			else if(down) begin
				placeSym <= 0;
				ypos<=ypos+2;
				if(ypos==514)
					ypos<=34;
			end
			// Place symbol on the screen
			else if(up && ~placeSym) begin
				placeSym <= 1;
				case (xoTurn)
					4'b0000: begin
						x1xpos<=xpos;
						x1ypos<=ypos;
					end
					4'b0001: begin
						o1xpos<=xpos;
						o1ypos<=ypos;
					end
					4'b0010: begin
						x2xpos<=xpos;
						x2ypos<=ypos;
					end
					4'b0011: begin
						o2xpos<=xpos;
						o2ypos<=ypos;
					end
					4'b0100: begin
						x3xpos<=xpos;
						x3ypos<=ypos;
					end
					4'b0101: begin
						o3xpos<=xpos;
						o3ypos<=ypos;
					end
					default: begin
						x1xpos<=0;
						x1ypos<=0;
						x2xpos<=0;
						x2ypos<=0;
						x3xpos<=0;
						x3ypos<=0;
						o1xpos<=0;
						o1ypos<=0;
						o2xpos<=0;
						o2ypos<=0;
						o3xpos<=0;
						o3ypos<=0;
					end
				endcase
				xoTurn<=xoTurn+1;
			end

		end
	end

	// Assign square reg different values based on the position of the block
	always@ (*) begin
		if(xpos >= 150 && xpos <= 330 && ypos >= 34 && ypos <= 164)
			square = 4'b0000;
		else if(xpos >= 380 && xpos <= 560 && ypos >= 34 && ypos <= 164)
			square = 4'b0001;
		else if(xpos >= 610 && xpos <= 790 && ypos >= 34 && ypos <= 164)
			square = 4'b0010;
		else if(xpos >= 150 && xpos <= 330 && ypos >= 209 && ypos <= 339)
			square = 4'b0011;
		else if(xpos >= 380 && xpos <= 560 && ypos >= 209 && ypos <= 339)
			square = 4'b0100;
		else if(xpos >= 610 && xpos <= 790 && ypos >= 209 && ypos <= 339)
			square = 4'b0101;
		else if(xpos >= 150 && xpos <= 330 && ypos >= 384 && ypos <= 514)
			square = 4'b0110;
		else if(xpos >= 380 && xpos <= 560 && ypos >= 384 && ypos <= 514)
			square = 4'b0111;
		else if(xpos >= 610 && xpos <= 790 && ypos >= 384 && ypos <= 514)
			square = 4'b1000;
		else
			square = 4'b1111;
	end
	
endmodule
