`timescale 1 ns / 100 ps

module tic_tac_toe (Start, Ack, Clk, Reset, 
				Xwins, Owins, Qi, Qs, Qx, Qo, Qd, P1s, P2s);

input Start, Ack, Clk, Reset;

output Qi, Qs, Qx, Qo, Qd;   // States
output [11:0] P1s;           // Player 1 score
output [11:0] P2s;           // Player 2 score
output Xwins;  				 // Flag for when X wins
output Owins;  				 // Flag for when O wins


// Rest are wire by default
reg [4:0] state;			 // States
reg [2:0] Xcounter;			 // Keeps track of how many moves X has played
reg {2:0} Ocounter;			 // Keeps track of how many moves O has played *MIGHT NOT NEED THIS
reg Xwins;					 // Flag for when X wins
reg Owins;					 // Flag for when O wins

reg board [0:2] [0:2]		 // 2D array that is 3 X 3 with each cell holding a single bit

localparam
INI	 = 5'b00001,
STA  = 5'b00010,
XTU	 = 5'b00100,
OTU  = 5'b01000,
DONE = 5'b10000;

assign {Qd, Qo, Qx, Qs, Qi} = state;

always @(posedge Clk, posedge Reset) 

  begin  : CU_n_DU
    if (Reset)
       begin
          state <= INI;
	      P1s <= 12'bXXXXXXXXXXXX;      // to avoid recirculating mux controlled by Reset
	      P2s <= 12'bXXXXXXXXXXXX;	    // to avoid recirculating mux controlled by Reset 
          Xcounter <= 3'bXXX;           // to avoid recirculating mux controlled by Reset
          Ocounter <= 3'bXXX;           // to avoid recirculating mux controlled by Reset
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
				 Xcounter <= 0;	
				 Ocounter <= 0;	 
 	          end
			XTU	:  // X's turn and check if winner
			   begin
				// state transitions in the control unit
				if ((Xcounter == 4) || (Xwins == 1) || (Owins == 1))
					state <= Done;
				else 
					state <= OTU;
				// RTL operations in the Data Path 		           
				Xcounter <= Xcounter + 1;		 
			   end
			OTU	:  // O's turn and check if winner
			   begin
				// state transitions in the control unit
				if ((Xwins == 1) || (Owins == 1))
					state <= Done;
				else 
					state <= XTU;
				// RTL operations in the Data Path 		           
				Xcounter <= 0;	
				Ocounter <= 0;	 
			   end
	        DONE	:
	          begin  
		         // state transitions in the control unit
		         if (Ack)
		           state <= INI;
		       end    
      endcase
    end 
  end
 
endmodule  
