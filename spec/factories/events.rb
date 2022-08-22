FactoryBot.define do
  factory :event do
    user { Faker::Number.digit.rand(1..20) }
    event_date { Faker::Date.between(from: 1.year.ago, to: Date.today) }
    start_time { Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 180, format: :long) }
    duration { Faker::Number.digit.rand(1..200) }
    movie_id { Faker::Number.digit.rand(1..20) }
  end
end
