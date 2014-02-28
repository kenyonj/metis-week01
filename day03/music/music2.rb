require 'csv'

def build_song_list(artist_search, database)
  artist_display = "* Songs by #{artist_search} *"
  print ("\n\n\n") + ("*" * artist_display.length) + ("\n") + (artist_display) + ("\n") + ("*" * artist_display.length) + ("\n\n")
  puts database[artist_search].sort
end

database = Hash.new {|hash, key| hash[key] = []}
CSV.foreach("music.csv", {headers:true}) do |row|
  artist= row["Artist"]
  song_name = row["Name"]
  database[artist] << song_name
end

puts "Enter Artist name exactly"
print "Query: "
artist_search = gets.strip

while artist_search !="" do
  if !database.has_key?(artist_search)
    puts "\nSorry, that artist does not exist in the database. Please try again."
  else
    build_song_list(artist_search, database)
  end

  puts "\nEnter Artist name exactly. If you would like to quit, just press enter."
  print "Query: "
  artist_search = gets.strip
end
