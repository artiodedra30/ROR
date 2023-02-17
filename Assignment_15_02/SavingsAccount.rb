class SavingsAccount
    def interest_rate(amount)
        if amount > 0 && amount < 1000
            puts "Rate of interest: 0.5%"
            @@rate_of_interest = 0.5
        elsif amount >= 1000 && amount < 5000
            puts "Rate of interest: 1.621%"
             @@rate_of_interest = 1.621
        elsif amount >= 5000
            puts "Rate of interest: 2.475%"
             @@rate_of_interest = 2.475
        elsif amount < 0 
            puts "Rate of interest: 3.213%"
             @@rate_of_interest = 3.213
        end
    end
    
    def annual_balance_update(amount)
        updated_balance = amount + ( (amount * @@rate_of_interest) / 100 )
        puts "Current Balance: #{amount}"
        puts "Updated Balance: #{updated_balance} "
    end
    
    
    def years_before_desired_balance(amount, desired_balance)
        if amount < 0 
            puts "Negative Balance !!!"
        elsif amount > 0
          rate_of_interest_amount =  (amount * @@rate_of_interest) / 100 
          for i in 1..100
              amount += rate_of_interest_amount
              if amount == desired_balance
                  puts "After #{i} years you will get your desired Balance"
              end
          end
        end
    end
end


user1 = SavingsAccount.new 
user1.interest_rate(550)
user1.annual_balance_update(550)
user1.years_before_desired_balance(550, 605)

user2 = SavingsAccount.new 
user2.interest_rate(-10)
user2.annual_balance_update(-10)
user2.years_before_desired_balance(-10, 10)

















class SavingsAccount
    def interest_rate(amount)
        if amount > 0 && amount < 1000
            rate_of_interest = 0.5
            
        elsif amount >= 1000 && amount < 5000
            rate_of_interest =  1.621
            
        elsif amount>=5000
            rate_of_interest = 2.475
             
        elsif amount<0 
            rate_of_interest = 3.213
        end
        return rate_of_interest 
    end
    
    def annual_balance_update(amount)
        roi = interest_rate(amount)
        updated_balance = amount + ( (amount * roi) / 100 )
        puts "Current Balance: #{amount}"
        puts "Updated Balance: #{updated_balance} "
    end
    
    
    def years_before_desired_balance(amount, desired_balance)
        if amount < 0 
            puts "Negative Balance !!!"
        elsif amount > 0
            i = 1
            while amount < desired_balance do
                roi = interest_rate(amount)
                amount += roi
                if amount == desired_balance
                    puts "desired_balance: #{desired_balance}"
                    puts "After #{i} years you will get your desired Balance"
                    break
                else
                    i += 1
                end
            end
             
        end
    end
end


user1 = SavingsAccount.new 
user1.interest_rate(550)
user1.annual_balance_update(550)
user1.years_before_desired_balance(550, 1043.767000000001)

user2 = SavingsAccount.new 
user2.interest_rate(-10)
user2.annual_balance_update(-10)
user2.years_before_desired_balance(-10, 10)
