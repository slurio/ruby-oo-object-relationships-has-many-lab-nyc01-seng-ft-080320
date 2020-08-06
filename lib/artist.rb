require 'pry'
class Artist
    attr_accessor :name
    attr_reader :songs

    @@all = []

    def initialize(name)
        @name = name
       # @songs = []
    end

    def self.all
        @@all
    end

    def songs #filter @songs to find artist songs
        Song.all.filter do |song|
            song.artist = self
        end
    end

    def add_song(song)
        song.artist = self
        #@songs << song
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)
        song.artist = self
       # @songs << song
    end

    def self.song_count
        Song.all.count
    end
end
