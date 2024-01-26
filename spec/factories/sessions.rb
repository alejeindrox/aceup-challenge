FactoryBot.define do
  factory :session do
    coach_hash_id { "unique_coach_id" }
    client_hash_id { "unique_client_id" }
    start { Time.now }
    duration { 60 }
  end
end
