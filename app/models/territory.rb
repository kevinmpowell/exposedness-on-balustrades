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

class Territory < ActiveRecord::Base
  attr_accessible :name
  belongs_to :zone
  has_one :card
  has_one :territory_ownership
  has_and_belongs_to_many :neighbors, class_name: 'Territory', join_table: 'neighbors', foreign_key: 'neighbor_id' 
end
