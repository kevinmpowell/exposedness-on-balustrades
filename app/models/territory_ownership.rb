class TerritoryOwnership < ActiveRecord::Base
  belongs_to :territory
  belongs_to :player
  attr_accessible :army_count
end
