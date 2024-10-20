module fulladder(
    input wire a, b, cin,
    output wire sum, cout  
    );

    assign sum = a ^ b ^ cin;  
    assign cout = (a & b) | (cin & (a ^ b));
endmodule

module sum(
    input wire [6:0] inp,   
    output wire [2:0] op    
    );

    wire c1, c2, s1, s2, c3; 

    fulladder a1 (.a(inp[3]), .b(inp[2]), .cin(inp[1]), .sum(s1), .cout(c1));
    fulladder a2 (.a(inp[6]), .b(inp[5]), .cin(inp[4]), .sum(s2), .cout(c2));
    fulladder a3 (.a(s1), .b(s2), .cin(inp[0]), .sum(op[0]), .cout(c3));
    fulladder a4 (.a(c1), .b(c2), .cin(c3), .sum(op[1]), .cout(op[2]));

endmodule
