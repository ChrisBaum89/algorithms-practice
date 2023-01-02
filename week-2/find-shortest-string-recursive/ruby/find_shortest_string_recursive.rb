def find_shortest_string_recursive(arr)
  if arr.size == 1
    return arr.first
  end

  length_compare(arr)
  find_shortest_string_recursive(arr)
end

def length_compare(arr)
  arr[0].length > arr[1].length ? arr.delete_at(0) : arr.delete_at(1)
end


if __FILE__ == $PROGRAM_NAME
  puts "Expecting: 'a'"
  puts '=>', find_shortest_string_recursive(%w[aaa a bb ccc])

  puts

  puts "Expecting: 'hi'"
  puts '=>', find_shortest_string_recursive(%w[cat hi dog an])

  puts

  puts "Expecting: 'lily'"
  puts '=>', find_shortest_string_recursive(%w[flower juniper lily dandelion])

  # Don't forget to add your own!
end

# Please add your pseudocode to this file
# And a written explanation of your solution

# if arr[0] > arr [1], delete arr[1] from index
