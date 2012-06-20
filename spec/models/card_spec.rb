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

require 'spec_helper'

describe Card do
  it { should belong_to(:board) }
  it { should belong_to(:territory) }
  it { should have_one(:card_ownership) }
end
