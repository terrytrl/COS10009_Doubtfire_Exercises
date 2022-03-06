require './input_functions'
# takes a number and writes that number to a file then on each line
# increments from zero to the number passed
def write(aFile, number)
  # You might need to fix this next line:
  aFile.puts(number)
  index = 0
  while (index < number)
   aFile.puts(index)
   index += 1
  end
end

# Read the data from the file and print out each line
def read(aFile, count)

  # Defensive programming:
    if (is_numeric?(count))
      count = count.to_i
    else
      count = 0
      puts "Error: first line of file is not a number"
    end
 
	index = 0
	puts "Total number of values: " + aFile.gets
	while (index < count)
	line = aFile.gets
	puts "Line " + index.to_s + " value " + line
	index += 1
	end
end

# Write data to a file then read it in and print it out
def main
  aFile = File.new("mydata.txt", "w") # open for writing
  
  if !aFile
    puts "Can not open file"
  else
	amount = read_integer("Enter any number: ")
	write(aFile, amount)
	aFile.close
	
	aFile = File.open("mydata.txt", "r")
    read(aFile, amount)
	puts "You've done it."
  end
  
  aFile.close
end

# returns true if a string contains only digits
def is_numeric?(obj)
  if /[^0-9]/.match(obj.to_s) == nil
    return true
  else
    return false
  end
end

main
