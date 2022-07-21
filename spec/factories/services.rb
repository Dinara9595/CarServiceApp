FactoryBot.define do
  factory :service do
    name { "Test services" }

    trait :invalid do
      name { nil }
    end

    association :category
  end
end
