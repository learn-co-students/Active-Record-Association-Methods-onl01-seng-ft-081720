class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # drake = Artist.find_by(name: "Drake")
    if Artist.find_by(name: "Drake").nil?
      
      self.artist = Artist.create(name: "Drake")
    else
      self.artist = Artist.find_by(name: "Drake")
    end

  end
end