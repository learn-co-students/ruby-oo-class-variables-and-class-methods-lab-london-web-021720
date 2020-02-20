class Song

    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        unique_genres = @@genres.uniq
        unique_genres
    end

    def self.artists
        unique_artists = @@artists.uniq
        unique_artists
    end

    def self.genre_count
        i = 0
        hash = {}
        while i < @@genres.size do
            if hash[@@genres[i]]
                hash[@@genres[i]] += 1
            else
                hash[@@genres[i]] = 1
            end
            i += 1
        end
        hash
    end

    def self.artist_count
        i = 0
        hash = {}
        while i < @@artists.size do
            if hash[@@artists[i]]
                hash[@@artists[i]] += 1
            else
                hash[@@artists[i]] = 1
            end
            i += 1
        end
        hash
    end




end




