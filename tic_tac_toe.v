`timescale 1 ns / 100 ps

module tic_tac_toe (Start, Ack, Clk, Reset, 
				Xwins, Owins, Qi, Qs, Qx, Qxw, Qo, Qow, Qd, P1s, P2s);

input Start, Ack, Clk, Reset;

output Qi, Qs, Qx, Qxw, Qo, Qow, Qd;   // States
output [11:0] P1s;           // Player 1 score
output [11:0] P2s;           // Player 2 score
output Xwins;  				 // Flag for when X wins
output Owins;  				 // Flag for when O wins


// Rest are wire by default
reg [6:0] state;			 // States
reg [3:0] counter;			 // Keeps track of number of moves played
reg xCoord;					 // X coordinate of the board
reg yCoord;					 // Y coordinate of the board
reg Xwins;					 // Flag for when X wins
reg Owins;					 // Flag for when O wins

reg board [0:2] [0:2]		 // 2D array that is 3 X 3 with each cell holding a single bit

localparam
INI	 = 7'b0000001,
STA  = 7'b0000010,
XTU	 = 7'b0000100,
XWA	 = 7'b0001000,
OTU  = 7'b0010000,
OWA  = 7'b0100000,
DONE = 7'b1000000;
UNK  = 7'bXXXXXXX;

assign {Qi, Qs, Qx, Qxw, Qo, Qow, Qd} = state;

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
				counter <= 0;
				Xwins <= 0;
				Owins <= 0;
 	          end
			XTU	:  // X's turn and check if winner
			   begin
				// state transitions in the control unit
				if ((counter == 9) || (Xwins == 1) || (Owins == 1))
					state <= Done;
				if(counter[0])
					state <= OTU;
				// RTL operations in the Data Path 		           
				
				counter <= counter + 1;
			   end
			OTU	:  // O's turn and check if winner
			   begin
				// state transitions in the control unit
				if ((Xwins == 1) || (Owins == 1))
					state <= Done;
				if (~counter[0])
					state <= XTU;
				// RTL operations in the Data Path
				counter <= counter + 1;	 
			   end
	        DONE	:
	          begin  
		         // state transitions in the control unit
		         if (Ack)
		           state <= INI;
		       end
			default:
				state <= UNK;
      endcase
    end 
  end
 
endmodule  
