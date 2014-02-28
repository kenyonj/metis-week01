require 'csv'
require 'pp'

database = Hash.new { |hash,key| hash[key] = [] }
CSV.foreach("music.csv", {headers: true}) do |music_list|
  artist = music_list["Artist"]
  song_name = music_list["Name"]
  database[artist] << song_name
end
puts database
