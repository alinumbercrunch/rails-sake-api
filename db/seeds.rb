require 'json'
require 'open-uri'

puts "Removing all restaurants from the DB..."
Restaurant.delete_all

puts "Getting the restaurants from the JSON..."

begin
  url = 'https://gist.githubusercontent.com/alinumbercrunch/57d2c1821ebb8416629fe0db0fc4282d/raw/5eb766e53d20a8d56ff3e35e0fc85d2d33ff8216/sake.json'
  json_data = URI.open(url).read
  restaurants = JSON.parse(json_data)

  restaurants.each do |restaurant|
    Restaurant.create!(
      title: restaurant['title'],
      address: restaurant['address'],
      picture: restaurant['picture'],
      hours: restaurant['hours'],
      criteria: restaurant['criteria']
    )
  end

  puts "Seeding completed successfully!"
rescue OpenURI::HTTPError => e
  puts "Failed to fetch JSON data: #{e.message}"
rescue JSON::ParserError => e
  puts "Failed to parse JSON data: #{e.message}"
end
