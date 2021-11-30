module sevenseg2(output logic [6:0]data1, output logic[6:0]data10, 
                    input logic[5:0]address);

logic[5:0] onesdig;
logic[5:0] tensdig;

sevenseg d1(.data(data1), .address(onesdig)); //data is for the first Segment to the right.
sevenseg d0(.data(data10), .address(tensdig)); // data0 output for second Segment.


always_comb
    begin
        onesdig = address % 4'b1010; // After reaching 10, start again.
        tensdig = address / 4'b1010; // devide by 10. When > 9 it will output 0, when at 10 >= 19 outputs 1.
    end
endmodule

