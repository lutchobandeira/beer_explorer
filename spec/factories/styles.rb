FactoryGirl.define do
  factory :style do
    original_id Faker::Number.number(3)
    name        Faker::Beer.style
  end
end
