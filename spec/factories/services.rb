FactoryBot.define do
  factory :service do
    name { "Test service" }

    trait :invalid do
      name { nil }
    end

    association :category
  end
end
