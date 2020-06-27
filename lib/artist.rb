class Artist
    attr_reader :name, :song
    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def songs
        Song.all.select{|maker| maker.artist == self}
    end
    def new_song(name, genre)
        Song.new(name, self, genre)
    end
    def genres
        songs.map{|info| info.genre}
    end    
end