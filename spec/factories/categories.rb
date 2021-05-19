FactoryBot.define do
  factory :category do
    title { Faker::Restaurant.type }
  end
end
