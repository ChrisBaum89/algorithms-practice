require 'pry'

def fibonacci(num)
 # 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55
 fib_series = [0, 1]

 for i in 0..num do
  if fib_series[i] == nil
    fib_num = fib_series[i - 1] + fib_series[i - 2]
    fib_series.push(fib_num)
  end
 end

 return fib_series[num]
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

#test for github

# fibonacci series is 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55
# add the two previous to get the next number
# using 0 index as the first number, we want to be able to enter a value and return
# that index within the sequence.
# to do that we need to perform the fibonacci sequence up to that index by adding 2 previous values

