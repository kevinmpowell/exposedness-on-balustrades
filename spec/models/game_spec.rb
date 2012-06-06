require 'spec_helper'

describe Game do
  it { should belong_to(:ruleset) }
  it { should belong_to(:board) }
end
