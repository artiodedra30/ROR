class Age
  require 'date'
  def calc_age(bdate)
    d2 = DateTime.now
    d1 = DateTime.parse(bdate)   
    ayear = d2.year - d1.year - 1
    amonth = (d2.month - d1.month-1)%12
    if d1.day > d2.day
      var1 = 30 - d1.day
      aday = var1 + d2.day
    else 
      aday = d2.day - d1.day
    end
    ahours = d2.hour - d1.hour
    amin = d2.min - d1.min
    puts "Birthdate:  #{bdate}"
    print "Age : "
    print "#{ayear}Years #{amonth.abs}Months #{aday.abs}Days #{ahours.abs}Hours #{amin.abs}Minutes "
  end
end

 person1 = Age.new
bdate = '2001-8-5 12:00'

person1.calc_age(bdate)


    