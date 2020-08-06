class Song
    attr_accessor :artist, :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        if artist == nil #artist method calls @artist , self.artist works too
            nil
        else
            artist.name #self.artist.name works as well
        end
    end

end