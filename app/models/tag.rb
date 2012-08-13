class Tag < ActiveRecord::Base
  has_many :taglinks
  has_many :authors, through: :taglinks
  has_many :albums, through: :taglinks
  has_many :tracks, through: :taglinks
  validates :name, presence: true, uniqueness: true
end
