class Phase < ActiveRecord::Base
  belongs_to :ruleset
  attr_accessible :name, :order
end
