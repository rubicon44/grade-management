FactoryBot.define do
  factory :grade do
    sequence(:grade_number) { |n| "#{n}" }
  end
end