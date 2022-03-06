def print_silly_name(name)
  i = 0
  print name.upcase() + ' is a '
    while i < 60
    print 'silly '
    i = i + 1
  end
  print 'name'
end

def main()
  puts 'Please enter your name: '
  name = gets().chomp.downcase

  if name == 'terry' || name == 'najam'
    puts name.upcase + ' is an awesome name!'
  else
    print_silly_name(name)
  end
end

main
