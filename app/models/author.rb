class Author < ActiveRecord::Base
  has_many :tracks
  has_many :albums
  has_many :taglinks, as: :resource
  has_many :tags, through: :taglinks
  validates :name, presence: true
  attr_reader :token_inputs

  def token_inputs=(names)
    names.split(",").each do |name|
      name.slice!("New: ")
      self.tags << Tag.find_or_create_by_name(name.delete('"'))
    end     
  end
end
