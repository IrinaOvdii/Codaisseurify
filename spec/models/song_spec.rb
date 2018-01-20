require 'rails_helper'

RSpec.describe Song, type: :model do
    describe 'validations' do
      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_length_of(:name).is_at_most(100) }
      it { is_expected.to validate_length_of(:audio_url).is_at_most(255) }
      it { is_expected.to belong_to :artist}
  end

  describe "association with artist" do
  let(:artist) { create :artist }

  it "belongs to a artist" do
    song = artist.songs.build(name: "Nice Song")

    expect(song.artist).to eq(artist)
  end
end




  #describe "#bargain?" do
    #let!(:artist1) { create :artist, name: "Artist_1", image_url: "http://res.cloudinary.com/irinaovdii/image/upload" }
    #let(:bargain_song) { create :song, duration: 15, artist: artist1 }
    #let(:non_bargain_song) { create :song, duration: 2, artist: artist1 }

    #it "returns true if the duration of song is shorter than 5" do
      #expect(bargain_song.bargain?).to eq(true)
      #expect(non_bargain_song.bargain?).to eq(false)
    #end
  #end
end
