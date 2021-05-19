FactoryBot.define do
  factory :restaurant do
    name { "MyString" }
    description { "MyText" }
    status { 1 }
    delivery_tax { 1.5 }
    city { "MyString" }
    street { "MyString" }
    neighborhood { "MyString" }
    number { "MyString" }
    complement { "MyString" }
    category { nil }
  end
end
