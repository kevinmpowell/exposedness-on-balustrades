class Player < ActiveRecord::Base
  attr_accessible :color, :order
  belongs_to :user
  belongs_to :game
  has_many :card_ownerships
  has_many :territory_ownerships
end
