# ## Schema Information
#
# Table name: phases
#
# Field           | Type               | Attributes
# --------------- | ------------------ | -------------------------
# **created_at ** | `datetime        ` | `not null`
# **id         ** | `integer         ` | `not null, primary key`
# **name       ** | `string(255)     ` | ``
# **order      ** | `integer         ` | ``
# **ruleset_id ** | `integer         ` | ``
# **updated_at ** | `datetime        ` | `not null`
#
# Indexes
#
#  index_phases_on_ruleset_id  (ruleset_id)
#

require 'spec_helper'

describe Phase do

  it { should belong_to(:ruleset) }

end
