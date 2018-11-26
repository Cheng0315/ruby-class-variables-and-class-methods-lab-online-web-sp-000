class Song
  @@song_counter = 0
  @@artists = []
  @@genres = []
  
  attr_accessor :name
  
  def initialize(song_name, artist, genre)
    @@song_counter += 1
    @name = song_name
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@song_counter
  end

  def self.genres
    @@genres
  end

  def self.artists
    @@artists
  end

  def self.genre_count
    @genre_hash = {}

    @@genres.each do |genre|
      hash[genre] == nil ? hash[genre] = 1 : hash[genre] += 1
    end

    @genre_hash
  end

  def self.artist_count
    @artist_hash = {}

    @@artists.each do |artist|
      hash[artist] == nil ? hash[artisst] = 1 : hash[artist] += 1
    end

    @genre_hash
  end
end
