def fibonacci(n)
  # 0, 1, 1, 2, 3, 5, 8, 13, 21
  if n < 2
    return n
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 0"
  puts "=>", fibonacci(0)

  puts

  puts "Expecting: 1"
  puts "=>", fibonacci(2)

  puts

  puts "Expecting: 55"
  puts "=>", fibonacci(10)

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
