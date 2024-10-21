module fa(a, b, cin, s, cout);

    input a, b, cin;
    output s, cout;

  
    wire s1, q, r;
    xor g1(s1, a, b);
  xor g2(s, s1, cin); // s = a^b^cin
    and an1(q, s1, cin);
    and an2(r, a, b);
  or o1(cout, q, r);   // cout = (a^b).cin + a.b
  
endmodule
