# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#100.times do
#  Album.create!(
#    name: Faker::joy_division.album
#  )
#end

require 'json'
require 'open-uri'

url1 = 'http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=oasis&api_key=948ec2d4e8855e7af4ea00e92e7baf77&format=json'
oasis_albums_serialized = open(url1).read
oasis_albums = JSON.parse(oasis_albums_serialized)
oasis_albums['topalbums']['album'].first(15).each do |album|
  Album.create!(name: album['name'])
end

url2 = 'http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=radiohead&api_key=948ec2d4e8855e7af4ea00e92e7baf77&format=json'
radiohead_albums_serialized = open(url2).read
radiohead_albums = JSON.parse(radiohead_albums_serialized)
radiohead_albums['topalbums']['album'].first(15).each do |album|
  Album.create!(name: album['name'])
end

url6 = 'http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=nirvana&api_key=948ec2d4e8855e7af4ea00e92e7baf77&format=json'
nirvana_albums_serialized = open(url6).read
nirvana_albums = JSON.parse(nirvana_albums_serialized)
nirvana_albums['topalbums']['album'].first(15).each do |album|
  Album.create!(name: album['name'])
end

url3 = 'http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=joy_division&api_key=948ec2d4e8855e7af4ea00e92e7baf77&format=json'
joy_division_albums_serialized = open(url3).read
joy_division_albums = JSON.parse(joy_division_albums_serialized)
joy_division_albums['topalbums']['album'].first(15).each do |album|
  Album.create!(name: album['name'])
end

url4 = 'http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=pink_floyd&api_key=948ec2d4e8855e7af4ea00e92e7baf77&format=json'
pink_floyd_albums_serialized = open(url4).read
pink_floyd_albums = JSON.parse(pink_floyd_albums_serialized)
pink_floyd_albums['topalbums']['album'].first(15).each do |album|
  Album.create!(name: album['name'])
end

url5 = 'http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=queen&api_key=948ec2d4e8855e7af4ea00e92e7baf77&format=json'
queen_albums_serialized = open(url5).read
queen_albums = JSON.parse(queen_albums_serialized)
queen_albums['topalbums']['album'].first(15).each do |album|
  Album.create!(name: album['name'])
end

# url2 = 'http://ws.audioscrobbler.com/2.0/?method=artist.gettopalbums&artist=oasis&api_key=948ec2d4e8855e7af4ea00e92e7baf77&format=json'

# joy_division_albums_serialized = open(url2).read
# joy_division_albums = JSON.parse(joy_division_album_serialized)

# joy_division_albums['topalbums']['album'].each do |album|
#   Album.create!(name: album['name'])
# end

# url1 = 'http://ws.audioscrobbler.com/2.0/?method=chart.gettopartists&api_key=948ec2d4e8855e7af4ea00e92e7baf77&format=json'

# artist_serialized = open(url1).read
# artists = JSON.parse(artist_serialized)

# artists['artists']['artist'].each do |artist|
#   Artist.create!(name: artist['name'])
# end

# url2 = 'http://ws.audioscrobbler.com/2.0/?method=tag.gettopalbums&tag=rock&api_key=http://ws.audioscrobbler.com/2.0/?method=chart.gettopartists&api_key=948ec2d4e8855e7af4ea00e92e7baf77&format=json&format=json'

# album_serialized = open(url2).read
# albums = JSON.parse(album_serialized)

# albums['albums']['album'].each do |album|
#   Album.create!(name: album['name'])
# end

# url3 = 'http://ws.audioscrobbler.com/2.0/?method=artist.gettoptracks&artist=oasis&api_key=948ec2d4e8855e7af4ea00e92e7baf77&format=json'

# oasis_serialized = open(url3).read
# oasis = JSON.parse(oasis_serialized)

# oasis['toptracks']['track'].each do |track|
#   Song.create!(name: track['name'])
# end
