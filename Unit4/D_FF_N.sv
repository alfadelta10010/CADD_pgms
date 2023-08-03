module D_FF_N(d, clk, q);
input logic d, clk;
output logic q;
always_ff @ (negedge clk)
	begin
	q <= d;
	end
endmodule