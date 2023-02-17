class CookLasagna 
    EXPECTED_MINUTES_IN_OVEN = 40
    
    def remaining_minutes_in_oven(minutes_in_oven)
        @remaining_minutes = EXPECTED_MINUTES_IN_OVEN - minutes_in_oven
        puts "Remaining time : #{@remaining_minutes}"
        
    end
    
    def preparation_time_in_minutes(no_of_layers)
        @total_time_for_layers = no_of_layers * 2 ;
        puts "Total time for layers: #{@total_time_for_layers} "
    end
    
    def total_time_in_minutes(minutes_in_oven, no_of_layers)
        total_time_of_layers = no_of_layers * 2
        @total_time = total_time_of_layers + minutes_in_oven
        puts "Total time: #{@total_time}"
    end
end

cl = CookLasagna.new
cl.remaining_minutes_in_oven(17)
cl.preparation_time_in_minutes(4)
cl.total_time_in_minutes(17, 4)

cl.remaining_minutes_in_oven(25)
cl.preparation_time_in_minutes(2)
cl.total_time_in_minutes(25, 2)
