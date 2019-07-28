# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create(
  email: "guido@guido.com",
  username: "guido",
  password: "password",
)

o = Organisation.create(
  name: Faker::Company.name,
  email: "guido@orga.com",
  phone: "31231231231",
)

10.times do
  u = User.create(
    email: Faker::Internet.email,
    #username: Faker::FunnyName.name,
    password: "password",
  )
  o = Organisation.create(
    name: Faker::Company.name,
    email: Faker::Internet.email,
    phone: "31231231231",
    user_id: u.id,
  )
  rand(1..5).times do
    r = Race.create(
      name: Faker::Company.name,
      length: rand(10..150),
      elevation: [1000, 1500, 2000, 3000, 4000, 4500, 2300, 1800, 6000, 10000].sample,
      date: Date.today + rand(10..60),
      location: "#{Faker::Address.city}, #{Faker::Address.community}",
      departure_time: (Date.today + rand(10..20).hour + rand(0..60).minutes).to_datetime,
      description: Faker::Lorem.paragraph_by_chars(240, false),
      goodies: Faker::Lorem.paragraph_by_chars(100, false),
      latitude: 45.7637 + rand(1..15),
      longitude: 9.8015 + rand(1..15),
      race_type: ["trail", "skyrace", "ultratrail", "vertical"].sample,
      final_price: rand(20..60),
      organisation_id: o.id,
    )

    rand(1..3).times do
      Photo.create(
        race_id: r.id,
        picture: Faker::LoremPixel.image("50x60", false, "sports"),
      )
    end
  end
end
