require 'pry'

class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    drake_is_real = Artist.find_by(name: "Drake")

    if !drake_is_real
      drake = Artist.create(name: "Drake")
      self.artist = drake
    else
      self.artist = drake_is_real
    end
  end
end