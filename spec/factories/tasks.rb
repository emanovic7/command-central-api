FactoryBot.define do
  factory :task do
    note { Faker::Quotes::Shakespeare.king_richard_iii_quote }
  end
end
