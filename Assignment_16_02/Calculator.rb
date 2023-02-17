
class Calc 
    attr_accessor :ans
    def start
        puts "Enter two numbers:"
        a = gets.chomp.to_f
        b = gets.chomp.to_f
        show_options(a, b)
    end
    
    def show_options(a, b)
        @num1 = a  
        @num2 = b
        begin
        puts "Enter Choice: 1.Addition 2.Substraction 3.Multiplication 4.Division 5. Modulus 6.Exit"
        choice = gets.chomp.to_i
        case
        when choice==1
            sum = Proc.new{
                @ans = @num1 + @num2
                puts "Addition: #{@ans}"
            }
            sum.call
            
        when choice==2 
            subsract = Proc.new{
                @ans =  @num1 - @num2 
                puts "Substraction: #{@ans}"
            }
            subsract.call
        
        when choice==3
            mul = Proc.new{
                @ans =  @num1 * @num2
                puts "Multiplication: #{@ans}"
            }
            mul.call
            
        when choice==4
            div = Proc.new{
                @ans =  @num1 / @num2 
                puts "Division: #{@ans}"
            }
            div.call
        
        when choice==5
            mod = Proc.new{
                @ans =  @num1 % @num2 
                puts "Modulus: #{@ans}"
            }
            mod.call
            
        when choice==6
            break
        else
            puts "Enter valid choice"
        
        end
        
        end while true
     
    end

end

calc = Calc.new
calc.start