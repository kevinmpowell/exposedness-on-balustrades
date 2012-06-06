class Zone < ActiveRecord::Base
  attr_accessible :name
  belongs_to :board
  has_many :territories
end
