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