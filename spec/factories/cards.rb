# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :card do
    board nil
    territory nil
    name "MyString"
  end
end
