# returns the middle of the to indicies
def middle(x,y)
  return ((x + y) / 2 ).floor
end

# Standard implemintation of binary search algorithm.
# Expects sorted array, and returns -1 if the index is not present
def binary(arr, n)
  
  if !arr.is_a?(Array) || !n.is_a?(Fixnum)
    if !arr.is_a?(Array) && n.is_a?(Fixnum)
      puts "An error has occured. arr is of type #{arr.class}"
    elsif !n.is_a?(Fixnum) && arr.is_a?(Array)
      puts "An error has occured. n is of type #{n.class}"
    else
      puts "An error has occured. arr is of type #{arr.class} and n is of type #{n.class} "
    end
    return -1
  end

  left  = 0
  right = arr.length - 1
  mid   = middle(left,right)
  ans   = -1

  while left <= right
    if n == arr[mid]
      ans = mid
      left = right + 1
    elsif n < arr[mid]
	    right = mid - 1
	    mid = middle(left,right)
    else
      left = mid  + 1
      mid  = middle(left,right)
    end
  end

  return ans

end