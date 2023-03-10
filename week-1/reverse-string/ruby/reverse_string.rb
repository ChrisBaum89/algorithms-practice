require "benchmark"

def reverse_string(str)
  new_string = ""
  str.chars.each do |char|
    new_string = char + new_string
  end
  return new_string
  
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

# looking for "him" to switch to "mih"
  # need to break "him" into an array for each character
  # array = [h, i, m]
  # we want:
  # array[0] = newarray[2]
  # array[1] = newarray[1]
  # array[2] = newarray[0]


# first attempt. according to rspec on my computer, took 0.0027 seconds to finish (files took .07 seconds to load)
# def reverse_string(str)
#   orig_str_array = str.split("")
#   new_str_array = []
#   end_length = orig_str_array.length - 1
#   for i in 0..end_length do
#     pointer = end_length - i
#     new_str_array.push(orig_str_array[pointer])
#   end
#   new_string = new_str_array.join("")
#   return new_string

# end

# second attempt:
# create new variable
# cycle through each character of the string and add it to the beginning of the new_string
# variable.

# did some speed testing and second attempt was much faster