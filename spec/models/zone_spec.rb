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

require 'spec_helper'

describe Zone do
  it { should belong_to(:board) }
  it { should have_many(:territories) }
end
