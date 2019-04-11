class MusicImporter

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def file
    Dir.glob("#{path}/*.mp3").collect { |file| file.gsub("#{path}/", "")}
  end

end
