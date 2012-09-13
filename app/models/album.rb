class Album < ActiveRecord::Base
  has_many :tracks, :order => "track_number ASC"
  has_many :taglinks, as: :resource
  has_many :tags, through: :taglinks
  belongs_to :author
  validates :title, :author_id, presence: true
  attr_reader :token_inputs

  def token_inputs=(names)
    if names.present?
      self.tags.delete_all
      names.split(",").each do |name|
        name.slice!("New: ")
        if self.tags.find_by_name(name.delete('"')).blank?
          self.tags << Tag.find_or_create_by_name(name.delete('"'))
        end
      end     
    else
      self.tags.delete_all if self.tags.present?
    end
  end
end
