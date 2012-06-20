# ## Schema Information
#
# Table name: players
#
# Field           | Type               | Attributes
# --------------- | ------------------ | -------------------------
# **color      ** | `string(255)     ` | ``
# **created_at ** | `datetime        ` | `not null`
# **game_id    ** | `integer         ` | ``
# **id         ** | `integer         ` | `not null, primary key`
# **order      ** | `integer         ` | ``
# **updated_at ** | `datetime        ` | `not null`
# **user_id    ** | `integer         ` | ``
#
# Indexes
#
#  index_players_on_game_id  (game_id)
#  index_players_on_user_id  (user_id)
#

class Player < ActiveRecord::Base
  attr_accessible :color, :order
  belongs_to :user
  belongs_to :game
  has_many :card_ownerships
  has_many :territory_ownerships
end
