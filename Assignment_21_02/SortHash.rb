class Main
  def sort_hash(elements, hash_to_be_sorted)
    sort_hash_proc = Proc.new{
      sorted_hash = {}
      elements.each {|i|  sorted_hash[i] = hash_to_be_sorted[i] }
      puts sorted_hash
      }
    sort_hash_proc.call
  end
end

obj = Main.new
elements = ['two', 'three', 'one']
hash_to_be_sorted = {'three' => 3, 'two' => 2, 'one' => 1}
obj.sort_hash(elements, hash_to_be_sorted)
