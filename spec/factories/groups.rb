FactoryBot.define do
  factory :group do
    association :grade
    sequence(:group_number) { |n| "#{n}" }
  end
end