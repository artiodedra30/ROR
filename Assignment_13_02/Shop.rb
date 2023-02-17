class Shop
    def getProduct(name, price)
        @p_name = name
        @p_price = price
   end
   def getDetails()
       puts "Enter Your Name: "
       @@username = gets
       puts "Enter gst:"
       @@gst = gets.chomp.to_i
       
      puts "Welcome #{@@username} your invoice with #{@@gst} gst are below: "
      puts "Product details:"
       
   end
    def displayProduct()
        @totalcost = @p_price + @@gst
        
       puts "#{@p_name} - #{@totalcost}"
   end
end

s1 = Shop.new

s1.getDetails()

s1.getProduct("Books", 400)
s1.displayProduct()

s1.getProduct("Marker", 50)
s1.displayProduct()
