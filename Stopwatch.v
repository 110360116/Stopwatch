module Stopwatch (
    input iCLK,
    input reset,
	 input mode,
    input Btn_start_stop,
    input Btn_split,
    output reg [6:0] segA,
    output reg [7:0] segB,
    output reg [6:0] segC,
    output reg [6:0] segD,
    output reg [6:0] segE,
    output [7:0] LCD_DATA,
    output LCD_RW,
    output LCD_EN,
    output LCD_RS
);

reg [19:0] BCD;
reg [1:0] record_index;  // Fit 4 records
reg [19:0] time_records [3:0];  // Array to store 4 time records
reg lcd_update;

reg count_clk;
integer Div;
reg count_enable = 0;
reg preBtn_start_stop_stable, preBtn_split_stable;
reg display_all_splits = 0;

// Debounce registers
reg [19:0] debounce_counter_start_stop;
reg [19:0] debounce_counter_split;
reg Btn_start_stop_stable, Btn_split_stable;

// Internal Wires/Registers
reg [5:0] LUT_INDEX;
reg [8:0] LUT_DATA;
reg [5:0] mLCD_ST;
reg [17:0] mDLY;
reg mLCD_Start;
reg [7:0] mLCD_DATA;
reg mLCD_RS;
wire mLCD_Done;
parameter LUT_SIZE = 39;

reg [2:0] lcd_send_state;
reg [7:0] char_to_send;
reg start_send;

reg oRESET;
reg [19:0] Cont;
wire Trigger;

// LCD Controller instantiation
LCD_Controller u0 (
    .iDATA(mLCD_DATA),
    .iRS(mLCD_RS),
    .iStart(mLCD_Start),
    .oDone(mLCD_Done),
    .iCLK(iCLK),
    .iRST_N(oRESET),
    .LCD_DATA(LCD_DATA),
    .LCD_RW(LCD_RW),
    .LCD_EN(LCD_EN),
    .LCD_RS(LCD_RS)
);

