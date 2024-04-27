//////////////////////////////////////////////////////////////////////////////////
// Author:			Shideh Shahidi, Bilal Zafar, Gandhi Puvvada
// Create Date:   02/25/08, 10/13/08
// File Name:		ee201_GCD_tb.v 
// Description: 
//
//
// Revision: 		2.1
// Additional Comments:  
// 10/13/2008 Clock Enable (CEN) has been added by Gandhi
// 3/1/2010 Signal names are changed in line with the divider_verilog design
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 1ps

module tictactoe_tb_v;

	// Inputs
	reg Clk, CEN;
	reg reset;
	reg BtnL;
    reg BtnR;
	reg BtnU;
	reg BtnD;
	reg BtnC;


	// Outputs
	wire [11:0] P1s, P2s;
	wire Qi;
	wire Qs;
	wire Qx;
	wire Qo;
    wire Qd;

	reg [4:0] state;			 // States
    reg [3:0] counter;			 // Keeps track of number of moves played
    reg [3:0] pos;					 // Position in the board
    reg Xwins;					 // Flag for when X wins
    reg Owins;					 // Flag for when O wins
    reg [11:0] P1s;
    reg [11:0] P2s;
	reg [6*8:0] state_string; // 6-character string for symbolic display of state
	// Instantiate the Unit Under Test (UUT)
	ee354_tictactoe uut (
		.Clk(Clk), 
		.reset(reset), 
        .Btnl(Btnl),
        .BtnR(BtnR),
        .BtnU(BtnU),
        .BtnD(BtnD),
        .BtnC(BtnC),
		.P1s(P1s), 
		.P2s(P2s), 
		.Qi(Qi),
        .Qs(Qs),
        .Qx(Qx),
        .Qo(Qo),
        .Qd(Qd),
        .state(state),
        .counter(counter),
        .pos(pos),
        .Xwins(Xwins),
        .Owins(Owins)
	);
		
		initial begin
			begin: CLOCK_GENERATOR
				Clk = 0;
				forever begin
					#5 Clk = ~ Clk;
				end
			end
		end
		initial begin
			#0 reset = 0;
			#20 reset = 1;
			#20 reset = 0;
		end
		
		/*-------- clock counter --------*/
		integer clk_cnt, start_clk_cnt, clocks_taken;
		always @(posedge Clk) begin
			if(reset) begin
				clk_cnt = 0;
			end
			else begin
				clk_cnt = clk_cnt + 1;
			end
		end
		initial begin
		// Initialize Inputs
		CEN = 1; // ****** in Part 2 ******
				 // Here, in Part 1, we are enabling clock permanently by making CEN a '1' constantly.
				 // In Part 2, your TOP design provides single-stepping through SCEN control.
				 // We are not planning to write a testbench for the part 2 design. However, if we were 
				 // to write one, we will remove this line, and make CEN enabled and disabled to test 
				 // single stepping.
				 // One of the things you make sure in your core design (DUT) is that when state 
				 // transitions are stopped by making CEN = 0,
				 // the data transformations are also stopped.
        pos = 0;
        counter = 0;
        Xwins = 0;
        Owins = 0;
		start_clk_cnt = 0;
		clocks_taken = 0;


		// Wait 100 ns for global reset to finish
		#103;
        $display("Xwins: %d, Owins: %d, pos: %d, counter: %d", Xwins, Owins, pos, counter);
		$display("It took %d clock(s) to compute the GCD", clocks_taken);
		#20;
		// stimulus-1 GCD(36, 24)
		// Initialize Inputs
		Xwins = 1;
        Owins = 1;
		@(posedge Clk);									
		

		// generate a Start pulse
		@(posedge Clk);	
        @(posedge Clk);	

        $display("Xwins: %d, Owins: %d, pos: %d, counter: %d", Xwins, Owins, pos, counter);
		$display("It took %d clock(s) to compute the GCD", clocks_taken);
		#20;
        
		wait(Qx);
		@(posedge Clk);
			#1;
			BtnU <= 1;

        $display("Xwins: %d, Owins: %d, pos: %d, counter: %d", Xwins, Owins, pos, counter);
		$display("It took %d clock(s) to compute the GCD", clocks_taken);
		#20;
								
	end
	
	always @(*)
		begin
			case ({Qi, Qs, Qx, Qo, Qd})    // Note the concatenation operator {}
            	5'b10000: state_string = "Qd    ";
				5'b01000: state_string = "Qo   ";  // ****** TODO ******
				5'b00100: state_string = "Qx ";  // Fill-in the three lines
				5'b00010: state_string = "Qs";
				5'b00001: state_string = "Qi";			
			endcase
		end
 
      
endmodule
