class Song
    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def genre
        @genre
    end

    def artist
        @artist
    end

    def artist=(artist)
        @artist = artist
        artist.new_song(self) unless artist.songs.include?(self)
    end
end