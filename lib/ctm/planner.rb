class Planner

  attr_reader :talks, :tracks

  def initialize talks, tracks
    @talks = talks
    @tracks = tracks
  end

  def plan_conference
    processed_talks = Array.new talks.length, false
    tracks.each do |track|
      talks.each_with_index do |talk, index|
        next if processed_talks[index]
        if track.add? talk
          track.add talk
          processed_talks[index] = true
        end
      end
    end
  end

end
