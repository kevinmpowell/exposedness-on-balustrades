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

class TerritoryOwnership < ActiveRecord::Base
  belongs_to :territory
  belongs_to :player
  attr_accessible :army_count
end
