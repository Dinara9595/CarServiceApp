FactoryBot.define do
  factory :category do
    name { "Test categories" }

    trait :invalid do
      name { nil }
    end
  end
end
