class Planner

  attr_reader :talks, :sessions

  def initialize talks, tracks
    @talks = talks
    @tracks = tracks
  end

  def plan_conference
    binding.pry
    processed_talks = Array.new talks.length, false
    tracks.each do |track|
      talks.each_with_index do |talk, index|
        next if processed_talks[index]
        if session.add? talk
          session.add talk
          processed_talks[index] = true
        end
      end
    end
  end

end
