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
# Indexes
#
#  index_territories_on_zone_id  (zone_id)
#

require 'spec_helper'

describe Territory do
  it { should belong_to(:zone) }
  it { should have_one(:card) }
  it { should have_one(:territory_ownership) }
end
