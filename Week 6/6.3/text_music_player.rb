

module Genre
  POP, CLASSIC, JAZZ, ROCK = *1..4
end

# Uh oh - the following is a global variable
# What do we say about using global variables in the lecture notes?
$genre_names = ['Null', 'Pop', 'Classic', 'Jazz', 'Rock']

class Track
	attr_accessor :name, :location

	def initialize (name, location)
		@name = name
		@location = location
	end
end

class Album
	attr_accessor :title, :artist, :genre, :tracks

	def initialize (title, artist, genre, tracks)
		@title = title
		@artist = artist
		@genre = genre
		@tracks = tracks
	end
end

# Reads in and returns a single track from the terminal
def read_string prompt
	puts prompt
	value = gets.chomp
end

def read_integer prompt
	value = read_string(prompt)
	value.to_i
end

def read_integer_in_range(prompt, min, max)
	value = read_integer(prompt)
	while (value < min or value > max)
		puts "Please enter a value between " + min.to_s + " and " + max.to_s + ": "
		value = read_integer(prompt);
	end
	value
end

def read_track
	# Complete the missing code
  track_name = read_string("Please enter your track name: ")
  track_location = read_string("Please enter your tracks location: ")
  Track.new(track_name, track_location)
end

# Reads in and returns an array of multiple tracks from the given file

def read_tracks
	tracks = Array.new()
	count = read_integer_in_range("Please enter the total number of tracks: ", 0, 15)
	# Complete the missing code
  i = 0
  while (i < count)
    track = read_track
    tracks << track
    i += 1
  end
	return tracks
end

# Display the genre names in a
# numbered list and ask the user to select one
def read_genre()
puts ""
  i = 0
  while i < $genre_names.length
    puts i.to_s + ": " + $genre_names[i]
    i += 1
  end

    genre = read_integer_in_range("Please select your albums genre: ", 0, 3)
    return genre

end

# Reads in and returns a single album from the terminal, with all its tracks

def read_album
	# Complete the missing code
  album_title = read_string("Please enter your album title: ")
  album_artist = read_string("Please enter the artist of your album: ")
  album_genre = read_genre()
  tracks = read_tracks()
	album = Album.new(album_title, album_artist, album_genre, tracks)
	return album
end

# Takes an array of tracks and prints them to the terminal

def print_track tracks 
  index = 0
  while (index < tracks.length)
    print_track(tracks[index])
    index += 1
  end
	# Complete the missing code
end

# Takes a single album and prints it to the terminal

def print_album album
	# Complete the missing code
  puts 'Album title: ' + album.title
	puts 'Genre is ' + album.genre.to_s
	puts $genre_names[album.genre]
	print_track(album.tracks)
end

# Reads in an array of albums from a file and then prints all the albums in the
# array to the terminal

def main
  puts "Welcome to the music player"
	album = read_album()
	print_album(album)
end

main
