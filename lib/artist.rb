class Artist

  attr_accessor :name #'sets' (writer) and 'retrieves'(reader) the name of an artist

  def initialize(name) #automatically instantiates a new artist & requires an argument (name)
    @name = name #accepts a (name) for the new instance of artist
    @@all = [] #automatically stores the new instances of artist in the @@all = [] class variable
  end

  def self.all #class method
    @@all #returns the @@all class variable which contains the collection of artists
  end

  def self.destroy_all #class method
    @@all = [] #resets the class variable @@all & returns an empty array
  end

  def save #instance method
    @@all << self #shovels every new instance of artist into the @@all = [] collection where it's saved & stored
  end

  def self.create(name) #class method, passing (name) as an argument
    new_artist = Artist.new(name) #instantiates a new instance of artist (Note: a 'name' is required by the 'initialize' method above)
    new_artist.save #calls the 'save method' (defined above) on the instance 'new_artist' just created & saves it to the @@all class variable
    new_artist
  end


end
