require 'spec_helper'

describe Zone do
  it { should belong_to(:board) }
  it { should have_many(:territories) }
end
