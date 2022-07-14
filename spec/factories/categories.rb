FactoryBot.define do
  factory :category do
    name { "Test category" }

    trait :invalid do
      name { nil }
    end
  end
end
