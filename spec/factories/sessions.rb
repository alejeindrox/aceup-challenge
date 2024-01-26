FactoryBot.define do
  factory :session do
    coach_hash_id { "MyString" }
    client_hash_id { "MyString" }
    start { "2024-01-26 13:24:00" }
    duration { 1 }
  end
end
