require 'rails_helper'

RSpec.describe Page, type: :model do

  let(:page) { build(:page) }

  it "has valid factory" do
    expect(page).to be_valid
  end

  describe "attributes" do 

    it "has number" do
      expect(page).to respond_to(:number)
    end

    it "has url" do
      expect(page).to respond_to(:url)
    end

    it "has title" do
      expect(page).to respond_to(:title)
    end

    it "has binder" do
      expect(page).to respond_to(:binder)
    end
  end

  it "is invalid number with not number" do
    expect(
      build(:page, number: 'a')
    ).to_not be_valid
  end

  it "is invalid without url" do
    expect(
      build(:page, url: " ")
    ).to_not be_valid
  end

  it "is invalid without title" do
    expect(
      build(:page, title: " ")
    ).to_not be_valid
  end

  it "is invalid without binder" do
    expect(
      build(:page, binder: nil)
    ).to_not be_valid
  end

  it "is invalid when url format is bad" do
    invalid_urls = %w(http:\\exmaple.com /main.html http:www.example.com)
    invalid_urls.each do |invalid_url|
      expect(build(:page, url: invalid_url)).to_not be_valid
    end
  end

  it "is valid when url format is good" do
    valid_urls = %w(http://example.com http://exmaple.com?q=hoge)
    valid_urls.each do |valid_url|
      expect(build(:page, url: valid_url)).to be_valid
    end
  end
end
