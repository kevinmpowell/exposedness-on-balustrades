class CardOwnership < ActiveRecord::Base
  belongs_to :card
  belongs_to :player
  # attr_accessible :title, :body
end
