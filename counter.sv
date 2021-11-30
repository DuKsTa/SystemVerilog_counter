module counter(
input logic clk, reset,
output logic [5:0] value, output logic [6:0]data1, output logic [6:0]data10);



sevenseg2 s0(.address(value), .data1(data1), .data10(data10)); // sets the value of the counter as an input

always_ff @(negedge clk, negedge reset)

 if (~reset)
 value <= 0;
 else
 value <= value + 1;

endmodule

