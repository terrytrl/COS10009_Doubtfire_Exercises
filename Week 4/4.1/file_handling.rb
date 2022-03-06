

def write_data_to_file(a_file)
   a_file.puts('6')
   a_file.puts('Fred')
   a_file.puts('Sam')
   a_file.puts('Jill')
   a_file.puts('Jenny')
   a_file.puts('Zorro')
end


def read_data_from_file(a_file)
  i = 0
  count = a_file.gets.to_i
  while (i < count)
    puts a_file.gets
    i += 1
  end
end


def main
  a_file = File.new("mydata.txt", "w")
  if a_file
    write_data_to_file(a_file)
    a_file.close
  else
    puts "Unable to open file to write!"
  end

  a_file = File.new("mydata.txt", "r")
  if a_file
    read_data_from_file(a_file)
    a_file.close
  else
    puts "Unable to open file to read!"
  end
end

main()
