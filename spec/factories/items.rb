FactoryBot.define do
  factory :item do
    name {Faker::Name.last_name}
    category_id {Faker::Number.between(from: 2, to: 9)}
    color_id {Faker::Number.between(from: 2, to: 15)}
    season_id {Faker::Number.between(from: 2, to: 5)}
    info {Faker::Lorem.sentence}

    association :user
    association :account

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/flower_shirt.png'), filename: 'flower_shirt.png')
    end

  end
end