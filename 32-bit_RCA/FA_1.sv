module FA_1(a, b, cin, sum, cout);
input logic a, b, cin;
output logic sum, cout;
logic P, R, Q;
HA ha1(a, b, P, Q);
HA ha2(P, cin, sum, R);
Or_1 o1(Q, R, cout);
endmodule
