class Song

  attr_accessor :name  #can set the name of a song + retrieves the name of a song

  def initialize(name)
    @name = name  #accepts a name for the new song
    @@all = []  #automatically stores new instances on song as they're created & puts them into the @@all = [] which stores the collection
  end

  def self.all?  #returns the class variable @@all
    @@all
  end

  def self.destroy_all  #resets the @@all class variable to an empty array
    @@all = []
  end

end
