# ## Schema Information
#
# Table name: cards
#
# Field             | Type               | Attributes
# ----------------- | ------------------ | -------------------------
# **board_id     ** | `integer         ` | ``
# **created_at   ** | `datetime        ` | `not null`
# **id           ** | `integer         ` | `not null, primary key`
# **name         ** | `string(255)     ` | ``
# **territory_id ** | `integer         ` | ``
# **updated_at   ** | `datetime        ` | `not null`
#
# Indexes
#
#  index_cards_on_board_id      (board_id)
#  index_cards_on_territory_id  (territory_id)
#

class Card < ActiveRecord::Base
  attr_accessible :name
  belongs_to :board
  belongs_to :territory
  has_one :card_ownership
end
