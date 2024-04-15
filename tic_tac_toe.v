`timescale 1 ns / 100 ps

module tic_tac_toe (Ain, Bin, Start, Ack, Clk, Reset, 
				Flag, Qi, Qc, Qd, A);

input [11:0] Ain, Bin;
input Start, Ack, Clk, Reset;
output Flag;  // Flag FF
output Qi, Qc, Qd;
output [11:0] A;

// Rest are wire by default
reg [11:0] A, B;
reg [2:0] state;
reg Flag;

localparam
INI	= 3'b001,
ADJ	= 3'b010,
DONE = 3'b100;

assign {Qd, Qc, Qi} = state;

always @(posedge Clk, posedge Reset) 

  begin  : CU_n_DU
    if (Reset)
       begin
          state <= INI;
	      A <= 12'bXXXXXXXXXXXX;        // to avoid recirculating mux controlled by Reset
	      B <= 12'bXXXXXXXXXXXX;	    // to avoid recirculating mux controlled by Reset 
		  Flag <= 1'bX;                 // to avoid ...
	    end
    else
       begin
         (* full_case, parallel_case *)
         case (state)
	        INI	: 
	          begin
		         // state transitions in the control unit
		         if (Start)
		           state <= ADJ;
		         // RTL operations in the DPU (Data Path Unit) 
		           A <= Ain;
		           B <= Bin;
		           Flag <= 0;
	          end
	        ADJ	:  // ** TODO **  complete RTL Operations and State Transitions
	          begin
		         // state transitions in the control unit
				 if ((A == B) || ((A < B) && (Flag == 1)))
				 	state <= DONE;
				 else 
				 	state <= ADJ;
		         // RTL operations in the Data Path 		           

				 if ((A < B) && (Flag == 0))
				 	A <= A + 100;
				
				 if (A > B)
					begin
						Flag <= 1;
						A <= A - 10;
					end			 
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
