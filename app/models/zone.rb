# ## Schema Information
#
# Table name: zones
#
# Field               | Type               | Attributes
# ------------------- | ------------------ | -------------------------
# **board_id       ** | `integer         ` | ``
# **created_at     ** | `datetime        ` | `not null`
# **id             ** | `integer         ` | `not null, primary key`
# **name           ** | `string(255)     ` | ``
# **reinforcements ** | `integer         ` | ``
# **updated_at     ** | `datetime        ` | `not null`
#

class Zone < ActiveRecord::Base
  attr_accessible :name, :reinforcements
  belongs_to :board
  has_many :territories
end
