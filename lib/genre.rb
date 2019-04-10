class Genre

  attr_accessor :name #sets and retrieves the name of a genre

  def initialize(name) #automatically instantiates a new genre & requires an argument (name)
    @name = name #accepts a (name) for the new instance of genre
    @@all = [] #automatically stores the new instance of genre in the @@all = [] class variable
    @songs = []
  end

  def self.all #class method
    @@all #returns the collection of genre stored in the @@all class variable
  end

  def songs
    @songs
  end

  def self.destroy_all #class method
    @@all = [] #resets the @@all class variable & returns an empty array
  end

  def save #instance method
    @@all << self #adds & saves the genre instance to @@all & returns the collection
  end

  def self.create(name) #class method, passes (name) as an argument
    new_genre = Genre.new(name) #instantiates a new instance of genre & requires a (name) as defined by the 'initialize' method above
    new_genre.save #saves the new instance of genre to the @@all class variable, this is done by calling the 'save method' on the new instance
    new_genre #returns the new instance, new_genre
  end

end
