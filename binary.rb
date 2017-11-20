
def delta(x,y)
  return ((x + y) / 2 ).floor
end

def binary(arr, n)
  
  left  = 0
  right = arr.length - 1
  mid   = delta(left,right)
  ans   = -1

  while left <= right
    if n == arr[mid]
      ans = mid
      left = right + 1
    elsif n < arr[mid]
	   right = mid - 1
	   mid = delta(left,right)
    else
     left = mid  + 1
     mid  = delta(left,right)
    end
  end

  return ans

end