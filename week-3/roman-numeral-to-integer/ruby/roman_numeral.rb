

def roman_numeral(string)
  #call symbols e.g. symbols[:II]
  #need unique 
  symbols = {
    I: 1,
    V: 5,
    X: 10,
    L: 50,
    C: 100,
    D: 500,
    M: 1000,
  }

  sum = 0
  idx_max = string.length - 1

  for i in 0..idx_max do
    value = symbols[string[i].to_sym]
    sum = sum + value
    if smaller_number_check?(string, symbols, i)
      sum = sum - 2 * symbols[string[i].to_sym]
    end
  end

  sum

end

def smaller_number_check?(string, symbols, i)
  value_1 = symbols[string[i].to_sym]
  value_2 = calc_value_2(string, symbols, i)
  value_1 < value_2 ? true : false
end

def calc_value_2 (string, symbols, i)
  string[i+1] != nil ? symbols[string[i+1].to_sym] : 0
end

if __FILE__ == $PROGRAM_NAME
  # puts "Expecting: 1"
  # puts roman_numeral('I')

  # puts

  # puts "Expecting: 9"
  # puts roman_numeral('IX')

  # puts

  puts "Expecting: 402"
  puts roman_numeral('CDII')

  puts

  puts "Expecting: 3849"
  puts roman_numeral('MMMDCCCXLIX')

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution
