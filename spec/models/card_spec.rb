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

require 'spec_helper'

describe Card do
  it { should belong_to(:board) }
  it { should belong_to(:territory) }
  it { should have_one(:card_ownership) }
end
