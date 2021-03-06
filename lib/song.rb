class Song
  attr_accessor :name, :artist


  def initialize (name)
    @name = name
  end

  def self.new_by_filename(file_name)
    array = file_name.split(' - ')
    song = self.new(array[1])
    song.artist = Artist.find_or_create_by_name(array[0])
    song
  end

end
