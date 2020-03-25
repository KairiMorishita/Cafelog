Cafe.create!(name:  "Morishiterbacks Cofee",
             image: "",
             address: "東京都渋谷区",
             phone_number: "000-1234-5678",
             email: "morishiterbacks@example.com",
             credit: true,
             parking: false)

99.times do |n|
  name  = Faker::Name.name
  image = "image",
  address = "address",
  phone_number = "phone_number",
  email = "morishiterbacks#{n+1}@example.com",
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
             email: "example@morishiterbacks.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@morishiterbacks.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end