require_relative '../../lib/ctm/talk'
require_relative '../../lib/ctm/utilities'

RSpec.describe Utilities do

  it "will return a track count based on the input talks list" do
    talks = []
    f = File.open('./inputs/input1.txt', 'r')
    f.each_line do |talk|
      talks << Talk.new(talk)
    end
    track_count = Utilities.new({talks: talks}).get_track_count_for_talks
    expect(track_count).to eq 2
  end

end
