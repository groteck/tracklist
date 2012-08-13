class Author < ActiveRecord::Base
  has_many :tracks
  has_many :albums
  has_many :taglinks, as: :resource
  has_many :tags, through: :taglinks
  validates :name, presence: true
end
