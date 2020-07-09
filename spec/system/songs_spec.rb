require 'rails_helper'

RSpec.describe Song, type: :system do
  it "is valid if it has a name, minutes and belongs to an artist and an album" do
    song = FactoryBot.build(:song)
    expect(song).to be_valid
  end

  it "is invalid if it doesn't have a name" do
    song = FactoryBot.build(:song, name: nil)
    song.valid?
    expect(song.errors[:name]).to include("can't be blank")
  end

  it "is invalid if it doesn't have minutes" do
    song = FactoryBot.build(:song, minutes: nil)
    song.valid?
    expect(song.errors[:minutes]).to include("is not included in the list")
  end

  it "is invalid if it doesn't belong to an artist" do
    song = FactoryBot.build(:song, artist: nil)
    song.valid?
    expect(song.errors[:artist]).to include("must exist")
  end

  it "is invalid if it doesn't belong to an album" do
    song = FactoryBot.build(:song, album: nil)
    song.valid?
    expect(song.errors[:album]).to include("must exist")
  end

end
