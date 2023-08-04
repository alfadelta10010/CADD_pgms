// 2 bit up counter
module up_count(clk, q);
input logic clk;
output logic [1:0]q;
assign q = 2'b00;
always_ff @(posedge clk)
	begin
	q <= q + 1'b1;
	end
endmodule