class Tag < ActiveRecord::Base
  has_many :taglinks
  has_many :authors, through: :taglinks
  has_many :albums, through: :taglinks
  has_many :tracks, through: :taglinks
  validates :name, presence: true, uniqueness: true

  def self.tokens(query)
    tags = where("name like ?", "%#{query}%")
    if tags.empty?
      [{id: "<<<#{query}>>>", name: "New: \"#{query}\""}]
    else
      tags
    end
  end
end
