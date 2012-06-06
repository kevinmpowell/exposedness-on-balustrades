require 'spec_helper'

describe Player do
  it { should belong_to(:game) }
  it { should belong_to(:user) }
  it { should have_many(:card_ownerships) }
  it { should have_many(:territory_ownerships) }
end
