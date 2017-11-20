## File for testing insertion sort and the binary search

require_relative 'binary.rb'
require_relative 'insert.rb'

def foo()
  array = Array.new(100) { rand(0...100)}
  array = insert(array)
  count = 0

  array.each do |value|
    
    (value < 10) ? (print "0#{value} ") : (print "#{value} ")

    if count > 8
    	count = 0
    	puts " "
    else
    	count += 1
    end
  end

  puts " ", "***********************", " "
   
  value = rand(0...200) 
  n = binary(array,value)

  (n != -1) ? (puts "#{value} is at index #{n}") : (puts "#{value} is not in the array")
end


foo()