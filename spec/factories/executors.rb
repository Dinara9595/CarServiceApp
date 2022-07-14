FactoryBot.define do
  factory :executor do
    name { "Test executor" }

    trait :invalid do
      name { nil }
    end
  end
end
