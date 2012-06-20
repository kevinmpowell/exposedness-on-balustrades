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

require 'spec_helper'

describe Zone do
  it { should belong_to(:board) }
  it { should have_many(:territories) }
end
