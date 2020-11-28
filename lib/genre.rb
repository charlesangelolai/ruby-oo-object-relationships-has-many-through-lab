class Genre
    attr_accessor :name, :songs, :artists

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @artists = []
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.each do |song|
            if song.genre == self
                @songs << song
            end
        end
    end

    def artists
        songs.map(&:artist)
    end
end