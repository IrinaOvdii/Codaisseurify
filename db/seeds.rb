# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Song.destroy_all
Artist.destroy_all

artist1 = Artist.create!({name: "R.E.M."})
artist2 = Artist.create!({name: "Lohn Lennon"})


song1 = Song.create!( { name: "Losing My Religion", duration: 3, artist: artist1 })
song2 = Song.create!( { name: "Imagine", duration: 4, artist: artist2 })
song3 = Song.create!( { name: "Amsterdam", duration: 2, artist: artist2 })
song4 = Song.create!( { name: "Everybody Hurts", duration: 3, artist: artist1 })
song5 = Song.create!( { name: "I Saw Her Standing There", duration: 3, artist: artist2 })
