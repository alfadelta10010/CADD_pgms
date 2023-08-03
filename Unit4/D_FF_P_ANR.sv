// DFF with async active low reset
module D_FF_P_ANR(d, clk, reset, q);
input logic d, clk, reset;
output logic q;
always_ff @(negedge reset, posedge clk)
	begin
	if(~reset)
		q <= 1'b0;
	else
		q <= d;
	end
endmodule