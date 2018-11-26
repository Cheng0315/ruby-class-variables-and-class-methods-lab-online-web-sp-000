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
      unique_genres.include?(genre) == false
        unique_genres << genre
      end
    end

    unique_genres
  end

  def self.artists
    unique_artists = []

    @@artists.each do |artist|
      if unique_artists.include?(artist) == false
        unique_artists << artist
      end
    end

    unique_artists
  end

  def self.genre_count
    genres_hash = {}

    @@genres.each do |genre|
      genres_hash[genre] == nil ? genres_hash[genre] = 1 : genres_hash[genre] += 1
    end

    genres_hash
  end

  def self.artist_count
    artists_hash = {}

    @@artists.each do |artist|
      artists_hash[artist] == nil ? artists_hash[artisst] = 1 : artists_hash[artist] += 1
    end

    artists_hash
  end
end
