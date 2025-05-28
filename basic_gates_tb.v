module basic_gates_tb;
    reg a,b;
    wire out_and,out_or,out_nota,out_notb,out_nand,out_nor,out_xor,out_xnor;
    basic_gates g(.a(a),.b(b),.out_and(out_and),.out_or(out_or),.out_nota(out_nota),.out_notb(out_notb),.out_nand(out_nand),.out_nor(out_nor),.out_xor(out_xor),.out_xnor(out_xnor));
    initial
    begin 
    $display("a b|AND OR NOtA NOTB NAND NOR XOR XNOR");
    $monitor("%b %b  %b  %b  %b  %b  %b  %b  %b  %b ",a,b,out_and,out_or,out_nota,out_notb,out_nand,out_nor,out_xor,out_xnor);
      $dumpfile("wave.vcd");
      $dumpvars(0,basic_gates_tb);
    #10 a=0;b=0;
    #10 a=0;b=1;
    #10 a=1;b=0;
    #10 a=1;b=1;
    #10 $finish;
        
    end
endmodule