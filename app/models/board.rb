class Board < ActiveRecord::Base
  attr_accessible :name
  has_many :games
  has_many :zones
  has_many :cards
end
