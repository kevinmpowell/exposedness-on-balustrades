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

require 'spec_helper'

describe CardOwnership do
  it { should belong_to(:card) }
  it { should belong_to(:player) }
end
