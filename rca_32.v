module rca_32(a,b,s,cin,cout);

input [31:0]a,b;
input cin;
output [31:0]s;
output cout ;

wire cout1;

rca_16 s1(a[15:0],b[15:0],s[15:0],cin,cout1);
rca_16 s2(a[31:16],b[31:16],s[31:16],cout1,cout);

endmodule
