class Track < ActiveRecord::Base
  belongs_to :author
  belongs_to :album
end
