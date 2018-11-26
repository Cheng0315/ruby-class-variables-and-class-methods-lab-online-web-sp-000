class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(song_name, artist, genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.genres
    unique_genres = []

    @@genres.each do |genre|
      unique_genres[genre] == nil ? unique_genres[genre] = 1 : unique_genres[genre] += 1
    end

    unique_genres
  end

  def self.artists
    unique_artists = []

    @@genres.each do |artist|
      unique_artists[artist] == nil ? unique_artists[artist] = 1 : unique_artists[artist] += 1
    end

    unique_artists
  end

  def self.genre_count
    genre_hash = {}

    @@genres.each do |genre|
      hash[genre] == nil ? hash[genre] = 1 : hash[genre] += 1
    end

    genre_hash
  end

  def self.artist_count
    artist_hash = {}

    @@artists.each do |artist|
      hash[artist] == nil ? hash[artisst] = 1 : hash[artist] += 1
    end

    genre_hash
  end
end
