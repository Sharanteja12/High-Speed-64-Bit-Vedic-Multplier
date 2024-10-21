module vedic_8x8(a,b,y);
input [7:0] a,b;
output [15:0] y;

wire [7:0] s1,s2,s3,s4,s5,s6,s7,s8,s9;
  
vedic_4x4 v41(a[3:0],b[3:0],s1);
vedic_4x4 v42(a[7:4],b[7:4],s4);
vedic_4x4 v43(a[3:0],b[7:4],s2);
vedic_4x4 v44(a[7:4],b[3:0],s3);
  
rca_8 a1(s2,s3,s5,0,cout1);

  assign s6 = {4'b0000,s1[7:4]}; // concetanation

rca_8 a2(s5,s6,s7,0,cout2);

  assign s8 = {3'b000,(cout2|cout1),s7[7:4]}; // concetanation

rca_8 a3(s4,s8,s9,0,cout3);

assign y[3:0] = s1[3:0];
assign y[7:4] = s7[3:0];
assign y[15:8] = s9[7:0];

endmodule
