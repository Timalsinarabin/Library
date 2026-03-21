require 'rails_helper'

RSpec.describe DummyUser, type: :model do
  it "is valid with valid attributes" do
    user = build(:dummy_user)
    expect(user).to be_valid
  end

  it "is invalid without a username" do
    user = build(:dummy_user, username: nil)
    expect(user).not_to be_valid
  end
  it "is invalid username" do
    create(:dummy_user, username: "user")
    user = build(:dummy_user, username: "user")
    expect(user).not_to be_valid
  end
  it "is invalid without an email" do
    user = build(:dummy_user, email: nil)
    expect(user).not_to be_valid
  end

  it "is invalid with a duplicate email" do
    create(:dummy_user, email: "duplicate@example.com")
    user = build(:dummy_user, email: "duplicate@example.com")
    expect(user).not_to be_valid
  end

  it "requires password confirmation to match password" do
    user = build(:dummy_user, password_confirmation: "wrongpass")
    expect(user).not_to be_valid
  end
end
