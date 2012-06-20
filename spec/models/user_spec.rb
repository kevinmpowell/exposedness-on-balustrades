# ## Schema Information
#
# Table name: users
#
# Field           | Type               | Attributes
# --------------- | ------------------ | -------------------------
# **created_at ** | `datetime        ` | `not null`
# **id         ** | `integer         ` | `not null, primary key`
# **updated_at ** | `datetime        ` | `not null`
#

require 'spec_helper'

describe User do
  it { should have_many(:players) }
end
