require_relative './ctm/talk'
require_relative './ctm/session'
require_relative './ctm/planner'
require 'pry'
require 'yaml'

environment = YAML.load_file("../env.yml")

def init_talks file
  talks = []
  f = File.open(file, 'r')
  f.each_line do |talk|
    talks << Talk.new(talk)
  end
  talks
end

def init_tracks track_count
  sessions = []
  track_count.times do |track|
    sessions << Session.new(180, :morning)
    sessions << Session.new(240, :afternoon)
  end
  sessions
end

if ARGV[0].nil?
  puts "Usage: `ruby conference_track_manager.rb <file_name>`"
  puts "<file_name> must be any of the existing files from the `inputs` directory"
  raise 'NoFileGivenException'
else
  file = ARGV[0]
  track_count = ARGV[1].nil? ? 2 : ARGV[1]
  talks = init_talks environment["inputs_directory"] + file
  tracks = init_tracks track_count
  Planner.new(talks, tracks).plan_conference
end
