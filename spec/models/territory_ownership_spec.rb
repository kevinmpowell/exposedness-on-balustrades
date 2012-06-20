# ## Schema Information
#
# Table name: territory_ownerships
#
# Field             | Type               | Attributes
# ----------------- | ------------------ | -------------------------
# **army_count   ** | `integer         ` | ``
# **created_at   ** | `datetime        ` | `not null`
# **id           ** | `integer         ` | `not null, primary key`
# **player_id    ** | `integer         ` | ``
# **territory_id ** | `integer         ` | ``
# **updated_at   ** | `datetime        ` | `not null`
#
# Indexes
#
#  index_territory_ownerships_on_player_id     (player_id)
#  index_territory_ownerships_on_territory_id  (territory_id)
#

require 'spec_helper'

describe TerritoryOwnership do
  it { should belong_to(:territory) }
  it { should belong_to(:player) }
end
