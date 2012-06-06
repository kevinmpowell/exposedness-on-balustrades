require 'spec_helper'

describe Card do
  it { should belong_to(:board) }
  it { should belong_to(:territory) }
  it { should have_one(:card_ownership) }
end
