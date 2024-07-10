require 'faker'
10.times do
  user = User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email
  )

  # Create books for each user
  rand(1..5).times do
    Book.create(
      title: Faker::Book.title,
      user: user
    )
  end
end
puts "Seeded #{User.count} users and #{Book.count} books."
