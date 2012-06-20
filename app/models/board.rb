# ## Schema Information
#
# Table name: boards
#
# Field           | Type               | Attributes
# --------------- | ------------------ | -------------------------
# **created_at ** | `datetime        ` | `not null`
# **id         ** | `integer         ` | `not null, primary key`
# **name       ** | `string(255)     ` | ``
# **updated_at ** | `datetime        ` | `not null`
#

class Board < ActiveRecord::Base
  attr_accessible :name
  has_many :games
  has_many :zones
  has_many :cards
end
