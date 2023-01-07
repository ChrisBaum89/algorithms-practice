def distinct_pair_sum(arr, k)

  pair_arr = []
  index_max = arr.size - 1

  for i in 0..index_max do
    for j in i..index_max do
      arr_sum = arr[i] + arr[j]
      if arr_sum == k && (i != j)
        pair_arr << [arr[i], arr[j]]
      end
    end
  end

  pair_arr
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [[1, 1], [2, 0]]"
  print "=> "
  print distinct_pair_sum([0, 1, 1, 2, 0, 1, 1], 2)

  puts

  puts "Expecting: [[2, 8]]"
  print "=> "  
  print distinct_pair_sum([3, 4, 2, 1, 5, 2, 8, 2], 10)

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
