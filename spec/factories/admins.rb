FactoryBot.define do
  factory :admin do
    sequence(:username) { |n| "admin#{n}" }
    sequence(:email) { |n| "admin#{n}@example.com" }
    password { '123456' }
    # avatar { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/fixtures/test.jpg')) }
    # confirmed_at { Date.today }
  end
end