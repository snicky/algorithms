def max_streak arr
  cur   = nil    # Current streak value
  len   = nil    # Current streak length (-1)
  max   = nil    # Max streak value
  max_l = nil    # Max streak left index
  max_r = nil    # Max streak right index
  
  arr.each_with_index do |element, index|
    
    if cur && cur > 0
      cur += element
      len += 1
    else
      cur = element
      len = 0
    end
    
    if !max || cur > max
      max   = cur
      max_r = index
      max_l = index - len
    end
    
  end
  
  arr[max_l..max_r]
end