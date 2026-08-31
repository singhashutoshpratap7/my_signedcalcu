`default_nettype none

module tt_um_example (
    input  wire [7:0] ui_in,    
    output wire [7:0] uo_out,  
    input  wire [7:0] uio_in,   
    output wire [7:0] uio_out, 
    output wire [7:0] uio_oe,   
    input  wire       clk,      
    input  wire       rst_n     
);

 
    wire [7:0] a = ui_in;
    wire [7:0] b = uio_in;

   
    wire [7:0] sum = a + b;

    assign uo_out   = sum;
    
  
    assign uio_out  = 8'b0;
    assign uio_oe   = 8'b0; 


    wire _unused = &{clk, rst_n, 1'b0};

endmodule
