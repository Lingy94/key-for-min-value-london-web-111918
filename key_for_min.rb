# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  
  array = name_hash.collect {|key,value| key }
  swapped = true
  n = array.length
  while swapped do 
    swapped = false 
    (n-1).times do |i|
      if name_hash[array[i]] > name_hash[array[i + 1]]
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end
    
  end
  array[0]
end
