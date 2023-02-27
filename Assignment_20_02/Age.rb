class Age
  require 'date'
  def calc_age(bdate)
    d1 = DateTime.parse(bdate) 
    d2 = DateTime.now
    if d1.month > d2.month
      prev_byear = d2.year - 1
    else
      prev_byear = d2.year
    end
    age_year = prev_byear - d1.year

    if d1.month > d2.month
      age_month = ((d2.month - d1.month) % 12)
      if d1.day > d2.day
        age_month -= 1
      end
        
    else
      age_month = (d2.month - d1.month).abs
    end

    if d1.day > d2.day
      age_day = ((d2.day-d1.day) % 30.44) .floor 
    else
      age_day = (d1.day-d2.day).abs
    end
    
    age_hours = d2.hour - d1.hour
    age_min = d2.min - d1.min

    print "Age : "
    print "#{age_year}Years #{age_month}Months #{age_day}Days #{age_hours}Hours #{age_min}Minutes "
  end
end

person1 = Age.new
bdate = '2001-2-10 12:00'

person1.calc_age(bdate)