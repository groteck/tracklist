class Author < ActiveRecord::Base
  has_many :tracks
  has_many :albums
  validates :name, presence: true
end
