class Trunk < ActiveRecord::Base
  belongs_to :snake
  belongs_to :bgimage
  attr_accessible :bgcolor, :length, :bgimage_id, :snake_id
end
