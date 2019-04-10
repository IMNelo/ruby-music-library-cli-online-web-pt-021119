class Artist

  attr_accessor :name #sets and retrieves the name of an artist

  def initialize(name) #automatically instantiates a new artist & requires an argument (name)
    @name = name #accepts a (name) for the new instance of artist
    @@all = [] #automatically stores the new instance of artist in the @@all = [] class variable
    @songs = [] #automatically stores instances of songs
  end

  def self.all #class method
    @@all #returns the collection of artists stored in the @@all class variable
  end

  def songs #instance method
    @songs #returns the collection of songs stored in the @songs instance variable
  end

  def self.destroy_all #class method
    @@all = [] #resets the @@all class variable & returns an empty array
  end

  def save #instance method
    @@all << self #adds & saves the new instance of an artist to @@all & returns the collection
  end

  def self.create(name) #class method, passes (name) as an argument
    new_artist = Artist.new(name) #instantiates a new instance of artist & requires a (name) as defined by the 'initialize' method above
    new_artist.save #saves the new instance of artist to the @@all class variable, this is done by calling the 'save method' on the new instance
    new_artist #returns the new instance, new_artist
  end

  def add_song(song) #instance method
    song.artist= self if song.artist == nil
    self.songs << song unless self.songs.include?(song) #adds new instance of a song to the @songs = [] instance variable unless the song already exists in the collection in which case the code would do nothing
  end

end
