FactoryGirl.define do
  factory :item do
    sequence(:title) { |n| "Item Title#{n}" }
  end
end
