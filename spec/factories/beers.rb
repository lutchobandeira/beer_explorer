FactoryGirl.define do
  factory :beer do
    original_id Faker::Number.number(3)
    name        Faker::Beer.name
    
    trait :complete do
      description                 Faker::Lorem.sentence
      food_pairings               Faker::Lorem.sentence
      original_gravity            Faker::Number.decimal(1, 3)
      abv                         Faker::Number.decimal(0, 1)
      ibu                         Faker::Number.between(5, 120)
      glass                       { { "name" => Faker::Lorem.word } }
      style_summary               { { "name" => Faker::Beer.style } }
      is_organic                  Faker::Boolean.boolean
      labels                      { { "icon" => Faker::Internet.url, "large" => Faker::Internet.url, "medium" => Faker::Internet.url } }
      serving_temperature         Faker::Lorem.word
      serving_temperature_display "Cool - (8-12C/45-54F)"
      status                      "verified"
      status_display              "Verified"
      available                   { { "name" => "Limited", "description" => "Limited availability."} }
      year                        Date.today.year.to_s
    end
  end
end
