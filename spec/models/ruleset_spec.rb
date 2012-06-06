require 'spec_helper'

describe Ruleset do
  it { should have_many(:phases) }
end
