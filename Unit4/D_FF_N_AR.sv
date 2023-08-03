// DFF neg edge clock with async active high reset
module D_FF_N_AR(d, clk, reset, q);
input logic d, clk, reset;
output logic q;
always_ff @(negedge clk, posedge reset)
	begin
	if(reset)
		q <= 1'b0;
	else
		q <= d;
	end
endmodule