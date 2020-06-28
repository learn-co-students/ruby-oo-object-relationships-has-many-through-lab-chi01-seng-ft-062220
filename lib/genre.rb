class Genre
    @@all = []
    attr_accessor :name
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select {|song_names| song_names.genre == self}
    end

    def artists
        self.songs.collect{|song_names| song_names.artist}
    end
end
