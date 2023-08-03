// DFF with sync active low reset
module D_FF_P_SNR(d, clk, reset, q);
input logic d, clk, reset;
output logic q;
always_ff @(posedge clk)
	begin
	if(~reset)
		q <= 1'b0;
	else
		q <= d;
	end
endmodule