class Track < ActiveRecord::Base
  belongs_to :author
  belongs_to :album
  has_many :taglinks, as: :resource
  has_many :tags, through: :taglinks
  validates :title, :author_id, :album_id, presence: true
  attr_reader :token_inputs

  def token_inputs=(names)
    if names.present?
      tags_old = self.tags 
      names.split(",").each do |name|
        name.slice!("New: ")
        if self.tags.find_by_name(name.delete('"')).blank?
          self.tags << Tag.find_or_create_by_name(name.delete('"'))
        else
          tags_old.delete self.tags.find_by_name(name.delete('"'))
        end
      end     
        self.tags.delete tags_old if tags_old.present?
    else
      self.tags.delete_all if self.tags.present?
    end
  end
end
