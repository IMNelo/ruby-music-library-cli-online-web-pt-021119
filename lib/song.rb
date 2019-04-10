class Song

  attr_accessor :name  #sets and retrieves the name of a song

  def initialize(name) #automatically instantiates a new song & requires an argument (name)
    @name = name #accepts a (name) for the new instance of song
    @@all = [] #automatically stores the new instance of song in the @@all = [] class variable
  end

  def self.all  #class method
    @@all  #returns the @@all class variable which contains the collection of songs
  end

  def self.destroy_all  #class method
    @@all = []  #resets by empting out the collection of songs from @@all = [] & returns the empty @@all class variable
  end

  def save  #instance method
    @@all << self  #adds every new instance of a song to the @@all = [] collection & returns the @@all class variable
  end

  def self.create(name)  #class method passing (name) as an argument
    new_song = Song.new(name)  #creates new_song
    new_song.save  #saves new_song
    new_song  #returns new_song
  end

  def initialize(name)
    @name = name
    @@all = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all = []
  end

end
