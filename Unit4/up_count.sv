// 2 bit up counter
module up_count(clk, q);
input logic clk;
output logic q[1:0];
assign q = 2'b00;
always_ff @(posedge clk)
	begin
	q <= q + 1;
	end
endmodule