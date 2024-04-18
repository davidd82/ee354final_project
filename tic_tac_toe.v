`timescale 1 ns / 100 ps

module tic_tac_toe (Start, Ack, Clk, Reset, BtnL, BtnR, BtnU, BtnD, BtnC,
				Xwins, Owins, Qi, Qs, Qx, Qo, Qd, P1s, P2s);

input Start, Ack, Clk, Reset;
input BtnL, BtnR, BtnU, BtnD, BtnC; // Inputs from the buttons

output Qi, Qs, Qx, Qo, Qd;   // States
output [11:0] P1s;           // Player 1 score
output [11:0] P2s;           // Player 2 score
output Xwins;  				 // Flag for when X wins
output Owins;  				 // Flag for when O wins


// Rest are wire by default
reg [4:0] state;			 // States
reg [3:0] counter;			 // Keeps track of number of moves played
reg [3:0] pos;					 // Position in the board
reg Xwins;					 // Flag for when X wins
reg Owins;					 // Flag for when O wins

reg board [0:8]		 // array to store game board with each cell holding a single bit

localparam
INI	 = 5'b00001,
STA  = 5'b00010,
XTU	 = 5'b00100,
OTU  = 5'b01000,
DONE = 5'b10000;
UNK  = 5'bXXXXX;

assign {Qi, Qs, Qx, Qo, Qd} = state;

always @(posedge Clk, posedge Reset) 

  begin  : CU_n_DU
    if (Reset)
       begin
          state <= INI;
	      P1s <= 12'bXXXXXXXXXXXX;      // to avoid recirculating mux controlled by Reset
	      P2s <= 12'bXXXXXXXXXXXX;	    // to avoid recirculating mux controlled by Reset 
          counter <= 4'bXXX;           // to avoid recirculating mux controlled by Reset
	    end
    else
       begin
         (* full_case, parallel_case *)
         case (state)
	        INI	: // Show Board on screen and reset scores for each player
	          begin
		        // state transitions in the control unit
		        if (Start)
		          state <= STA;
		        // RTL operations in the DPU (Data Path Unit) 
				P1s <= 0;
				P2s <= 0;
	          end
	        STA	:  // Clear Board and Reset counter registers for O and X turns
	          begin
		        // state transitions in the control unit
				state <= XTU;
		        // RTL operations in the Data Path
				pos <= 0;
				counter <= 0;
				Xwins <= 0;
				Owins <= 0;
 	          end
			XTU	:  // X's turn and check if winner
			   begin
				// state transitions in the control unit
				if (counter == 9 || Xwins)
					state <= Done;
				if(counter[0])
					state <= OTU;
				// RTL operations in the Data Path 		           
				if(BtnU) begin
					board[pos] <= 1;
					counter <= counter + 1;
					if((board[0] == board[1] == board[2]) || (board[3] == board[4] == board[5]) || (board[6] == board[7] == board[8]) 
						|| (board[0] == board[3] == board[6]) || (board[1] == board[4] == board[7]) || (board[2] == board[5] == board[8]) 
						|| (board[0] == board[4] == board[8]) || (board[2] == board[4] == board[6])) begin
						Xwins <= 1;
						P1s <= P1s + 1;
					end
				end
				if(BtnR) begin
					case (pos)
						2: pos <= 0;
						5: pos <= 3;
						8: pos <= 6;
						default: pos <= pos + 1;
					endcase
				end
				if(BtnD) begin
					case (pos)
						6: pos <= 0;
						7: pos <= 1;
						8: pos <= 2;
						default: pos <= pos + 3;
					endcase
				end
			   end
			OTU	:  // O's turn and check if winner
			   begin
				// state transitions in the control unit
				if (counter == 9)
					state <= Done;
				if (~counter[0])
					state <= XTU;
				// RTL operations in the Data Path
				if(BtnU)
					begin
						board[pos] <= 0;
						counter <= counter + 1;
						if (board[0] == board[1] == board[2] || board[3] == board[4] == board[5] || board[6] == board[7] == board[8] 
							|| board[0] == board[3] == board[6] || board[1] == board[4] == board[7] || board[2] == board[5] == board[8] 
							|| board[0] == board[4] == board[8] || board[2] == board[4] == board[6]) begin
							Owins <= 1;
							P2s <= P2s + 1;
						end
					end
				if(BtnR) begin
					case (pos)
						2: pos <= 0;
						5: pos <= 3;
						8: pos <= 6;
						default: pos <= pos + 1;
					endcase
				end
				if(BtnD) begin
					case (pos)
						6: pos <= 0;
						7: pos <= 1;
						8: pos <= 2;
						default: pos <= pos + 3;
					endcase
				end
			   end
	        DONE	:
	          begin  
		        // state transitions in the control unit
		        if (Ack)
		        	state <= INI;
				if (BtnL)
					state <= STA;
	          end
			default:
				state <= UNK;
      endcase
    end 
  end
 
endmodule  
