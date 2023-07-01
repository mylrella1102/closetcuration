FactoryBot.define do
  factory :post do
    date {"2023/06/30"}
    weather_id {Faker::Number.between(from: 2, to: 5)}
    low_id {Faker::Number.between(from: 2, to: 42)}
    high_id {Faker::Number.between(from: 2, to: 42)}
    content {Faker::Lorem.sentence}
    association :user
    association :account

  end
end