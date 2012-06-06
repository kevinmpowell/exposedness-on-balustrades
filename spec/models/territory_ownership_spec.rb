require 'spec_helper'

describe TerritoryOwnership do
  it { should belong_to(:territory) }
  it { should belong_to(:player) }
end
