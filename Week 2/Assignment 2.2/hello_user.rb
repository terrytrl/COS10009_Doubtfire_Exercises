require 'date'

INCHES = 39.37


# Display the prompt and return the users name.
def read_name (name)
  puts "Please enter your name: "
  name = gets.chomp
end

# Display the prompt and return the users family name.
def read_family_name (family_name)
  puts "Please enter your family name: "
  family_name  = gets.chomp
end

# Display the prompt and return the users age.
def calculate_age (age)
  puts "Please enter your birth year: "
  birth_year = gets.to_i
  age = Date.today.year - birth_year
end

# Requests user hight in metres and converts to inches.
def calculate_hight (hight_in_inches)
  puts "Please enter your hight in metres: "
  hight_in_metres = gets().to_f
  hight_in_inches = hight_in_metres * INCHES
end

# Determin if user wishes to repeat the process or quit the program.
def read_boolean (value)
	value = gets().chomp.downcase
	case value
	when 'y', 'yes'
		true
    main
	else
		false
	end
end

def main ()
	puts read_name(@name) + "!"
  puts read_family_name(@family_name) + "!"
  puts "You are " + calculate_age(@age).to_s + " years old, looking fresh!!!"
  puts "You are " + calculate_hight(@hight_in_inches).round(2).to_s + " inches tall!"
	puts "Would you like to continue?"
  read_boolean(@value).to_s
end

main
