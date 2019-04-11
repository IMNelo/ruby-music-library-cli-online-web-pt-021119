class Song

  attr_accessor :name, :artist, :genre #:name> sets and retrieves the name of a song

  def initialize(name, artist = nil, genre = nil) #automatically instantiates a new song & requires an argument (name)
    @name = name #accepts a (name) for the new instance of song
    self.artist=(artist)
    self.genre=(genre)
    @@all = [] #automatically stores the new instance of song in the @@all = [] class variable
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

  def artist=(artist)
    @artist = artist
    artist.add_song(self) unless artist.nil?
  end

  def genre=(genre)
    @genre = genre
    genre.songs << self unless genre.songs.include?(self)
  end

  def self.find_by_name
    all.detect { |song| song.name == song_name }
  end

  def self.find_or_create_by_name(song_name)
    self.find_by_name(song_name) || self.create(song_name)#.uniq #shorthand condition
  end

  def self.new_from_filename(file_name)
    names = file_name.split(" - ")
    artist_name, song_name, genre_name = names[0], names[1], names[2].gsub(".mp3", "")

    new_artist = Artist.find_or_create_by_name(artist)
    new_genre = Genre.find_or_create_by_name(genre_name)
    new_song = Song.new(song_name, new_artist, new_genre)
  end

  def self.create_from_filename(file_name)
    #song = new_from_filename(file_name).save
    new_from_filename(file_name).tap { |song| song.save } #returns the tapped object
  end

end
