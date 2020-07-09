require 'rails_helper'

RSpec.describe Album, type: :system do
  it "is valid if it has a name" do
    album = FactoryBot.build(:album)
    expect(album).to be_valid
  end

  it "is invalid if it doesn't have a name" do
    album = FactoryBot.build(:album, name: nil)
    album.valid?
    expect(album.errors[:name]).to include("can't be blank")
  end
end
