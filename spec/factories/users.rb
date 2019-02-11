FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    description { Faker::Lorem.characters(25) }
    first_name { Faker::Name.first_name}
    last_name {Faker::Name}
    encrypted_password {Faker::Lorem.characters(10)}
  end
end
