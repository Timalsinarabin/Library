FactoryBot.define do
  factory :dummy_user do
    username { "User#{rand(100)}" }
    email { "user#{rand(100)}@gmail.com" }
    password { "password" }
    password_confirmation { "password" }
  end
end
