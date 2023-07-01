FactoryBot.define do
  factory :account do
    name {Faker::Name.last_name}
    date {"2023/06/30"}
    association :user

  end
end