require 'ffaker'

FactoryBot.define do
  factory :pulppo_user, class: OpenStruct do
    id { FFaker::Guid.guid }
    first_name { FFaker::Name.first_name }
    last_name { FFaker::Name.last_name }
    email { FFaker::Internet.email }
    phone { ["+1 485 4879 88", "+52 554485 6569"].sample }
    profile_picture { 'https://example.com/profile.jpg' }
  end
end
