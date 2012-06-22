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

require 'spec_helper'

describe TerritoryOwnership do
  it { should belong_to(:territory) }
  it { should belong_to(:player) }
end
