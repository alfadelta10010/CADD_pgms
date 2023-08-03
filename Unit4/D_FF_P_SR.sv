// DFF with sync Reset
module D_FF_P_SR(d, clk, reset, q);
input logic d, clk, reset;
output logic q;
always_ff @(posedge clk)
	begin
	if(reset)
		q <= 1'b0;
	else
		q <= d;
	end
endmodule