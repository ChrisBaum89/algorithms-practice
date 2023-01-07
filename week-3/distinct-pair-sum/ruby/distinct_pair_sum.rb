require 'set'

def distinct_pair_sum(arr, k)

  pair_arr = []
  max_index = arr.size - 2
  for i in 0..max_index
    pair = [arr[i], arr[i+1]]
    if equals_sum?(arr, i, k)
      pair_arr.delete(pair.reverse)
      pair_arr << pair
    end
  end
  pair_arr
end

def equals_sum?(arr, i, target_sum)
  (arr[i] + arr[i+1]) == target_sum ? true : false
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
