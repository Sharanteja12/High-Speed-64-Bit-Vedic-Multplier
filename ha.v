module ha(a, b, s, cout);
input a, b;
output s, cout;
xor(s, a, b);
and(cout, a, b);
endmodule
