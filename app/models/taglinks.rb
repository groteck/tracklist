class Taglinks < ActiveRecord::Base
  belongs_to :resource, polymorphic: true
  belongs_to :tag
end
