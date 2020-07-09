require 'rails_helper'

RSpec.describe Artist, type: :system do
  it "is valid if they have a name" do
    artist = FactoryBot.build(:artist)
    expect(artist).to be_valid
  end

  it "is invalid if they don't have a name" do
    artist = FactoryBot.build(:artist, name: nil)
    artist.valid?
    expect(artist.errors[:name]).to include("can't be blank")
  end
end
