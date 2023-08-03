// 4-bit up counter wuth negative edge clk and active async high reset
module up_count_N_AR(clk, q, r)
input logic clk, r;
output logic q[3:0];
assign q = 4'b0000;
always_ff @(posedge r, negedge clk)
	begin
	if(R)
		q <= 4'b000;
	else
		q <= q + 1;
	end
endmodule