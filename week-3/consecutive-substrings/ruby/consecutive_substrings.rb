def consecutive_substrings(string)
# string[0..0], string[0..1], string [0..2], string [0..3], string [1..1]
# string [1..2], string[1..3], string [2..2]

  arr = []
  index_max = string.length - 1
  for i in 0..index_max do
    for j in i..index_max do
      arr.push(string[i..j])
    end
   
  end
  arr
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: ['a', 'ab', 'abc', 'b', 'bc', 'c']"
  print "=> " 
  print consecutive_substrings('abc')

  puts

  puts "Expecting: ['a']"
  print "=> " 
  print consecutive_substrings('a')

  puts

  puts "Expecting: ['a, ab, abc, abcd, b, bc, bcd, c, cd, d']"
  print "=> " 
  print consecutive_substrings('abcd')

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
