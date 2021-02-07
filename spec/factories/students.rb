FactoryBot.define do
  factory :student do
    sequence(:student_number) { |n| "SN#{n}" }
    sequence(:username) { |n| "sample#{n}" }
    sequence(:email) { |n| "sample#{n}@example.com" }
    password { '123456' }
    # avatar { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')) }
    # confirmed_at { Date.today }
  end
end