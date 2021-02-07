FactoryBot.define do
  factory :course do
    association :student
    association :subject
  end
end