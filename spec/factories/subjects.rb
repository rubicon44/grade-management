FactoryBot.define do
  factory :subject do
    trait :japanese do
      name    { 'japanese' }
    end

    trait :math do
      name    { 'math' }
    end

    trait :science do
      name    { 'science' }
    end

    trait :society do
      name    { 'society' }
    end

    trait :english do
      name    { 'english' }
    end
  end
end