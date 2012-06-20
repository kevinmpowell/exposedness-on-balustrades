# ## Schema Information
#
# Table name: rulesets
#
# Field           | Type               | Attributes
# --------------- | ------------------ | -------------------------
# **created_at ** | `datetime        ` | `not null`
# **id         ** | `integer         ` | `not null, primary key`
# **name       ** | `string(255)     ` | ``
# **updated_at ** | `datetime        ` | `not null`
#

class Ruleset < ActiveRecord::Base
  attr_accessible :name
  has_many :phases
end
