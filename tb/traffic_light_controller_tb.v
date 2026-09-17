`timescale 1ns/1ps

module traffic_light_controller_tb;

    reg clk;
    reg reset;

    wire red;
    wire yellow;
    wire green;

    // Instantiate the Traffic Light Controller
    traffic_light_controller dut (
        .clk(clk),
        .reset(reset),
        .red(red),
        .yellow(yellow),
        .green(green)
    );

    // Clock generation
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    // Test sequence
    initial begin
        $dumpfile("traffic_light.vcd");
        $dumpvars(0, traffic_light_controller_tb);

        // Reset controller
        reset = 1'b1;
        #10;

        reset = 1'b0;

        // Allow the controller to run
        #50;

        $display("===== TRAFFIC LIGHT TEST COMPLETE =====");
        $finish;
    end

    // Display outputs
    initial begin
        $monitor("Time=%0t | Reset=%b | RED=%b | YELLOW=%b | GREEN=%b",
                 $time, reset, red, yellow, green);
    end

endmodule
