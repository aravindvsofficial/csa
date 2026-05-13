module full_adder(
    input a, b, cin,
    output sum, carry
);

assign sum   = a ^ b ^ cin;
assign carry = (a & b) | (b & cin) | (a & cin);

endmodule

module csa(
    input  [3:0] a, b, c,
    output [3:0] sum, carry,
    output [4:0] result
);

    wire [3:0] csa_sum, csa_carry;

    full_adder fa1(a[0], b[0], c[0], csa_sum[0], csa_carry[0]);
    full_adder fa2(a[1], b[1], c[1], csa_sum[1], csa_carry[1]);
    full_adder fa3(a[2], b[2], c[2], csa_sum[2], csa_carry[2]);
    full_adder fa4(a[3], b[3], c[3], csa_sum[3], csa_carry[3]);

    assign sum   = csa_sum;
    assign carry = csa_carry;

    wire [4:0] carry_shifted;
    assign carry_shifted = {csa_carry, 1'b0};

    wire c1, c2, c3, c4, cout;
    wire [4:0] final_sum;

    full_adder cpa0(csa_sum[0], carry_shifted[0], 1'b0, final_sum[0], c1);
    full_adder cpa1(csa_sum[1], carry_shifted[1], c1,   final_sum[1], c2);
    full_adder cpa2(csa_sum[2], carry_shifted[2], c2,   final_sum[2], c3);
    full_adder cpa3(csa_sum[3], carry_shifted[3], c3,   final_sum[3], c4);
    full_adder cpa4(1'b0, carry_shifted[4], c4, final_sum[4], cout);

    assign result = final_sum;

endmodule
