def selection_sort(arr)
  # [ 2, 1, -1, 3, 6, 4]
  # [ -1, 1, 2, 3, 4, 6]

  i = 0
  while ((i != arr.size - 1) && (arr.size > 0))
   if arr[i] > arr[i + 1]
    arr[i], arr[i + 1] = arr[i + 1], arr[i]
    i = 0
   else
    i = i + 1
   end
  end

  return arr


end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: [-1, 2, 3, 5]"
  print "=> "
  print selection_sort([3, -1, 5, 2])

  puts

  # Don't forget to add your own!

  # BENCHMARK HERE, you can print the average runtime
  long_input = []

  100.times { long_input << rand }
end

# Please add your pseudocode to this file
# And a written explanation of your solution

# need to sort an array from smallest to largest
# compare a number to the number to the left of it.
# if number is smaller, move it, and subtract 1 from index
# continue this loop until number is no longer smaller
