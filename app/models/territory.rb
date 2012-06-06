class Territory < ActiveRecord::Base
  attr_accessible :name
  belongs_to :zone
  has_one :card
  has_one :territory_ownership
end
