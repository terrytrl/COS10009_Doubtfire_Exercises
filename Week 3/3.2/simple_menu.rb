def read_integer_in_range(value, min, max)
	while (value < min or value > max)
		puts "Please enter a value between " + min.to_s + " and " + max.to_s + ": "
		value = gets().to_i()
	end
	value
end

def read_string prompt
	puts prompt
	value = gets.chomp
end

def maintain_albums()
	finished = FALSE
	begin
	puts 'UPDATE ALBUM MENU'
	puts '1 To update an album title'
	puts '2 To update an album genre'
	puts '3 To enter an album'
  puts '4 To return to the main menu'
	puts 'Press enter to continue'

	choice = read_integer_in_range(gets().to_i(), 1, 4)
	case choice
		when 1
			puts 'You selected to update an album title'
			read_string 'Press enter to continue'
		when 2
			puts 'You selected to update an album genre'
			read_string 'Press enter to continue'
		when 3
			puts 'You selected to enter an album'
			read_string 'Press enter to continue'
		when 4
			finished = TRUE
			return main
	  else
			puts 'Please select again'
		end
	end until finished
end


def existing_album()
	puts 'You selected to play an existing album'
	puts 'Press enter to continue'
  gets()
end


def main
  finished = false
  begin
    puts 'Main Menu:'
    puts '1 To Enter or Update Album'
    puts '2 To Play existing Album'
    puts '3 Exit'
    choice = read_integer_in_range(gets().to_i(), 1, 3)
    case choice
    when choice = 1
      maintain_albums()
		when choice = 2
			puts "IM PLAYING AN EXISTING ALBUM"
		when choice = 3
			exit
    else
      puts 'Please select again'
    end
  end until finished
end

main
