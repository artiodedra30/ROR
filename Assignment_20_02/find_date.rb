class Main
  require 'date'
  def find_date
    print "Enter start year: "
    start_year = gets.chomp.to_i
    print "Enter stop year:"
    stop_year = gets.chomp.to_i
    date_var = DateTime.parse('2011-10-09')
    if (start_year..stop_year) === date_var.year
      puts "Yes #{date_var.to_date} is between #{start_year} and #{stop_year} "
    else
      puts "Not Present"
    end 
   
  end
end

obj = Main.new
obj.find_date

