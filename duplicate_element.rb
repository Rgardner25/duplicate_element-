def first_repeated_element(arr)
  return nil if arr.empty?

  counter_hash = Hash.new { 0 }

  arr.each do |e|
    counter_hash[e] = counter_hash[e] += 1

    return e if counter_hash[e] > 1
  end

  return nil
end
