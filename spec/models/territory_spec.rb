# ## Schema Information
#
# Table name: territories
#
# Field           | Type               | Attributes
# --------------- | ------------------ | -------------------------
# **created_at ** | `datetime        ` | `not null`
# **id         ** | `integer         ` | `not null, primary key`
# **name       ** | `string(255)     ` | ``
# **updated_at ** | `datetime        ` | `not null`
# **zone_id    ** | `integer         ` | ``
#

require 'spec_helper'

describe Territory do
  it { should belong_to(:zone) }
  it { should have_one(:card) }
  it { should have_one(:territory_ownership) }
  it { should have_and_belong_to_many(:neighbors) }
end
