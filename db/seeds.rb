Album.destroy_all

10.times do |i|
  album = Album.create!(name: Faker::Superhero.power, 
                genre: Faker::Lorem.word,
                year: Faker::Number.between(from: 1200, to: 5000))

  5.times do |i|
    Song.create!(title: Faker::Superhero.name , lyrics: Faker::Lorem.paragraph_by_chars(number:50) , album_id: album.id )
  end
end
p "Created #{Album.count} albums."
p "Created #{Song.count} songs."
