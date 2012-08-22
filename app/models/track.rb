class Track < ActiveRecord::Base
  belongs_to :author
  belongs_to :album
  has_many :taglinks, as: :resource
  has_many :tags, through: :taglinks
  has_attached_file :song
  validates :title, :author_id, :album_id, presence: true
  attr_reader :token_inputs

  def token_inputs=(names)
    names.split(",").each do |name|
      name.slice!("New: ")
      self.tags << Tag.find_or_create_by_name(name.delete('"'))
    end     
  end
end
