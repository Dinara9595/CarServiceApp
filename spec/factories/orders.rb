FactoryBot.define do
  factory :order do
    client { "Test client" }

    trait :invalid do
      client { nil }
    end

    as
  end
end