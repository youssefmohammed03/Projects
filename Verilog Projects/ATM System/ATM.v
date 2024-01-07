`timescale 1ms/1ms
module ATM_FSM (
    input clk,
    input rst,
    input language_selected,
    input card_inserted,
    input [1:0] request,
    input [11:0] deposit_value,
    input [11:0] withdraw_value,
    input [2:0] CardNo,
    input [2:0] Password,
    output reg deposit_accepted,
    output reg withdraw_accepted,
    output reg [17:0] balance_displayed
);

    // Define signals
    reg [2:0] state, next_state;
    reg [31:0] start_time;
    reg password_entered;
    reg [2:0] index;
    reg entered;
    reg [2:0] CardNos[4:0];
    reg [2:0] Passwords[4:0];
    reg [17:0] Balances[4:0];

    initial begin
        CardNos[0] = 3'd1;
        CardNos[1] = 3'd2;
        CardNos[2] = 3'd3;
        CardNos[3] = 3'd4;
        CardNos[4] = 3'd5;
        Passwords[0] = 3'd1;
        Passwords[1] = 3'd2;
        Passwords[2] = 3'd3;
        Passwords[3] = 3'd4;
        Passwords[4] = 3'd5;
        Balances[0] = 18'd125000;
        Balances[1] = 18'd130000;
        Balances[2] = 18'd135000;
        Balances[3] = 18'd140000;
        Balances[4] = 18'd120000;
    end
    integer i;

// Define Time out
parameter TIMEOUT = 900000; 

// Define states
parameter IDLE_STATE = 3'b000;
parameter LANGUAGE_SELECTED_STATE = 3'b001;
parameter PASSWORD_ENTERED_STATE = 3'b010;
parameter OPERATION_SELECTED_STATE = 3'b011;
parameter BALANCE_SERVICE_STATE = 3'b100;
parameter DEPOSIT_STATE = 3'b101;
parameter WITHDRAW_STATE = 3'b110;


initial begin
    start_time = $time;
    state = IDLE_STATE;
    entered = 0;
    password_entered = 1'b0;
end

// State Memory and Timer
always @(posedge clk or negedge rst) begin
    if (~rst) begin
        state <= IDLE_STATE;
        start_time = $time;
        password_entered = 1'b0;
        entered = 0;
    end else begin
        state <= next_state;
        if ($time - start_time >= TIMEOUT) begin
            $finish;
        end
    end
end

// State transition
always @(language_selected,
    card_inserted,
    request,
    deposit_value,
    withdraw_value,
    CardNo,
    Password,
    state) begin
    case (state)
        IDLE_STATE: begin
            if (card_inserted && entered == 1'b0) begin
                entered = 1;
                next_state = LANGUAGE_SELECTED_STATE;
            end
            else begin
                next_state = IDLE_STATE;
            end
        end
        LANGUAGE_SELECTED_STATE:
            if (language_selected === 1'b0 || language_selected === 1'b1) next_state = PASSWORD_ENTERED_STATE;
            else next_state = LANGUAGE_SELECTED_STATE;

        PASSWORD_ENTERED_STATE: begin
                password_entered = 0;
                index = 3'b000;
                for (i = 0; i < 5; i = i + 1) begin
                    if (CardNo == CardNos[i] && Password == Passwords[i]) begin
                        password_entered = 1;
                        index = i;
                    end
                end
            if (password_entered) begin
                next_state = OPERATION_SELECTED_STATE;
            end
            else begin
                next_state = PASSWORD_ENTERED_STATE;
            end
        end

        OPERATION_SELECTED_STATE:
            if (request === 2'b00) next_state = BALANCE_SERVICE_STATE;
            else if (request == 2'b01) next_state = DEPOSIT_STATE;
            else if (request == 2'b10) next_state = WITHDRAW_STATE;
            else if (request == 2'b11) next_state = IDLE_STATE;
            else next_state = OPERATION_SELECTED_STATE;

        BALANCE_SERVICE_STATE:
            next_state = OPERATION_SELECTED_STATE;

        DEPOSIT_STATE:
            next_state = OPERATION_SELECTED_STATE;

        WITHDRAW_STATE:
            next_state = OPERATION_SELECTED_STATE; 

        default:
            next_state = IDLE_STATE;
    endcase
end

// output logic
always @(
    language_selected,
    card_inserted,
    request,
    deposit_value,
    withdraw_value,
    CardNo,
    Password,
    state
) begin
    case (state)

        BALANCE_SERVICE_STATE: begin
            balance_displayed = Balances[index];
        end

        DEPOSIT_STATE: begin
            if (deposit_value <= 12'd2000) begin
                Balances[index] = Balances[index] + deposit_value;
                deposit_accepted = 1'b1;
            end 
            else begin 
                deposit_accepted = 1'b0;
            end
        end

        WITHDRAW_STATE: begin
            if (withdraw_value < Balances[index]) begin
                Balances[index] = Balances[index] - withdraw_value;
                withdraw_accepted = 1'b1;
            end 
            else begin 
                withdraw_accepted = 1'b0;
            end
        end
    endcase
end

endmodule