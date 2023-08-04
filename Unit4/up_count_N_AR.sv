// 4-bit up counter wuth negative edge clk and active async high reset
module up_count_N_AR(clk, q, r);
input logic clk, r;
output logic [3:0]q;
assign q = 4'b0000;
always_ff @(posedge r, negedge clk)
	begin
	if(r)
		q <= 4'b000;
	else
		q <= q + 1;
	end
endmodule