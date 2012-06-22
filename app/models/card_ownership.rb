# ## Schema Information
#
# Table name: card_ownerships
#
# Field           | Type               | Attributes
# --------------- | ------------------ | -------------------------
# **card_id    ** | `integer         ` | ``
# **created_at ** | `datetime        ` | `not null`
# **id         ** | `integer         ` | `not null, primary key`
# **player_id  ** | `integer         ` | ``
# **updated_at ** | `datetime        ` | `not null`
#

class CardOwnership < ActiveRecord::Base
  belongs_to :card
  belongs_to :player
  # attr_accessible :title, :body
end
