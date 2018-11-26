class Song
  @@song_counter = 0
  @@artists = []
  @@genres = []
  
  attr_reader :artist, :genre
  
  def initialize
    @@song_counter += 1
  end

  def artist=(artist)
    @artist = artist
    @@artists << artist
  end

  def genre=(genre)
    @genre = genre
    @@genres << genre
  end

  def self.count 
    @@song_count
  end

  def self.count 
    @@artists
  end

  def self.count 
    @@genres
  end

  def self.genre_count
    genre_hash = {}

    @@genres.each do |genre|
      hash[genre] == nil ? hash[genre] = 1 : hash[genre] += 1
    end

    genre_hash
  end
end