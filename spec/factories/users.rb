FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    username { Faker::Name.unique.name }
    password { Faker::Creature::Animal.name }
  end
end
