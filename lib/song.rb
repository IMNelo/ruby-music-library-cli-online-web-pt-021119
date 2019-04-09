class Song

  attr_accessor :name  #can set the name of a song + retrieves the name of a song

  def initialize(name)
    @name = name  #accepts a name for the new song
    @@all = []  #automatically stores new instances on song as they're created & puts them into the @@all = [] which stores the collection
  end

  def self.all  #class method
    @@all  #returns the class variable @@all, exposes the collection/instances of songs
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

end
