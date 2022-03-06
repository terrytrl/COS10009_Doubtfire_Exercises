

module Genre
  POP, CLASSIC, JAZZ, ROCK = *1..4
end

# Maybe the following needs to be changed? How?
$genre_names = ['Null', 'Pop', 'Classic', 'Jazz', 'Rock']

class Album
  attr_accessor :title, :artist, :genre
  def initialize(title, artist, genre)
    @title = title
    @artist = artist
    @genre = genre
  end
end

# This function Reads in and returns a single album from the given file, with all its tracks.
# ...for now however, take input from the terminal to enter just the album information.
# Complete the missing lines of code and change the functionality so that the hardcoded
# values are not used.

def read_album()

  # You could use get_integer_range below to get a genre.
  # You only the need validation if reading from the terminal
  # (i.e when using a file later, you can assume the data in
  # the file is correct)
  def read_integer_in_range(prompt, min, max)
  	value = read_integer(prompt)
  	while (value < min or value > max)
  		puts "Please enter a value between " + min.to_s + " and " + max.to_s + ": "
  		value = read_integer(prompt);
  	end
  	value
  end
  def read_string prompt
  	puts prompt
  	value = gets.chomp
  end

  def read_integer prompt
  	value = read_string(prompt)
  	value.to_i
  end

  # insert lines here - use read_integer_in_range to get a genre
  puts("Enter Album")
  album_title = read_string("Enter album name:")
  album_artist = read_string("Enter artist name:")
  album_genre = read_integer_in_range("Enter Genre between 1-4:", 1, 4)

  album = Album.new(album_title, album_artist, album_genre)
  album.title = album_title
  album.artist = album_artist
  album.genre = album_genre
  return album
end

# Takes a single album and prints it to the terminal
# complete the missing lines:

def print_album(album)
  puts('Album information is: ')
	puts(album.title.to_s)
  puts(album.artist.to_s)



	puts('Genre is ' + album.genre.to_s)

	puts($genre_names[album.genre])
end

# Reads in an Album then prints it to the terminal

def main()
	album = read_album()

	print_album(album)
end

main()
