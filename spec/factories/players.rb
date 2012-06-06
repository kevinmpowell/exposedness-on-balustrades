# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :player do
    user nil
    game nil
    order 1
    color "MyString"
  end
end
