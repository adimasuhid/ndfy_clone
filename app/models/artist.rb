class Artist < ActiveRecord::Base
  attr_accessible :name, :desc

  has_many :albums
end
