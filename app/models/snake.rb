class Snake < ActiveRecord::Base
  has_many :trunk
  attr_accessible :name
end
