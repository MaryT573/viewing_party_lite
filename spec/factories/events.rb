FactoryBot.define do
  factory :event do
    event_date { Faker::Date.between(from: 1.year.ago, to: Date.today) }
    start_time { Faker::Time.between(from: DateTime.now + 1, to: DateTime.now + 180, format: :long) }
    duration { rand(1..200) }
    movie_id { (1..20) }
  end
end
