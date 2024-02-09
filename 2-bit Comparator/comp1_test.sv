module comp1_test();
reg a; 
reg b;
wire g;
wire e;
wire l;
comp1 uut(.a(a), .b(b), .g(g), .e(e), .l(l));
initial
	begin
		a = 1'b0; b = 1'b0; #10;
		b = 1'b1; #10;
		a = 1'b1; b = 1'b0; #10;
		b = 1'b1; #10;
	end
endmodule
