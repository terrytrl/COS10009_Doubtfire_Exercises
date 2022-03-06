def add_two_numbers ()
  # Requests user input.
  puts "What is your first number?"
  a = gets().to_f
  puts "What is your second number?"
  b = gets().to_f
  # Adds var a and var b.
  c = a + b
  # Prints result.
  puts(c)
end

add_two_numbers
