class Track < ActiveRecord::Base
  belongs_to :author
  belongs_to :album
  has_many :taglinks, as: :resource
  has_many :tags, through: :taglinks
  validates :title, :author_id, :album_id, presence: true
end
