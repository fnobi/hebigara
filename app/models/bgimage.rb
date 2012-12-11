class Bgimage < ActiveRecord::Base
  has_many :trunk
  attr_accessible :fixed, :path
end
