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

class Card < ActiveRecord::Base
  attr_accessible :name
  belongs_to :board
  belongs_to :territory
  has_one :card_ownership
end
