Cafe.create!(name:  "Morishiterbacks Cofee",
             image: "",
             address: "東京都渋谷区",
             phone_number: "000-1234-5678",
             email: "morishiterbacks@sample.com",
             credit: true,
             parking: false,
             )

99.times do |n|
  name  = Faker::Name.name
  image = "image",
  address = "address",
  phone_number = "phone_number",
  email = "morishiterbacks#{n+1}@sample.com",
  credit = "credit",
  parking = "parking",
  
  Cafe.create!(name:  name,
               image: image,
               address: address,
               phone_number: phone_number,
               email: email,
               credit: credit,
               parking: parking)
end

User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end