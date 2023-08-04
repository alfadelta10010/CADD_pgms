module divideBy3FSM (clk, res, y);
input logic clk, res;
output logic y;
typedef enum logic [1:0] {s0, s1, s2} statetypes;
statetype state, nextstate;
always_ff @ (posedge clk, posedge reset)
	if(reset)
		state < = s0;
	else
		state <= nextstate;
always_comb
	case(state)
		s0: nextstate = s1;
		s1: nextstate = s2;
		s2: nextstate = s0;
		default:  nextstate = s0;
	endcase
assign y = (state == s0);
endmodule