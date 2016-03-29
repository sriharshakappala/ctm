require 'pry'
require 'time'

class Splash

  def self.display_plan tracks, track_count
    track_count.times do |counter|
      puts "Track #{counter + 1}"
      splash tracks[counter]
      splash tracks[counter+2]
    end
  end

  private

  def self.splash track
    binding.pry
    start_time = track.type == :morning ? Time.new(2016,1,1, 9,00).strftime('%I:%M%p') : Time.new(2016,1,1, 13,00).strftime('%I:%M%p')
    track.talks.each do |talk|
      puts "#{start_time} #{talk.description}"
      start_time = Time.parse(start_time) + track.length * 60
      start_time.strftime('%I:%M%p')
    end
  end

end
