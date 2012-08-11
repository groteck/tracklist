class Track < ActiveRecord::Base
  belongs_to :author
  belongs_to :album
  validates :title, :author_id, :album_id, presence: true
end
