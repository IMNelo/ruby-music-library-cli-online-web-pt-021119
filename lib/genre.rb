class Genre

  attr_accessor :name #'sets' (writer) & 'retrieves'(reader) the name of a genre

  def initialize(name) #automatically instantiates a new genre & requires an argument (name)
    @name = name #accepts a (name) for the new instance of genre
    @@all = [] #automatically stores the new instance of genre in the @@all = [] class variable
  end

  def self.all #class method
    @@all #returns the @@all class variable which contains the collection of genres
  end

end
