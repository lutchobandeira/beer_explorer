FactoryGirl.define do
  factory :style do
    sequence(:original_id) { |n| "#{n} Faker::Number.number(3)" }
    name                   { Faker::Beer.style }
  end
end
