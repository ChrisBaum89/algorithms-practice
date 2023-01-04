def balancing_parentheses(string)
 open_par = 0
 missing_par = 0

 string.chars.each do |char|
  if char == "("
    open_par += 1
    next
  end
  if open_par > 0
    open_par -= 1
  else
    missing_par += 1
  end
 end

  return (open_par + missing_par)
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 0"
  puts balancing_parentheses('(()())')

  puts

  puts "Expecting: 2"
  puts balancing_parentheses('()))')

  puts

  puts "Expecting: 1"
  puts balancing_parentheses(')')

  puts

  puts "Expecting: 2"
  puts balancing_parentheses(')(')

  puts

  puts "Expecting: 3"
  puts balancing_parentheses('(((')


  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
