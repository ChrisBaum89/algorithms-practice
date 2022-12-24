
### I actually did this the same way the solution did theirs (long hand way) without looking at it!!!
def find_shortest_string(arr)
  smallest_str = arr[0]
  arr.each do |x|
    if x.length < smallest_str.length
      smallest_str = x
    end
  end

  return smallest_str
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts "=>", find_shortest_string(['aaa', 'a', 'bb', 'ccc'])

  puts

  puts "Expecting: 'hi'"
  puts "=>", find_shortest_string(['cat', 'hi', 'dog', 'an'])

  puts

  puts "Expecting: 'lily'"
  puts "=>", find_shortest_string(['flower', 'juniper', 'lily', 'dadelion'])

  # Don't forget to add your own!

  # BENCHMARK HERE
end

# Please add your pseudocode to this file
# And a written explanation of your solution

# in an array of string, we must find the and return the shortest string