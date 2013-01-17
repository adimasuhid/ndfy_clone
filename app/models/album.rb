class Album < ActiveRecord::Base
  attr_accessible :name, :desc, :artist_id

  belongs_to :artist
end
