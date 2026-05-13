`timescale 1ns/1ps
module csa_tb;

  reg  [3:0] a, b, c;
  wire [4:0] result;
  wire sum, carry;

  csa dut (
    .a(a),
    .b(b),
    .c(c),
    .sum(sum),
    .carry(carry),
    .result(result)
  );

  initial begin

    // Test case 1
    a = 4'b0001;
    b = 4'b0010;
    c = 4'b0011;
    #10;

    // Test case 2
    a = 4'b0101;
    b = 4'b0011;
    c = 4'b0001;
    #10;

    // Test case 3
    a = 4'b1111;
    b = 4'b0001;
    c = 4'b0010;
    #10;

    // Test case 4
    a = 4'b1010;
    b = 4'b0101;
    c = 4'b0011;
    #10;

    $finish;
  end
endmodule

