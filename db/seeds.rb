# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


guest = User.create({
  username: "GuestDemo",
  password: "guestdemo",
  email: "guest@guest.com",
  fname: "Guest",
  lname: "Demo" })

# enum (american, chinese, french, italian, japanese, meditterranea, mexican, seafood, vietnamese)
american = Restaurant.create({
  name: "Wayfare Tavern",
  street_address:"558 Sacramento St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94111",
  num_seats: 15,
  cuisine: 1,
  phone_number: "4157729060",
  img_url: "https://res.cloudinary.com/dzmnmgun1/image/upload/v1522967486/hamburger-food-meal-tasty-47725.jpg",
  description: "Popular upscale eatery serving Tyler Florence's American fare in a British pub-style setting.",
  price: 4,
  neighborhood: "Financial District/Embarcadero"
})

chinese = Restaurant.create({
  name: "Mission Chinese",
  street_address: "2234 Mission St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94110",
  num_seats: "10",
  cuisine: 2,
  phone_number: "4158632800",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/v1522967620/pexels-photo-955137.jpg",
  description: "Trendy crowds line up for the imaginative Chinese eats at this casual, nationally known destination.",
  price: 2,
  neighborhood: "Mission"
})

french = Restaurant.create({
  name: "Plouf",
  street_address: "40 Belden Pl.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94104",
  num_seats: 20,
  cuisine: 3,
  phone_number: "4159866491",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/v1522967794/pexels-photo-299351.jpg",
  description:"French bistro with industrial-chic decor & outdoor seating plus a menu specializing in seafood.",
  price: 3,
  neighborhood: "Financial District/Embarcadero"
})

italian = Restaurant.create({
  name: "Tommaso's Ristorante Italiano",
  street_address: "1042 Kearny St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94133",
  num_seats: "10",
  cuisine: 4,
  phone_number: "4153989696",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/v1522967981/bivalve-clam-cooking-921374_1.jpg",
  description: "Family-run institution (since 1935) firing up thin-crust pizzas in its original wood-burning oven.",
  price: 2,
  neighborhood: "Financial District/Embarcadero"
})

japanese = Restaurant.create({
  name: "Omakase",
  street_address: "665 Townsend St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94107",
  num_seats: 2,
  cuisine: 5,
  phone_number: "4158650633",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/v1522968358/chopsticks-cooking-cuisine-858508.jpg",
  description: "Sleek sushi restaurant with imported Japanese fish & several high-end chef's-choice dinner menus.",
  price: 4,
  neighborhood: "North Beach/Telegraph Hill"
})

mediterranean = Restaurant.create({
  name: "La Mediterranee",
  street_address: "2210 Fillmore St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94115",
  num_seats: "18",
  cuisine: 6,
  phone_number: "4159212956",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/v1522968518/pexels-photo-407293.jpg",
  description: "Middle Eastern-Mediterranean spot pairing meze platters & prime people-watching via sidewalk seats.",
  price: 2,
  neighborhood: "Fillmore"
})

mexican = Restaurant.create({
  name: "Gracias Madre",
  street_address: "2211 Mission St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94110",
  num_seats: 10,
  cuisine: 7,
  phone_number: "4156831346",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/v1522968733/tacos-1904921_640.jpg",
  description:"Fans of Mexican sustainable eats grab a seat at the long bar & communal tables in blonde-wood decor.",
  price: 2,
  neighborhood: "Mission"
})

seafood = Restaurant.create({
  name: "Anchor Oyster Bar",
  street_address: "579 Castro St.",
  city: "San Francisco",
  state: "CA",
  zip_code:"94114",
  num_seats: 4,
  cuisine: 8,
  phone_number: "4154313900",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/v1522968951/15862329469_78f002d81e_m.jpg",
  description: "Since 1977, diners have been coming to this nautical-themed eatery for fresh fish & shellfish.",
  price: 3,
  neighborhood: "Castro"
})

vietnamese = Restaurant.create({
  name: "Yummy Yummy",
  street_address:"1015 Irving St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94122",
  num_seats: 6,
  cuisine: 9,
  phone_number: "4155664722",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/v1522969984/Screen_Shot_2018-04-05_at_4.12.22_PM.png",
  description: "This eatery offers the standard Vietnamese dishes like pho & banh xeo in a no-frills setting.",
  price: 1,
  neighborhood: "Inner Sunset"
})
