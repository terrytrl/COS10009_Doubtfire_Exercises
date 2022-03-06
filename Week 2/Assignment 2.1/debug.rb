require 'date'

# Fix up the following code that it works and produces the expected output
# in the task specification.

# Asks the user to enter their age and returns an integer age
def get_age()
  puts "Enter your age in years: "
  age_in_years = gets().to_i
  return age_in_years
end

# takes a prompt and displays it to the user then returns the
# # entered string
def get_name()
  puts "What is your name: "
  name = gets()
  return name
end

# Calculate the year born based on the parameter age and print that out
# along with the name of the user
def print_year_born(get_age, get_name)
  age = get_age
  year_born = Date.today.year - age
  name = get_name
  puts ( name.chomp + ". You were born in " + year_born.to_s)
end
#
def main
  age = get_age()
  name = get_name()
  print_year_born(age, name)
end

main
