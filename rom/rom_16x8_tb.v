`timescale 1ns/1ps

module rom_16x8_tb;

    reg  [3:0] address;
    wire [7:0] data;

    // Instantiate ROM
    rom_16x8 uut (
        .address(address),
        .data(data)
    );

    initial begin

        // Create waveform file
        $dumpfile("rom_waveform.vcd");
        $dumpvars(0, rom_16x8_tb);

        $display("------------------------------------------");
        $display("       16 x 8 ROM SIMULATION");
        $display("------------------------------------------");
        $display("Time\tAddress\tData");
        $display("------------------------------------------");

        address = 4'h0;
        #10;
        $display("%0t\t%h\t%h", $time, address, data);

        address = 4'h1;
        #10;
        $display("%0t\t%h\t%h", $time, address, data);

        address = 4'h2;
        #10;
        $display("%0t\t%h\t%h", $time, address, data);

        address = 4'h3;
        #10;
        $display("%0t\t%h\t%h", $time, address, data);

        address = 4'h4;
        #10;
        $display("%0t\t%h\t%h", $time, address, data);

        address = 4'h5;
        #10;
        $display("%0t\t%h\t%h", $time, address, data);

        address = 4'h6;
        #10;
        $display("%0t\t%h\t%h", $time, address, data);

        address = 4'h7;
        #10;
        $display("%0t\t%h\t%h", $time, address, data);

        address = 4'h8;
        #10;
        $display("%0t\t%h\t%h", $time, address, data);

        address = 4'h9;
        #10;
        $display("%0t\t%h\t%h", $time, address, data);

        address = 4'hA;
        #10;
        $display("%0t\t%h\t%h", $time, address, data);

        address = 4'hB;
        #10;
        $display("%0t\t%h\t%h", $time, address, data);

        address = 4'hC;
        #10;
        $display("%0t\t%h\t%h", $time, address, data);

        address = 4'hD;
        #10;
        $display("%0t\t%h\t%h", $time, address, data);

        address = 4'hE;
        #10;
        $display("%0t\t%h\t%h", $time, address, data);

        address = 4'hF;
        #10;
        $display("%0t\t%h\t%h", $time, address, data);

        $display("------------------------------------------");
        $display("Simulation Completed");
        $display("------------------------------------------");

        $finish;
    end

endmodule