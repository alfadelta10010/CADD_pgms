module D_FF_P(d, clk, q);
input logic d, clk;
output logic q;
always_ff @ (posedge clk)
	begin
	q <= d;
	end
endmodule