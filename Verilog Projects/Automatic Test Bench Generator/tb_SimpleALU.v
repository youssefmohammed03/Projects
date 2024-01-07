// Testbench for SimpleALU
`timescale 1ns / 1ps

module SimpleALU_tb;

  reg [3:0] operandA;
  reg [3:0] operandB;
  reg [2:0] aluOp;
  integer i;

  wire result;

  SimpleALU DUT (
    .operandA(operandA),
    .operandB(operandB),
    .aluOp(aluOp),
    .result(result)
  );

  initial begin


	//Direct Case

		operandA = 10;
		operandB = 0;
		aluOp = 3'b001;
		#10;


    // Random Test Cases
    for (i = 0; i < 5000; i = i + 1) begin
      #10;
      operandA = $random();
      operandB = $random();
      aluOp = $random();
    end

  end

  // Monitoring signals
initial begin
	$monitor("operandA = %b, operandB = %b, aluOp = %b, result = %b", operandA, operandB, aluOp, result);
end
endmodule