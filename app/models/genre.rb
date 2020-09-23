class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
  end

  def artist_count
    arr =  []
    self.songs.each do |song|
      arr << song.artist
    end
    arr.uniq.count
  end

  def all_artist_names
    self.artists.collect do |artist|
      artist.name 
    end
  end
end
