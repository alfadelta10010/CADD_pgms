module HA(a,b,s,c);
input logic a, b;
output logic s, c;
And_1 g1(a, b, c);
Xor_1 g2(a, b, s);
endmodule
