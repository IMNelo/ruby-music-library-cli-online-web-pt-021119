class Song

  attr_accessor :name, :artist #sets and retrieves the name of a song

  def initialize(name, artist = nil) #automatically instantiates a new song & requires an argument (name)
    @name = name #accepts a (name) for the new instance of song
    @artist = artist
    @@all = [] #automatically stores the new instance of song in the @@all = [] class variable
    #FAILED - can be invoked with an optional second argument, an Artist object to be assigned to the song's 'artist' property (song belongs to artist)
  end

  def self.all #class method
    @@all  #returns the collection of song stored in the @@all class variable
  end

  def self.destroy_all #class method
    @@all = [] #resets the @@all class variable & returns an empty array
  end

  def save #instance method
    @@all << self #adds & saves the new instance of a song to @@all & returns the collection
  end

  def self.create(name) #class method, passes (name) as an argument
    new_song = Song.new(name) #instantiates a new instance of song & requires a (name) as defined by the 'initialize' method above
    new_song.save #saves the new instance of song to the @@all class variable, this is done by calling the 'save method' on the new instance
    new_song  #returns the new instance, new_song
  end

end
