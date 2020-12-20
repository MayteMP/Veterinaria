FactoryBot.define do
    factory :owner do
      name { Faker::Name.name }
      last_name { Faker::Name.last_name }
      last_name_two { Faker::Name.last_name }
      street_name { Faker::Address.street_name }
      external_number { Faker::Address.building_number }
      internal_number { Faker::Address.secondary_address }
      phone_number { Faker::Number.number(digits: 10) }
      town { Faker::Address.community }
      city { Faker::Address.city }
    end
  end
  