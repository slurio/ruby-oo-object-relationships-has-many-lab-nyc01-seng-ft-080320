require "pry"

class Post
    attr_accessor :title, :author
    
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        if author == nil #artist method calls @artist , self.artist works too
            nil
        else
            author.name #self.artist.name works as well
        end
    end
end

