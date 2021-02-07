FactoryBot.define do
  factory :exam_student do
    association :exam
    association :student
  end
end