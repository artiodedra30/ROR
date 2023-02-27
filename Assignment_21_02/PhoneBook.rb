class User_Options  
  def phone_book

    afile = File.open("PhoneBook.txt", "r")
    data = eval(afile.read)

    file_write = Proc.new {
      bfile = File.open("PhoneBook.txt","w") do |f|
      f.puts data
      end
    }
    
    find_name = Proc.new {
      print "Enter Name:"
      name = gets.chomp
      if data.has_key? name.to_sym
        puts "#{name}:#{data[name.to_sym]}"
      else
        puts "Number is not found"
      end
    }
    
    add_record = Proc.new {
      print "Enter Name:"
      name = gets.chomp
      print "Enter Number:"
      phone_number = gets.chomp

      if data.has_key? name.to_sym
        puts "Name is already Present"
      elsif data.has_value? phone_number
        puts "Number already present"
      else
        hash = {}
        hash[name.to_sym] = phone_number
        data = data.merge(hash)
        file_write.call
      end
    }

    delete_by_name = Proc.new {
      print "Enter Name:"
      name = gets.chomp
      if data.has_key? name.to_sym
        data.delete(name.to_sym)
        file_write.call 
      else
        puts "Not Found"
      end
    }

    delete_by_number = Proc.new {
      print "Enter Number: "
      phone_number = gets.chomp
      if data.has_key? data.key(phone_number)
        data.delete(data.key(phone_number))
        file_write.call
      else
        puts "Not Found"
      end
    }

    update_hash = Proc.new {
      new_hash = {"Arti"=>"1234567899" , "Helly"=>"3211233211","Khushbu"=>"4563214567"}
      data = new_hash
      file_write.call
    }

      begin
      puts "Enter choice: 1. find phone number 2.save new number 3. delete number 4.update PhoneBook 5.Exit" 
      choice = gets.chomp.to_i
      case
      when choice == 1
        find_name.call

      when choice == 2
        add_record.call
      
      when choice == 3
        puts "1.Delete by name 2.Delete by number"
        subchoice = gets.chomp.to_i
        if subchoice == 1
          delete_by_name.call
        elsif subchoice == 2
          delete_by_number.call
        end
      
      when choice == 4
        update_hash.call

      when choice == 5
        break
      
      else
        puts "Invalid Choice"
        break
      end
      end while true
    
  end
end

user1 = User_Options.new
user1.phone_book