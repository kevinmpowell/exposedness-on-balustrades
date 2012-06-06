# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :territory_ownership do
    territory nil
    player nil
    army_count 1
  end
end
