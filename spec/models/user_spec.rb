require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { build(:user) }

  it "has valid factory" do
    expect(user).to be_valid
  end

  describe "attributes" do

    it "has name" do
      expect(user).to respond_to(:name)
    end

    it "has email" do
      expect(user).to respond_to(:email)
    end

    it "has password digest" do
      expect(user).to respond_to(:password_digest)
    end

    it "has password" do
      expect(user).to respond_to(:password)
    end

    it "has password confirmation" do
      expect(user).to respond_to(:password_confirmation)
    end

    it "has remember token" do
      expect(user).to respond_to(:remember_token)
    end

  end

  it "is invalid without name" do
    expect(
      build(:user, name: " ")
    ).not_to be_valid
  end

  it "is invalid without email" do
    expect(
      build(:user, email: " ")
    ).not_to be_valid
  end

  it "is invalid when name is too long" do
    expect(
      build(:user, name: "a" * 51)
    ).not_to be_valid
  end

  it "is invalid with duplicate email" do
    create(:user, email: 'same@example.com')
    expect(
            build(:user, email: 'same@example.com')
    ).not_to be_valid
  end

  it "is invalid with duplicate email, case sensitive" do
    create(:user, email: 'same@example.com')
    expect(
            build(:user, email: 'SAME@EXAMPLE.COM')
    ).not_to be_valid
  end

  it "is invalid when email format is bad" do
    addresses = %w[user@foo,com user_at_foo.org example.user@foo.
    foo@bar_baz.com foo@bar+baz.com]
    addresses.each do |invalid_address|
      invalid_user = build(:user, email: invalid_address)
      expect(invalid_user).not_to be_valid
    end
  end

  it "is valid when email format is good" do
    addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
    addresses.each do |valid_address|
      valid_user = build(:user, email: valid_address)
      expect(valid_user).to be_valid
    end
  end

  it "is invalid when password is not present" do
    expect(
      build(:user, password: " ", password_confirmation: " ")
    ).not_to be_valid
  end

  it "is invalid when password doesn't match confirmation" do
    expect(
      build(:user, password: "password", password_confirmation: "wrong_password")
    ).not_to be_valid
  end

  it "is invalid when password is too short" do
    expect(
      build(:user, password: "a" * 5, password_confirmation: "a" * 5)
    ).not_to be_valid
  end
end
