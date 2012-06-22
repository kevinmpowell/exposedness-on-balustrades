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

require 'spec_helper'

describe Phase do

  it { should belong_to(:ruleset) }

end
