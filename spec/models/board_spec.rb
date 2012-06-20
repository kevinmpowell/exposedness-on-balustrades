# ## Schema Information
#
# Table name: boards
#
# Field           | Type               | Attributes
# --------------- | ------------------ | -------------------------
# **created_at ** | `datetime        ` | `not null`
# **id         ** | `integer         ` | `not null, primary key`
# **name       ** | `string(255)     ` | ``
# **updated_at ** | `datetime        ` | `not null`
#

require 'spec_helper'

describe Board do
  it { should have_many(:games) }
  it { should have_many(:zones) }
  it { should have_many(:cards) }
end
