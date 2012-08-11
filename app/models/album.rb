class Album < ActiveRecord::Base
  has_many :tracks, :order => "track_number ASC"
  belongs_to :author
end
