$city = "ahemdabad"

class  User 
    def displayCity()
      puts "User is located in #{$city}"
    end 
end 

class Company
   def displayCity()
       puts "Company is located in #{$city}"
   end
end 

user1 = User.new 
company1 = Company.new

user1.displayCity()
company1.displayCity()
