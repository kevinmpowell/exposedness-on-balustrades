class Game < ActiveRecord::Base
  belongs_to :board
  belongs_to :ruleset
  # attr_accessible :title, :body
end
