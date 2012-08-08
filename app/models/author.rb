class Author < ActiveRecord::Base
  has_many :albums
end
