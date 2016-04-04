require 'pry'

class Utilities

  MORNING_TALK_LENGTH = 180
  AFTERNOON_TALK_LENGTH = 240

  def initialize params
    @params = params
  end

  def get_track_count_for_talks
    total_talks_length = 0
    @params[:talks].each do |talk|
      total_talks_length += talk.length
    end
    (total_talks_length.to_f/(MORNING_TALK_LENGTH + AFTERNOON_TALK_LENGTH)).ceil
  end

end
