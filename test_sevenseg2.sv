module test_sevenseg2;

logic [6:0] data; 
logic [6:0] data0;
logic [3:0] address;

sevenseg2 s0 (.*);

initial
  begin
  address = 'X;
  #10ns address = 0;
  #10ns address = 1;
  #10ns address = 2;
  #10ns address = 3;
  #10ns address = 4;
  #10ns address = 5;
  #10ns address = 6;
  #10ns address = 7;
  #10ns address = 8;
  #10ns address = 9;
  #10ns address = 10;
  #10ns address = 11;
  #10ns address = 12;
  #10ns address = 13;
  #10ns address = 14;
  #10ns address = 15;
  end

endmodule