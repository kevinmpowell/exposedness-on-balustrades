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

class Game < ActiveRecord::Base
  belongs_to :board
  belongs_to :ruleset
  # attr_accessible :title, :body
end
