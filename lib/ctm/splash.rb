require 'pry'
require 'time'

class Splash

  def self.display_plan tracks, track_count
    track_count.times do |counter|
      puts "Track #{counter + 1}"
      puts "*************"
      splash tracks[(counter*2)]
      splash tracks[(counter*2) + 1]
    end
  end

  private

  def self.splash track
    start_time = track.type == :morning ? Time.new(2016,1,1, 9,00).strftime('%I:%M%p') : Time.new(2016,1,1, 13,00).strftime('%I:%M%p')
    track.talks.each_with_index do |talk, index|
      start_time = index == 0 ? start_time : get_time(start_time, talk.length)
      puts "#{start_time} #{talk.description}"
    end
    if track.type == :morning
      puts "12:00PM Lunch"
    else
      puts "05:00PM Networking Event"
    end
  end

  def self.get_time start_time, length
    (Time.parse(start_time) + length * 60).strftime('%I:%M%p')
  end

end
