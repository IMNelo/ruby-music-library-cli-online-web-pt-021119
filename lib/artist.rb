class Artist

  attr_accessor :name  #'sets' (writer) and 'retrieves'(reader) the name of an artist

  def initialize(name)  #automatically requires
    @name = name  #accepts a name for the new artist
    @@all = [] #automatically stores a new instance of artist when it's created
  end

  def self.all #class method
    @@all #returns the class variable which contains the collection/instances of artist from @@all = []
  end

end
