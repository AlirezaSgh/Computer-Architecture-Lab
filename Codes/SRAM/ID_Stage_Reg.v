module ID_Stage_Reg (
    input clk,
    rst, freeze,
    flush,
    WB_EN_IN,
    MEM_R_EN_IN,
    MEM_W_EN_IN,
    B_IN,
    S_IN,
    input [3:0] EXE_CMD_IN,
    SR_IN,  //added
    input [31:0] PC_IN,
    Val_Rn_IN,
    Val_Rm_IN,
    input imm_IN,
    input [11:0] Shift_operand_IN,
    input [23:0] Signed_imm_24_IN,
    input [3:0] Dest_IN,
    Src1_IN,
    Src2_IN,
    output reg WB_EN,
    MEM_R_EN,
    MEM_W_EN,
    B,
    S,
    output reg [3:0] EXE_CMD,
    output reg [31:0] PC,
    Val_Rn,
    Val_Rm,
    output reg imm,
    output reg [11:0] Shift_operand,
    output reg [23:0] Signed_imm_24,
    output reg [3:0] Dest,
    Src1,
    Src2,
    SR_OUT  //added
);
  always @(posedge clk, posedge flush) begin
    if (flush) begin
      WB_EN <= 0;
      MEM_R_EN <= 0;
      MEM_W_EN <= 0;
      B <= 0;
      S <= 0;
      EXE_CMD <= 0;
      PC <= 0;
      Val_Rn <= 0;
      Val_Rm <= 0;
      imm <= 0;
      Shift_operand <= 0;
      Signed_imm_24 <= 0;
      Dest <= 0;
      Src1 <= 0;
      Src2 <= 0;
      SR_OUT <= 0;

    end else if (rst | flush) begin
      WB_EN <= 0;
      MEM_R_EN <= 0;
      MEM_W_EN <= 0;
      B <= 0;
      S <= 0;
      EXE_CMD <= 0;
      PC <= 0;
      Val_Rn <= 0;
      Val_Rm <= 0;
      imm <= 0;
      Shift_operand <= 0;
      Signed_imm_24 <= 0;
      Dest <= 0;
      Src1 <= 0;
      Src2 <= 0;
      SR_OUT <= 0;

    end else if (~freeze) begin
      WB_EN <= WB_EN_IN;
      MEM_R_EN <= MEM_R_EN_IN;
      MEM_W_EN <= MEM_W_EN_IN;
      B <= B_IN;
      S <= S_IN;
      EXE_CMD <= EXE_CMD_IN;
      PC <= PC_IN;
      Val_Rn <= Val_Rn_IN;
      Val_Rm <= Val_Rm_IN;
      imm <= imm_IN;
      Shift_operand <= Shift_operand_IN;
      Signed_imm_24 <= Signed_imm_24_IN;
      Dest <= Dest_IN;
      Src1 <= Src1_IN;
      Src2 <= Src2_IN;
      SR_OUT <= SR_IN;
    end
  end
endmodule
