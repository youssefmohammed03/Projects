`timescale 1ms/1ms
module Tb;
reg clk, rst, language_selected, card_inserted;
reg [1:0] request;
reg [11:0] deposit_value;
reg [11:0] withdraw_value;
reg [2:0] CardNo;
reg [2:0] Password;
reg [2:0] temp;

wire deposit_accepted;
wire withdraw_accepted;
wire [17:0] balance_displayed;
integer i;
ATM_FSM ATM1(.clk(clk),
        .rst(rst),
        .language_selected(language_selected),
        .card_inserted(card_inserted),
        .request(request),
        .deposit_value(deposit_value),
        .withdraw_value(withdraw_value),
        .CardNo(CardNo),
        .Password(Password),
        .deposit_accepted(deposit_accepted),
        .withdraw_accepted(withdraw_accepted),
        .balance_displayed(balance_displayed)
    );

initial begin
clk=0;
forever
#1 clk=~clk;
end

initial begin
    rst=0;
    language_selected=0;
    card_inserted=0;
    request=0;
    deposit_value=0;
    withdraw_value=0;
    CardNo=0;
    Password=0;
    @(negedge clk);


// no.1

rst=1;
language_selected=1;
card_inserted=1;
CardNo=1;
Password=1;
@(negedge clk);
@(negedge clk);
@(negedge clk);
request=1;
deposit_value=500;
@(negedge clk);
@(negedge clk);
request=2;
withdraw_value=200;
@(negedge clk);
@(negedge clk);
request=1;
deposit_value=500;
@(negedge clk);
@(negedge clk);
request=2;
withdraw_value=200;
@(negedge clk);
@(negedge clk);
request=0;
@(negedge clk);
@(negedge clk);
request=3;
rst=0;

//  no.2
@(negedge clk);
@(negedge clk);

    rst=1;
    language_selected=0;
    card_inserted=1;
    CardNo=2;
    Password=2;
    @(negedge clk);
    @(negedge clk);
    @(negedge clk);
    request=1;
    deposit_value=1000;
    @(negedge clk);
    @(negedge clk);
    request=2;
    withdraw_value=800;
    @(negedge clk);
    @(negedge clk);
    withdraw_value=700;
    @(negedge clk);
    @(negedge clk);
    request=1;
    deposit_value=500;
    @(negedge clk);
    @(negedge clk);
    request=2;
    withdraw_value=600;
    @(negedge clk);
    @(negedge clk);
    request=3;
    rst=0;

    @(negedge clk);
    @(negedge clk);

// no.3
rst=1;
language_selected=0;
card_inserted=1;
CardNo=3;
Password=3;
@(negedge clk);
@(negedge clk);
@(negedge clk);
request=1;
deposit_value=100;
@(negedge clk);
@(negedge clk);
request=2;
withdraw_value=1500;
@(negedge clk);
@(negedge clk);
request=3;
rst=0;
@(negedge clk);
@(negedge clk);

//  no.4 depositing more than 2000
    rst=1;
    language_selected=0;
    card_inserted=1;
    CardNo=4;
    Password=4;
    @(negedge clk);
    @(negedge clk);
    @(negedge clk);
    request=1;
    deposit_value=3000;
    @(negedge clk);
    @(negedge clk);
    request=2;
    withdraw_value=2500;
    @(negedge clk);
    @(negedge clk);
    request=1;
    deposit_value=4000;
    @(negedge clk);
    @(negedge clk);
    request=3;
    rst=0;
    @(negedge clk);
    @(negedge clk);

//  no.5 wrong password
rst=1;
language_selected=1;
card_inserted=1;
CardNo=6;
Password=6;
@(negedge clk);
@(negedge clk);
@(negedge clk);
request=1;
deposit_value=500;
@(negedge clk);
@(negedge clk);
request=3;
rst=0;
@(negedge clk);
@(negedge clk);

// no.6 two requsts at a time
    rst=1;
    language_selected=0;
    card_inserted=1;
    CardNo=2;
    Password=2;
    @(negedge clk);
    @(negedge clk);
    @(negedge clk);
    request=1;
    deposit_value=100;
    request=2;
    withdraw_value=500;
    @(negedge clk);
    @(negedge clk);
    request=3;  
    rst=0;

    @(negedge clk);
    @(negedge clk);

for(i = 0;i < 5000; i=i+1) begin

//Resting the values
    rst=0;
    language_selected=0;
    card_inserted=0;
    request=0;
    deposit_value=0;
    withdraw_value=0;
    CardNo=0;
    Password=0;
    

@(negedge clk);

    rst=1;
    card_inserted = $random();
    language_selected=$random();
    temp = $urandom_range(1,5);
    CardNo = temp;
    Password = temp;

    @(negedge clk);
    @(negedge clk);
    @(negedge clk);//after password



    request=$random();
    if(request==1) begin
        deposit_value=  1 + {$random()} % (2000 - 1);
    end
    else if(request==2) begin
        withdraw_value=  1 + {$random()} % (2000 - 1);
    end
    
    @(negedge clk);
    @(negedge clk);



while(request != 3) begin

    request=$random();

    if(request==1) begin
        deposit_value=  1 + {$random()} % (2000 - 1);
    end
    else if(request==2) begin
        withdraw_value=  1 + {$random()} % (2000 - 1);
    end

    @(negedge clk);
    @(negedge clk);

end
    
end 

end

// Assertion 1:
// psl assert always (request == 2 -> next withdraw_accepted) @(posedge clk);

// Assertion 2:
// psl assert always (request == 1 && deposit_value > 2000 -> next !deposit_accepted) @(posedge clk);

// Assertion 3: deposits cannot be negative.
// psl assert always (deposit_value >= 0) @(posedge clk);

// Assertion 4: withdrawals cannot be negative.
// psl assert always (withdraw_value >= 0) @(posedge clk);

endmodule

