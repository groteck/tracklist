class Album < ActiveRecord::Base
  has_many :tracks, :order => "track_number ASC"
  has_many :taglinks, as: :resource
  has_many :tags, through: :taglinks
  belongs_to :author
  validates :title, :author_id, presence: true
  attr_reader :token_inputs

  def token_inputs=(ids)
    ids.split(",").each do |id|
      self.tags << Tag.find(id)
    end      
  end
end
