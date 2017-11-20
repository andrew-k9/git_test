def insert(arr)
  (1...arr.length).each do |i|
    if arr[i] <= arr[i - 1]
    	j = i
    	while j > 0 and arr[j] < arr[j - 1]
    		temp = arr[j]
    		arr[j] = arr[j - 1]
			arr[j - 1] = temp
			j -= 1
		end 
	end
  end
	return arr
end