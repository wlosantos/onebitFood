FactoryBot.define do
  factory :restaurant do
    name { Faker::Restaurant.name }
    description { Faker::Restaurant.description }
    status { 1 }
    delivery_tax { 1.5 }
    city { Faker::Address.city }
    street { Faker::Address.street_name }
    neighborhood { Faker::Address.community }
    number { Faker::Address.building_number }
    complement { Faker::Address.mail_box }
    category
  end
end
