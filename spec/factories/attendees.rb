FactoryBot.define do
  factory :attendee do
    user { Faker::Number.digit.rand(1..20) }
    event { Faker::Number.digit.rand(1..15) }
  end
end
