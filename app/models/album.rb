class Album < ActiveRecord::Base
  has_many :tracks, :order => "track_number ASC"
  has_many :taglinks, as: :resource
  has_many :tags, through: :taglinks
  belongs_to :author
  validates :title, :author_id, presence: true
end
