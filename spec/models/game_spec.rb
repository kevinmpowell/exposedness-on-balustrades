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

require 'spec_helper'

describe Game do
  it { should belong_to(:ruleset) }
  it { should belong_to(:board) }
end
