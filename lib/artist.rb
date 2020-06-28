class Artist
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end
    
    def new_song(name, genre)
        new_entry = Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|song_names| song_names.artist == self}
    end

    def genres
        self.songs.collect{|song_names| song_names.genre}
    end
end