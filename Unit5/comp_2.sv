module comp_2(a, b, g, e, l);
input logic [1:0] a;
input logic [1:0] b;
output logic g, e, l;
assign g = 1'b0;
assign l = 1'b0; 
assign e = 1'b0;
always_comb
	begin
		if(a>b) 
			g = 1'b1;
		else if(a<b) 
			l = 1'b1;
		else 
			e = 1'b1;
	end
endmodule