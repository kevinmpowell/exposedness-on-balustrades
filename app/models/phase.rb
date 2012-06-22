# ## Schema Information
#
# Table name: phases
#
# Field           | Type               | Attributes
# --------------- | ------------------ | -------------------------
# **created_at ** | `datetime        ` | `not null`
# **id         ** | `integer         ` | `not null, primary key`
# **name       ** | `string(255)     ` | ``
# **order      ** | `integer         ` | ``
# **ruleset_id ** | `integer         ` | ``
# **updated_at ** | `datetime        ` | `not null`
#

class Phase < ActiveRecord::Base
  belongs_to :ruleset
  attr_accessible :name, :order
end
