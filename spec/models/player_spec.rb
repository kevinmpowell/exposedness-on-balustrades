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

require 'spec_helper'

describe Player do
  it { should belong_to(:game) }
  it { should belong_to(:user) }
  it { should have_many(:card_ownerships) }
  it { should have_many(:territory_ownerships) }
end
