// DFF with Async Reset
module D_FF_P_AR(d, clk, reset, q);
input logic d, clk, reset;
output logic q;
always_ff @(posedge reset, posedge clk)
	begin
	if(reset)
		q <= 1'b0;
	else
		q <= d;
	end
endmodule