always @(posedge iCLK)
begin
    if (!Trigger)
    begin
        LUT_INDEX <= 0;
        mLCD_ST <= 0;
        mDLY <= 0;
        mLCD_Start <= 0;
        mLCD_DATA <= 0;
        mLCD_RS <= 0;
        lcd_send_state <= 0;
        char_to_send <= 0;
        start_send <= 0;
    end
    else
    begin
        if (LUT_INDEX < LUT_SIZE)
        begin
            case (mLCD_ST)
                0: begin
                    mLCD_DATA <= LUT_DATA[7:0];
                    mLCD_RS <= LUT_DATA[8];
                    mLCD_Start <= 1;
                    mLCD_ST <= 1;
                end
                1: begin
                    if (mLCD_Done)
                    begin
                        mLCD_Start <= 0;
                        mLCD_ST <= 2;
                    end
                end
                2: begin
                    if (mDLY < 18'h3FFFE)
                        mDLY <= mDLY + 1;
                    else
                    begin
                        mDLY <= 0;
                        mLCD_ST <= 3;
                    end
                end
                3: begin
                    LUT_INDEX <= LUT_INDEX + 1;
                    mLCD_ST <= 0;
                end
            endcase
        end
        case (lcd_send_state)
            0: begin
                if (start_send) begin
                    mLCD_DATA <= char_to_send;
                    mLCD_RS <= 1'b1; // Set RS to 1 for data
                    mLCD_Start <= 1'b1;
                    lcd_send_state <= 1;
                end
            end
            1: begin
                if (mLCD_Done) begin
                    mLCD_Start <= 1'b0;
                    lcd_send_state <= 2;
                end
            end
            2: begin
                start_send <= 0;
                lcd_send_state <= 0;
            end
        endcase
    end
end

always @(posedge iCLK)
begin
    if (!reset)
    begin
        case (LUT_INDEX)
            0:  LUT_DATA <= 9'h038;  // Function Set
            1:  LUT_DATA <= 9'h00C;  // Display On/Off Control
            2:  LUT_DATA <= 9'h002;  // Return Home
            3:  LUT_DATA <= 9'h006;  // Entry Mode Set
            4:  LUT_DATA <= 9'h080;  // Set DDRAM Address to 0x00 (Start of first line)
            5:  LUT_DATA <= {5'h13, 4'h0};  // '0'
            6:  LUT_DATA <= {5'h13, 4'h0};  // '0'
            7:  LUT_DATA <= 9'h13A;  // ':'
            8:  LUT_DATA <= {5'h13, 4'h0};  // '0'
            9:  LUT_DATA <= {5'h13, 4'h0};  // '0'
            10: LUT_DATA <= 9'h12E;  // '.'
            11: LUT_DATA <= {5'h13, 4'h0};  // '0'
            12: LUT_DATA <= 9'h120;
				13: LUT_DATA <= 9'h120;
            14: LUT_DATA <= {5'h13, 4'h0};  // '0'
            15: LUT_DATA <= {5'h13, 4'h0};  // '0'
            16: LUT_DATA <= 9'h13A;  // ':'
            17: LUT_DATA <= {5'h13, 4'h0};  // '0'
            18: LUT_DATA <= {5'h13, 4'h0};  // '0'
            19: LUT_DATA <= 9'h12E;  // '.'
            20: LUT_DATA <= {5'h13, 4'h0};  // '0'
            21: LUT_DATA <= 9'h0C0;  // Set DDRAM Address to 0x40 (Start of second line)
            22: LUT_DATA <= {5'h13, 4'h0};  // '0'
            23: LUT_DATA <= {5'h13, 4'h0};  // '0'
            24: LUT_DATA <= 9'h13A;  // ':'
            25: LUT_DATA <= {5'h13, 4'h0};  // '0'
            26: LUT_DATA <= {5'h13, 4'h0};  // '0'
            27: LUT_DATA <= 9'h12E;  // '.'
            28: LUT_DATA <= {5'h13, 4'h0};  // '0'
            29: LUT_DATA <= 9'h120;
				30: LUT_DATA <= 9'h120;
            31: LUT_DATA <= {5'h13, 4'h0};  // '0'
            32: LUT_DATA <= {5'h13, 4'h0};  // '0'
            33: LUT_DATA <= 9'h13A;  // ':'
            34: LUT_DATA <= {5'h13, 4'h0};  // '0'
            35: LUT_DATA <= {5'h13, 4'h0};  // '0'
            36: LUT_DATA <= 9'h12E;  // '.'
            37: LUT_DATA <= {5'h13, 4'h0};  // '0'
            default: LUT_DATA <= 9'h120;  // Blank Space
        endcase
end else	 begin
        case (LUT_INDEX)
            0:  LUT_DATA <= 9'h038;
            1:  LUT_DATA <= 9'h00C;
            2:  LUT_DATA <= 9'h002;
            3:  LUT_DATA <= 9'h006;
            4:  LUT_DATA <= 9'h080; // Line 1, position 0
            5:  LUT_DATA <= {5'h13, time_records[0][19:16]}; // First record
            6:  LUT_DATA <= {5'h13, time_records[0][15:12]};
            7:  LUT_DATA <= 9'h13A; // :
            8:  LUT_DATA <= {5'h13, time_records[0][11:8]};
            9:  LUT_DATA <= {5'h13, time_records[0][7:4]};
            10: LUT_DATA <= 9'h12E; // .
            11: LUT_DATA <= {5'h13, time_records[0][3:0]};
            12: LUT_DATA <= 9'h120; // Space
				13: LUT_DATA <= 9'h120; // Space
            14: LUT_DATA <= {5'h13, time_records[1][19:16]}; // Second record
            15: LUT_DATA <= {5'h13, time_records[1][15:12]};
            16: LUT_DATA <= 9'h13A; // :
            17: LUT_DATA <= {5'h13, time_records[1][11:8]};
            18: LUT_DATA <= {5'h13, time_records[1][7:4]};
            19: LUT_DATA <= 9'h12E; // .
            20: LUT_DATA <= {5'h13, time_records[1][3:0]};
            21: LUT_DATA <= 9'h0C0; // Line 2, position 0
            22: LUT_DATA <= {5'h13, time_records[2][19:16]}; // Third record
            23: LUT_DATA <= {5'h13, time_records[2][15:12]};
            24: LUT_DATA <= 9'h13A; // :
            25: LUT_DATA <= {5'h13, time_records[2][11:8]};
            26: LUT_DATA <= {5'h13, time_records[2][7:4]};
            27: LUT_DATA <= 9'h12E; // .
            28: LUT_DATA <= {5'h13, time_records[2][3:0]};
            29: LUT_DATA <= 9'h120; // Space
				30: LUT_DATA <= 9'h120; // Space
            31: LUT_DATA <= {5'h13, time_records[3][19:16]}; // Fourth record
            32: LUT_DATA <= {5'h13, time_records[3][15:12]};
            33: LUT_DATA <= 9'h13A; // :
            34: LUT_DATA <= {5'h13, time_records[3][11:8]};
            35: LUT_DATA <= {5'h13, time_records[3][7:4]};
            36: LUT_DATA <= 9'h12E; // .
            37: LUT_DATA <= {5'h13, time_records[3][3:0]};
            default: LUT_DATA <= 9'h120;
        endcase
    end
end

// 10Hz Frequency for tenths of a second
always @(posedge iCLK) begin
    if (!reset) begin
        Div <= 0;
    end else begin
        if (Div == 4999999)
            Div <= 0;
        else
            Div <= Div + 1;
        
        count_clk <= (Div < 2500000) ? 0 : 1;
    end
end
/*
// 00~59.9 Seconds and 00~59 Minutes
always @(posedge count_clk or negedge reset) begin
    if (!reset) begin
        BCD <= 20'h00000; // Reset the entire BCD register
    end else if (count_enable) begin
        // 00~59.9 Seconds
        if (BCD[3:0] == 4'h9) begin
            BCD[3:0] <= 4'h0;
            if (BCD[7:4] == 4'h9) begin
                BCD[7:4] <= 4'h0;
                if (BCD[11:8] == 4'h5)
                    BCD[11:8] <= 4'h0;
                else
                    BCD[11:8] <= BCD[11:8] + 1'b1;
            end else
                BCD[7:4] <= BCD[7:4] + 1'b1;
        end else
            BCD[3:0] <= BCD[3:0] + 1'b1;

        // 00~59 Minutes
        if (BCD[11:0] == 12'h599) begin //if (count_enable && BCD[11:0] == 12'h599)
            if (BCD[15:12] == 4'h9) begin
                BCD[15:12] <= 4'h0;
                if (BCD[19:16] == 4'h5)
                    BCD[19:16] <= 4'h0;
                else
                    BCD[19:16] <= BCD[19:16] + 1'b1;
            end else
                BCD[15:12] <= BCD[15:12] + 1'b1;
        end
    end
end
*/

always @(posedge iCLK or negedge reset) begin // count_clk
    if (!reset) begin
        BCD <= (mode == 1'b0) ? 20'h10000 : 20'h00000; // Reset based on mode
    end else if (count_enable) begin
        if (mode == 1'b1) begin
            // Count Up
            if (BCD == 20'h59999) begin
                // Stop count up when reaching 59:59.9
                BCD <= 20'h59999;
            end else if (BCD[3:0] == 4'h9) begin
                BCD[3:0] <= 4'h0;
                if (BCD[7:4] == 4'h9) begin
                    BCD[7:4] <= 4'h0;
                    if (BCD[11:8] == 4'h5) begin
                        BCD[11:8] <= 4'h0;
                        if (BCD[15:12] == 4'h9) begin
                            BCD[15:12] <= 4'h0;
                            if (BCD[19:16] == 4'h5) begin
                                BCD[19:16] <= 4'h0;
                            end else begin
                                BCD[19:16] <= BCD[19:16] + 1'b1;
                            end
                        end else begin
                            BCD[15:12] <= BCD[15:12] + 1'b1;
                        end
                    end else begin
                        BCD[11:8] <= BCD[11:8] + 1'b1;
                    end
                end else begin
                    BCD[7:4] <= BCD[7:4] + 1'b1;
                end
            end else begin
                BCD[3:0] <= BCD[3:0] + 1'b1;
            end
        end else begin
            // Count Down from 10 minutes to 0
            if (BCD == 20'h00000) begin
                BCD <= BCD; // Stop countdown when reaching 0
            end else if (BCD[3:0] == 4'h0) begin
                BCD[3:0] <= 4'h9;
                if (BCD[7:4] == 4'h0) begin
                    BCD[7:4] <= 4'h9;
                    if (BCD[11:8] == 4'h0) begin
                        BCD[11:8] <= 4'h5;
                        if (BCD[15:12] == 4'h0) begin
                            BCD[15:12] <= 4'h9;
                            if (BCD[19:16] == 4'h0) begin
                                BCD[19:16] <= 4'h0;
                            end else begin
                                BCD[19:16] <= BCD[19:16] - 1'b1;
                            end
                        end else begin
                            BCD[15:12] <= BCD[15:12] - 1'b1;
                        end
                    end else begin
                        BCD[11:8] <= BCD[11:8] - 1'b1;
                    end
                end else begin
                    BCD[7:4] <= BCD[7:4] - 1'b1;
                end
            end else begin
                BCD[3:0] <= BCD[3:0] - 1'b1;
            end
        end
    end
end


// BCD to seg
always @(BCD[3:0]) begin
    case (BCD[3:0])
        4'd0: segA = 7'b1000000;
        4'd1: segA = 7'b1111001;
        4'd2: segA = 7'b0100100;
        4'd3: segA = 7'b0110000;
        4'd4: segA = 7'b0011001;
        4'd5: segA = 7'b0010010;
        4'd6: segA = 7'b0000010;
        4'd7: segA = 7'b1111000;
        4'd8: segA = 7'b0000000;
        4'd9: segA = 7'b0011000;
        default: segA = 7'b1111111;
    endcase
end

always @(BCD[7:4]) begin
    case (BCD[7:4])
        4'd0: segB = {1'b0, 7'b1000000};
        4'd1: segB = 8'b11111001;
        4'd2: segB = 8'b00100100;
        4'd3: segB = 8'b00110000;
        4'd4: segB = 8'b00011001;
        4'd5: segB = 8'b00010010;
        4'd6: segB = 8'b00000010;
        4'd7: segB = 8'b01111000;
        4'd8: segB = 8'b00000000;
        4'd9: segB = 8'b00011000;
        default: segB = 8'b11111111;
    endcase
end

always @(BCD[11:8]) begin
    case (BCD[11:8])
        4'd0: segC = 7'b1000000;
        4'd1: segC = 7'b1111001;
        4'd2: segC = 7'b0100100;
        4'd3: segC = 7'b0110000;
        4'd4: segC = 7'b0011001;
        4'd5: segC = 7'b0010010;
        4'd6: segC = 7'b0000010;
        4'd7: segC = 7'b1111000;
        4'd8: segC = 7'b0000000;
        4'd9: segC = 7'b0011000;
        default: segC = 7'b1111111;
    endcase
end

always @(BCD[15:12]) begin
    case (BCD[15:12])
        4'd0: segD = 7'b1000000;
        4'd1: segD = 7'b1111001;
        4'd2: segD = 7'b0100100;
        4'd3: segD = 7'b0110000;
        4'd4: segD = 7'b0011001;
        4'd5: segD = 7'b0010010;
        4'd6: segD = 7'b0000010;
        4'd7: segD = 7'b1111000;
        4'd8: segD = 7'b0000000;
        4'd9: segD = 7'b0011000;
        default: segD = 7'b1111111;
    endcase
end

always @(BCD[19:16]) begin
    case (BCD[19:16])
        4'd0: segE = 7'b1000000;
        4'd1: segE = 7'b1111001;
        4'd2: segE = 7'b0100100;
        4'd3: segE = 7'b0110000;
        4'd4: segE = 7'b0011001;
        4'd5: segE = 7'b0010010;
        4'd6: segE = 7'b0000010;
        4'd7: segE = 7'b1111000;
        4'd8: segE = 7'b0000000;
        4'd9: segE = 7'b0011000;
        default: segE = 7'b1111111;
    endcase
end

integer i;

always @(posedge iCLK) begin
    if (!reset) begin
        debounce_counter_start_stop <= 0;
        Btn_start_stop_stable <= 0;
        preBtn_start_stop_stable <= 0;
        count_enable <= 0;
        display_all_splits <= 0;
        lcd_update <= 0;
        record_index <= 0; // Reset record_index when reset is asserted
        debounce_counter_split <= 0;
        Btn_split_stable <= 0;
        preBtn_split_stable <= 0;
        
        // Reset time_records when oRESET is asserted
        if (!oRESET) begin
            for (i = 0; i < 4; i = i + 1) begin
                time_records[i] <= 20'h00000;
            end
        end
    end else begin
        // Debounce logic for Btn_start_stop
        if (Btn_start_stop) begin
            debounce_counter_start_stop <= 0;
            Btn_start_stop_stable <= 0;
        end else if (debounce_counter_start_stop < 500000) begin
            debounce_counter_start_stop <= debounce_counter_start_stop + 1;
        end else begin
            Btn_start_stop_stable <= 1;
        end

        // Detect rising edge of Btn_start_stop_stable
        preBtn_start_stop_stable <= Btn_start_stop_stable;
        if (Btn_start_stop_stable == 1 && preBtn_start_stop_stable == 0) begin
            count_enable <= ~count_enable;
            if (!count_enable) begin
                display_all_splits <= 1;
                lcd_update <= 1;
            end else begin
                display_all_splits <= 0;
            end
        end

        // Debounce logic for Btn_split
        if (Btn_split) begin
            debounce_counter_split <= 0;
            Btn_split_stable <= 0;
        end else if (debounce_counter_split < 500000) begin
            debounce_counter_split <= debounce_counter_split + 1;
        end else begin
            Btn_split_stable <= 1;
        end

        // Handle Btn_split_stable
        preBtn_split_stable <= Btn_split_stable;
        if (Btn_split_stable == 1 && preBtn_split_stable == 0) begin
            if (record_index < 4) begin
                time_records[record_index] <= BCD;
                record_index <= record_index + 1;
            end else begin
                record_index <= 0;
                time_records[record_index] <= BCD;
                record_index <= record_index + 1;
            end
            lcd_update <= 1; // Update LCD on split
        end
    end
end

// Task to set the character to be sent and start the state machine
task send_to_LCD;
    input [7:0] char;
    begin
        char_to_send <= char;
        start_send <= 1;
        wait (start_send == 0);  // Wait for the state machine to complete
    end
endtask

//Reset Delay
always @(posedge iCLK) begin
    if (!reset) begin
        if (Cont != 20'hFFFFF) begin
            Cont <= Cont + 1;
            oRESET <= 1'b0;
        end else begin
            oRESET <= 1'b1;
        end
    end else begin
        Cont <= 0;
        oRESET <= 1'b1;
    end
end

//assign Trigger = oRESET & iRST_N & Btn_split_stable;
//assign ress = Btn_split_stable & Btn_start_stop_stable & reset;
//assign Trigger = oRESET & !Btn_split_stable & !Btn_start_stop_stable;
assign Trigger = oRESET & !Btn_split_stable & !Btn_start_stop_stable;

endmodule
