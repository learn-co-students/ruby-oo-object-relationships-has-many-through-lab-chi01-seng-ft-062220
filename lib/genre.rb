class Genre
    attr_accessor :songs
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select{|song| song.genre == self}
    end

    def artists
        song_list = self.songs
        song_list.map {|song| song.artist}
    end
end