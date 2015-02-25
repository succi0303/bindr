require 'rails_helper'

RSpec.describe Binder, type: :model do

  let(:binder) { build(:binder) }

  it "has valid factoy" do
    expect(binder).to be_valid
  end

  describe "attributes" do

    it "has title" do
      expect(binder).to respond_to(:title)
    end

    it "has description" do
      expect(binder).to respond_to(:description)
    end

    it "has view count" do
      expect(binder).to respond_to(:view_count)
    end

    it "has complete" do
      expect(binder).to respond_to(:complete)
    end

    it "has user" do
      expect(binder).to respond_to(:user)
    end

  end

  it "is invalid without title" do
    expect(
      build(:binder, title: " ")
    ).not_to be_valid
  end

  it "is invalid without view_count" do
    expect(
      build(:binder, view_count: nil)
    ).not_to be_valid
  end

  it "is invalid without user" do
    expect(
      build(:binder, user: nil)
    ).not_to be_valid
  end

end
