module CLA_8Bit(a, b, cin, s, cout);
input logic [7:0] a;
input logic [7:0] b;
output logic [7:0] s;
input logic cin;
output logic cout;
logic c;
CLA_4Bit fa1(a[3:0], b[3:0], cin, s[3:0], c);
CLA_4Bit fa2(a[7:4], b[7:4], c, s[7:4], cout);
endmodule