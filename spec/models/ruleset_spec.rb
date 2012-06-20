# ## Schema Information
#
# Table name: rulesets
#
# Field           | Type               | Attributes
# --------------- | ------------------ | -------------------------
# **created_at ** | `datetime        ` | `not null`
# **id         ** | `integer         ` | `not null, primary key`
# **name       ** | `string(255)     ` | ``
# **updated_at ** | `datetime        ` | `not null`
#

require 'spec_helper'

describe Ruleset do
  it { should have_many(:phases) }
end
