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
# Indexes
#
#  index_card_ownerships_on_card_id    (card_id)
#  index_card_ownerships_on_player_id  (player_id)
#

class CardOwnership < ActiveRecord::Base
  belongs_to :card
  belongs_to :player
  # attr_accessible :title, :body
end
