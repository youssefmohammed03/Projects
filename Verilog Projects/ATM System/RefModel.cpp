#include <iostream>
using namespace std;

int main(){
    const int IDLE_STATE = 0;
    const int LANGUAGE_SELECTED_STATE = 1;
    const int PASSWORD_ENTERED_STATE = 2;
    const int OPERATION_SELECTED_STATE = 3;
    const int BALANCE_SERVICE_STATE = 4;
    const int DEPOSIT_STATE = 5;
    const int WITHDRAW_STATE = 6;
    
    int CardNos[5] = {1, 2, 3, 4, 5};
    int Passwords[5] = {1, 2, 3, 4, 5};
    int Balances[5] = {125000, 130000, 135000, 140000, 120000};

    bool language_selected, card_inserted, deposit_accepted, withdraw_accepted, password_entered, rst;
    int deposit_value, withdraw_value, CardNo, Password, balance_displayed;
    int state = IDLE_STATE, next_state = IDLE_STATE;
    int index, request;
    int entered = 0;

    while (true) {   

        if(state == IDLE_STATE && entered == 1){
            cout<<"Card is out\n";
            break;
        } else state = next_state;

        switch (state) {
        case IDLE_STATE:
            cout<<"IDLE_STATE\n";
            if(entered == 0){
                cout<< "card_inserted: ";
                cin>> card_inserted;
                if (card_inserted) {
                    next_state = LANGUAGE_SELECTED_STATE;
                } else {
                    next_state = IDLE_STATE;
                }
            }
            break;

        case LANGUAGE_SELECTED_STATE:
            cout<<"LANGUAGE_SELECTED_STATE\n";
            cout<< "language_selected: ";
            cin>> language_selected;
            if (language_selected) cout<<"The language is Arabic\n";
            else cout<<"The language is English\n";
            next_state = PASSWORD_ENTERED_STATE;
            break;

        case PASSWORD_ENTERED_STATE:
            cout<<"PASSWORD_ENTERED_STATE\n";
            cout<< "CardNo: ";
            cin>> CardNo;
            cout<< "Password: ";
            cin>> Password;
            password_entered = false;
            index = 0;

            for (int i = 0; i < 5; i = ++i){
                if (CardNo == CardNos[i] && Password == Passwords[i]) {
                    password_entered = true;
                    index = i;
                }
            }

            if(!password_entered) {
                cout<<"Password or Card Number are not valid\n";
            }

            if (password_entered) next_state = OPERATION_SELECTED_STATE;
            else next_state = PASSWORD_ENTERED_STATE;
            break;

        case OPERATION_SELECTED_STATE:
            cout<<"OPERATION_SELECTED_STATE\n";
            cout<< "request: ";
            cin>> request;
            if (request == 0) {
                next_state = BALANCE_SERVICE_STATE;
            }
            else if (request == 1) {
                next_state = DEPOSIT_STATE;
            }
            else if (request == 2) {
                next_state = WITHDRAW_STATE;
            }
            else if (request == 3) {
                next_state = IDLE_STATE;
                entered = 1;
            }
            else {
                next_state = OPERATION_SELECTED_STATE;
                cout<<"request is invalid, please enter a valid request\n";
            }
            break;

        case BALANCE_SERVICE_STATE:
            cout<<"BALANCE_SERVICE_STATE\n";
            balance_displayed = Balances[index];
            cout<< balance_displayed <<endl;
            next_state = OPERATION_SELECTED_STATE;
            break;

        case DEPOSIT_STATE:
            cout<<"DEPOSIT_STATE\n";
            cout<< "deposit_value: ";
            cin>> deposit_value;
            if (deposit_value <= 2000) {
                Balances[index] = Balances[index] + deposit_value;
                deposit_accepted = true;
                cout<<"deposit_accepted: "<<deposit_accepted<<endl;
            } 
            else {
                deposit_accepted = false;
                cout<<"deposit_accepted: "<<deposit_accepted<<endl;
            }
            
            next_state = OPERATION_SELECTED_STATE;
            break;

        case WITHDRAW_STATE:
            cout<<"WITHDRAW_STATE\n";
            cout<< "withdraw_value: ";
            cin>> withdraw_value;
            if (withdraw_value < Balances[index]) {
                Balances[index] = Balances[index] - withdraw_value;
                withdraw_accepted = true;
                cout<<"withdraw_accepted: "<<withdraw_accepted<<endl;
            } 
            else {
                withdraw_accepted = false;
                cout<<"withdraw_accepted: "<<withdraw_accepted<<endl;
            }


            next_state = OPERATION_SELECTED_STATE;
            break;
        
        default:
            next_state = IDLE_STATE;
            entered = 1;
            break;
        }
    }
}