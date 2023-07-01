FactoryBot.define do
  factory :account do
    name {Faker::Name.last_name}
    date {"2023/06/30"}
    association :user

    after(:build) do |account|
      account.image.attach(io: File.open('public/images/monster.png'), filename: 'monster.png')
    end

  end
end