module WB_Stage (
    input [31:0] ALU_result,
    MEM_result,
    input MEM_R_en,
    output [31:0] out
);
  // MUX mux (
  //     ALU_result,
  //     MEM_result,
  //     MEM_R_en,
  //     out
  // );
  assign out = MEM_R_en ? MEM_result : ALU_result;
endmodule
