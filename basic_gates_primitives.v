module basic_gates(input a,b, output out_and,out_or,out_nota,out_notb,out_nand,out_nor,out_xor,out_xnor);
  and g1(out_and,a,b);
  or g2(out_or,a,b);
  not g3(out_nota,a);
  not g4(out_notb,b);
  not g5(out_nand,out_and);
  not g6(out_nor,out_or);
  xor g7(out_xor,a,b);
  not g8(out_xnor,out_xor);
endmodule


