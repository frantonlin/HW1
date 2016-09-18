module demorgan
(
  input  A,          // Single bit inputs
  input  B,
  output nA,         // Output intermediate complemented inputs
  output nB,
  output nAandnB,     // Single bit output, (~A)*(~B)
  output AandB,
  output nAandB,
  output nAornB,
  output AorB,
  output nAorB
);

  wire nA;
  wire nB;
  not Ainv(nA, A);      // Top inverter is named Ainv, takes signal A as input and produces signal nA
  not Binv(nB, B);
  and andgate(nAandnB, nA, nB);     // AND gate produces nAandnB from nA and nB
  and andgate(AandB, A, B);
  not AandBinv(nAandB, AandB);
  or orgate(nAornB, nA, nB);
  or orgate(AorB, A, B);
  not AorBinv(nAorB, AorB);

endmodule