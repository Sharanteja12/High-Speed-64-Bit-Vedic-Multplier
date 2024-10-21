module rca_16(a,b,s,cin,cout);

input [15:0]a,b;
input cin;
output [15:0]s;
output cout ;

wire cout1;
rca_8 l1(a[7:0],b[7:0],s[7:0],cin,cout1);
rca_8 l2(a[15:8],b[15:8],s[15:8],cout1,cout);

endmodule
