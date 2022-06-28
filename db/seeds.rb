Album.destroy_all

10.times do |i|
  Album.create!(name: Faker::Superhero.power, 
                genre: Faker::Lorem.word,
                year: Faker::Number.between(from: 1200, to: 5000))
end
p "Created #{Album.count} albums."
