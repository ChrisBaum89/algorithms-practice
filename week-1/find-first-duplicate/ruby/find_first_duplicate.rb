def find_first_duplicate(arr)
  new_array = []

  arr.each do |x|
    new_array.push(x)
    if new_array.count(x) > 1 then
      return x
    end
  end

  return -1
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 3"
  puts "=>", find_first_duplicate([2, 1, 3, 3, 2])

  puts

  puts "Expecting: -1"
  puts "=>", find_first_duplicate([1, 2, 3, 4])

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution

# want to use "each" array method
# save the variable to a new array and check the new array for a count that is higher than 1
# return value if count is greater than 1
# if a value is not found that is greater than one, then at end of function, return -1
# the -1 will never be reached if a duplicate is found