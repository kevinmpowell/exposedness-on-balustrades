# ## Schema Information
#
# Table name: zones
#
# Field           | Type               | Attributes
# --------------- | ------------------ | -------------------------
# **board_id   ** | `integer         ` | ``
# **created_at ** | `datetime        ` | `not null`
# **id         ** | `integer         ` | `not null, primary key`
# **name       ** | `string(255)     ` | ``
# **updated_at ** | `datetime        ` | `not null`
#
# Indexes
#
#  index_zones_on_board_id  (board_id)
#

class Zone < ActiveRecord::Base
  attr_accessible :name
  belongs_to :board
  has_many :territories
end
