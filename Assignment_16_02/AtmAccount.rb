module Bank
    
    class Account
        attr_accessor :balance
        def initialize(amount)
            @balance = amount
        end
    
        def display_balance
            show_balance = Proc.new {
                puts "Current Balance: #{@balance}"
            }
            show_balance.call
        end
    
        def deposit(amount)
            deposit_amount = Proc.new { 
                @balance += amount
                puts "updated Balance: #{@balance}"
            }
            deposit_amount.call
        end
        
        def withdraw(amount)
            withdraw_amount = Proc.new {
                if amount > @balance
                    puts "Insufficient Balance!!"
                else
                    @balance -= amount
                    puts "updated Balance: #{@balance}"
                end
            }
            withdraw_amount.call
        end
    end

    class ATM 
        def initialize(account_obj)
            @account_object = account_obj
        end
    
        def start
            puts "Enter your ATM PIN: "
            atm_pin = gets.chomp.to_i
            pin_auth(atm_pin)
        end
        
        private
        def pin_auth(atm_pin)
            if atm_pin == 1234
                 puts "PIN authenticated successfully!!"
                 show_options
            else
                puts "Incorrect PIN!"
            end
        end
    
        def show_options
            puts "Enter Your Choice: 1. Check Balance 2. Deposit 3. Withdraw"
            choice = gets.chomp.to_i
            case 
            when choice==1
                @account_object.display_balance
                
            
            when choice==2
                puts "Enter the amount to deposit: "
                amount_to_deposit = gets.chomp.to_i
                @account_object.deposit(amount_to_deposit)
            
            when choice==3 
                puts "Enter the amount to withdraw:"
                amount_to_withdraw = gets.chomp.to_i
                @account_object.withdraw(amount_to_withdraw)
            else
                puts "Enter a valid choice"
            end    
        end
    
    end
    
    account_obj = Account.new(6500)

    user = ATM.new(account_obj)
    user.start
end