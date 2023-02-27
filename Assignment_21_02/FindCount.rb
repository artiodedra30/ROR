class Main
  def find_count
    aFile = File.open("array.txt", 'r')
    oFile = File.new("output.txt", 'w+')
    elements = eval(aFile.read);
    len = elements.length

    count_hash = {}
    i = 0
    while i < len
      val = elements[i]
      if count_hash.has_key?(val)
        count_hash[val] += 1
      else
        count_hash[val] = 1
      end
      i += 1
    end
 
    hash2 = {}
    count_hash.each {|k,v| 
    if v==1
      hash2[k] = count_hash[k]
      count_hash.delete(k)
    end  
    }
    
    puts count_hash
    oFile.syswrite(hash2)
        
  end
end

obj = Main.new
obj.find_count