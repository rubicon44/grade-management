FactoryBot.define do
  factory :score do
    point { '50' }
    association :student
    association :exam
  end
end