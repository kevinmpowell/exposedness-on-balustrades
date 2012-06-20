# ## Schema Information
#
# Table name: games
#
# Field           | Type               | Attributes
# --------------- | ------------------ | -------------------------
# **board_id   ** | `integer         ` | ``
# **created_at ** | `datetime        ` | `not null`
# **id         ** | `integer         ` | `not null, primary key`
# **ruleset_id ** | `integer         ` | ``
# **updated_at ** | `datetime        ` | `not null`
#
# Indexes
#
#  index_games_on_board_id    (board_id)
#  index_games_on_ruleset_id  (ruleset_id)
#

class Game < ActiveRecord::Base
  belongs_to :board
  belongs_to :ruleset
  # attr_accessible :title, :body
end
