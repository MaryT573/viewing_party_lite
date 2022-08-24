FactoryBot.define do
  factory :event_user do
    user_id { rand(1..20) }
    event_id { rand(1..15) }
  end
end
