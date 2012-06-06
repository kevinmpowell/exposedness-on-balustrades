class Card < ActiveRecord::Base
  attr_accessible :name
  belongs_to :board
  belongs_to :territory
  has_one :card_ownership
end
