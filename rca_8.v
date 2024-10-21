module rca_8(a,b,s,cin,cout); // 8 Bit Ripple Carry Adder
input [7:0]a,b;
input cin;
output [7:0]s;
output cout ;
wire cout1;
  
rca l1(a[3:0],b[3:0],s[3:0],cin,cout1);
rca l2(a[7:4],b[7:4],s[7:4],cout1,cout);

endmodule 
