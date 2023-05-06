class Song
     attr_accessor :name
     attr_accessor :genre
     attr_accessor :artist

     @@count = 0 
     @@artists = []
     @@genres = []

     def initialize(name, artist, genre)
        @@count += 1
        @@artists << artist
        @@genres << genre
        @name = name
        @artist = artist
        @genre = genre
     end

     def self.count
        @@count
     end

     def self.artists
        uniq_artists = @@artists.uniq
        uniq_artists
     end

     def self.genres
        uniq_genres = @@genres.uniq 
        uniq_genres
     end

     def self.genre_count
        @@genres.tally
     end

     def self.artist_count
        @@artists.tally
     end
end