require_relative './ctm/talk'
require_relative './ctm/session'
require 'pry'
require 'yaml'

def init_talks_list file
  binding.pry
end

def plan_talks_for_tracks talks_list
end

environment = YAML.load_file("../env.yml")

if ARGV[0].nil?
  puts "Usage: `ruby conference_track_manager.rb <file_name>`"
  puts "<file_name> must be any of the existing files from the `inputs` directory"
  raise 'NoFileGivenException'
else
  file = ARGV[0]
  binding.pry
  talks_list = init_talks_list environment["inputs_directory"] + file
end
