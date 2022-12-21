def reverse_string(str)
  # looking for "him" to switch to "mih"
  # need to break "him" into an array for each character
  # array = [h, i, m]
  # we want:
  # array[0] = newarray[2]
  # array[1] = newarray[1]
  # array[2] = newarray[2]
  orig_str_array = str.split("")
  print orig_str_array
  
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'ih'"
  puts "=>", reverse_string('hi')

  puts

  puts "Expecting: 'ybabtac'"
  puts "=>", reverse_string('catbaby')

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution