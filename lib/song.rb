require 'pry'

class Song 

attr_accessor :name, :artist

@@all = Array.new

def initialize(name)
  @name = name
  @@all.push(self)
end

def name
  @name
end

def self.all
  @@all
end

def self.new_by_filename(file_name)
    
<<<<<<< HEAD
    artist = file_name.split(" - ")[0]
    song = file_name.split(" - ")[1]
    new_song = self.new(song)
=======
    new_song = self.new(song)
    new_song.gsub("mp3","")
>>>>>>> b9af3cce2ddf9067d2ddd90c5dfcaa70940d491e
    new_song.artist_name = artist
    new_song
 
end

def artist_name=(name)
self.artist = Artist.find_or_create_by_name(name)
end

def print_songs
@songs
end

end