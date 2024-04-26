`timescale 1ns / 1ps

module block_controller(
	input clk, //this clock must be a slow enough clock to view the changing positions of the objects
	input mastClk,
	input bright,
	input rst,
	input up, input down, input left, input right,
	input [9:0] hCount, vCount,
	output reg [11:0] rgb,
	output reg [11:0] background
   );
	wire xo_fill;
	
	//these two values dictate the center of the block, incrementing and decrementing them leads the block to move in certain directions
	reg [9:0] xpos, ypos;
	wire [11:0] boardColor;
	wire [11:0] xoColor;
	
	tictactoeboard_rom tttb(.clk(mastClk), .row(hCount), .col(vCount), .color_data(boardColor));
	x_rom xSym(.clk(mastClk), .row(hCount), .col(vCount), .color_data(xoColor));
	/*when outputting the rgb value in an always block like this, make sure to include the if(~bright) statement, as this ensures the monitor 
	will output some data to every pixel and not just the images you are trying to display*/
	always@ (*) begin
    	if(~bright )	//force black if not inside the display area
			rgb = 12'b0000_0000_0000;
		else if (xo_fill)
			rgb = xoColor; 
		else	
			rgb=background;
	end
		//the +-30 for the positions give the dimension of the XO symbol (60x60 pixels)
	assign xo_fill=vCount>=(ypos-30) && vCount<=(ypos+30) && hCount>=(xpos-30) && hCount<=(xpos+30);
	
	always@(posedge clk, posedge rst) 
	begin
		if(rst)
		begin 
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
				xpos<=xpos+150; //change the amount you increment to make the speed faster 
				if(xpos==800) //these are rough values to attempt looping around, you can fine-tune them to make it more accurate- refer to the block comment above
					xpos<=150;
			end
			else if(left) begin
				xpos<=xpos-150;
				if(xpos==150)
					xpos<=800;
			end
			else if(up) begin
				ypos<=ypos-150;
				if(ypos==34)
					ypos<=514;
			end
			else if(down) begin
				ypos<=ypos+150;
				if(ypos==514)
					ypos<=34;
			end
		end
	end

	always@(posedge clk, posedge rst) begin
		if(rst)
			background <= 12'b1111_1111_1111;
		else 
			background <= boardColor;
	end
	
endmodule
