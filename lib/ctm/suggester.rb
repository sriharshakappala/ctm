class Suggester

  attr_reader :tracks, :track_count

  def initialize tracks, track_count
    @tracks = tracks
    @track_count = track_count
  end

  def show_suggestions
    track_count.times do |counter|
      puts "Track #{counter + 1}"
      suggest_adjustments tracks[(counter*2)]
      suggest_adjustments tracks[(counter*2) + 1]
    end
  end

  private

  def suggest_adjustments track
    puts "#{track.type.capitalize.to_s}"
    if track.length == 0
      puts "No Suggestions"
    elsif track.talks.count == 0
      puts "Pchhh! No talks in this track. You can consider reducing the number of total tracks"
    else
      puts "Add a new talk with #{track.length} minutes or increase the length of any talk by #{track.length} minutes"
    end
  end

end
