FactoryBot.define do
  factory :teacher do
    sequence(:teacher_number) { |n| "TN#{n}" }
    sequence(:username) { |n| "sample#{n}" }
    sequence(:email) { |n| "sample#{n}@example.com" }
    password { '123456' }
    # avatar { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')) }
    # confirmed_at { Date.today }

    trait :grade_admin do
      grade_admin    { true }
    end

    trait :group_admin do
      group_admin    { true }
    end

    trait :master_admin do
      master_admin    { true }
    end
  end
end