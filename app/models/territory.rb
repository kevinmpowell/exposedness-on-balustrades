# ## Schema Information
#
# Table name: territories
#
# Field           | Type               | Attributes
# --------------- | ------------------ | -------------------------
# **created_at ** | `datetime        ` | `not null`
# **id         ** | `integer         ` | `not null, primary key`
# **name       ** | `string(255)     ` | ``
# **updated_at ** | `datetime        ` | `not null`
# **zone_id    ** | `integer         ` | ``
#
# Indexes
#
#  index_territories_on_zone_id  (zone_id)
#

class Territory < ActiveRecord::Base
  attr_accessible :name
  belongs_to :zone
  has_one :card
  has_one :territory_ownership
end
