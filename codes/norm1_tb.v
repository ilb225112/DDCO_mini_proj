`timescale 1ns/1ps  // Define the time unit and time precision

module testbench;
    reg [6:0] inp;    
    wire [2:0] op;    

    sum uut (.inp(inp),.op(op));
    
    initial begin
        inp = 7'b0100100;
        #10;          
        inp = 7'b0110101;
        #10;
        inp = 7'b1010000;
        #10;
        inp = 7'b1111111;
        #10;
        $finish;
    end

    initial begin
        $monitor("At time %t: inp = %b (%d), op = %d", $time, inp,inp, op);
    end

    initial begin
        $dumpfile("waveform.vcd");  
        $dumpvars(0, testbench);    
    end
endmodule
