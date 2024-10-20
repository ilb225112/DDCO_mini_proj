# Codes to run file:
    iverilog -o ab  norm1.v norm1_tb.v
    vvp ab
    gtkwave waveform.vcd
    