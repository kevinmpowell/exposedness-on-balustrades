require 'spec_helper'

describe Territory do
  it { should belong_to(:zone) }
  it { should have_one(:card) }
  it { should have_one(:territory_ownership) }
end
