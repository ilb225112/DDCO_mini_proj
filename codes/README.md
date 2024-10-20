# Codes to run file:
    iverilog -o ab  norm1.v norm1_tb.v
    vvp ab
    gtkwave waveform.vcd

# gtkwave output : 
->on double click on inp[6:0] and op[2:0] each bit's waveform is displayed

![image](https://github.com/user-attachments/assets/e08e83d1-8198-4473-9ebb-8c46223c0cfb)
