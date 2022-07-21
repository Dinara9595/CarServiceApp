FactoryBot.define do
  factory :executor do
    name { "Test executors" }

    trait :invalid do
      name { nil }
    end
  end
end
