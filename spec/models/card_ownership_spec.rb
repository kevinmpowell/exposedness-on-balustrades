require 'spec_helper'

describe CardOwnership do
  it { should belong_to(:card) }
  it { should belong_to(:player) }
end
