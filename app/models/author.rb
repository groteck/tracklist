class Author < ActiveRecord::Base
  has_many :tracks
  has_many :albums
end
