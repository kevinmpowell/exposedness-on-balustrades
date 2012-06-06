require 'spec_helper'

describe Board do
  it { should have_many(:games) }
  it { should have_many(:zones) }
  it { should have_many(:cards) }
end
