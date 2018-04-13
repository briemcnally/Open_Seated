# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Restaurant.destroy_all
Review.destroy_all
Reservation.destroy_all

guest = User.create({
  username: "GuestDemo",
  password: "guestdemo",
  email: "guest@guest.com",
  fname: "Guest",
  lname: "Demo"
})

admin = User.create({
  username: "Admin",
  password: "password",
  email: "admin@admin.com",
  fname: "Admin",
  lname: "OpenSeated"
  })

user2 = User.create({
  username: "G_Ramsay",
  password: "password",
  email: "ramsay@ramsay.com",
  fname: "Gordon",
  lname: "Ramsay",
})

user3 = User.create({
  username: "J_Oliver",
  password: "password",
  email: "oliver@oliver.com",
  fname: "Jamie",
  lname: "Oliver",
})

user4 = User.create({
  username: "A_Bourdain",
  password: "password",
  email: "bourdain@bordain.com",
  fname: "Anthony",
  lname: "Bourdain",
})

user5 = User.create({
  username: "W_Puck",
  password: "password",
  email: "puck@puck.com",
  fname: "Wolfgang",
  lname: "Puck",
})

user6 = User.create({
  username: "M_Batali",
  password: "password",
  email: "batali@batali.com",
  fname: "Mario",
  lname: "Batali",
})

user7 = User.create({
  username: "B_Flay",
  password: "password",
  email: "flay@flay.com",
  fname: "Bobby",
  lname: "Flay",
})

user8 = User.create({
  username: "R_Ray",
  password: "password",
  email: "ray@ray.com",
  fname: "Rachel",
  lname: "R_Ray",
})

user9 = User.create({
  username: "P_Dean",
  password: "password",
  email: "dean@dean.com",
  fname: "Paula",
  lname: "Dean",
})

user10 = User.create({
  username: "G_Fieri",
  password: "password",
  email: "fieri@fieri.com",
  fname: "Guy",
  lname: "Fieri",
})



# enum (american, chinese, french, japanese, japanese, meditterranea, mexican, seafood, vietnamese)
american = Restaurant.create({
  name: "Wayfare Tavern",
  street_address:"558 Sacramento St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94111",
  num_seats: 15,
  cuisine: 0,
  phone_number: "(415)772-9060",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523056835/menu-restaurant-vintage-table.jpg",
  description: "At Wayfare, we follow a simple rule: Make interesting and delicious food in-house, using only the freshest ingredients. All of our sandwiches, salads, entrées, soups, cocktails and bar fare demonstrate our goal to make cuisine that both satisfies and inspires. \n Popular upscale eatery serving Tyler Florence's American fare in a British pub-style setting.",
  price: 4,
  neighborhood: "Financial District/Embarcadero"
})

american_review1 = Review.create({
  author_id: user7.id,
  restaurant_id: american.id,
  body: "We had Alex as our server. She was amazing as always. She's super attentive, friendly, and knowledgeable. We ordered the guac and tortillas ( the tortillas are amazingly soft) and tried the cheesy cauliflower which was out of this world. I love the desserts especially the cobbler and pairing it with the ginger mint tea is the perfect way to finish the evening.",
  food: 4.5,
  service: 4.1,
  ambience: 4.2,
  value: 4.2,
  rating: 4.4,
})

american_review2 = Review.create({
  author_id: user2.id,
  restaurant_id: american.id,
  body: "When I walked in, I really wasn't expecting much. There were a lot of interesting decorations on the walls. The photos of the food were appetizing and palpable, but didn't live up to the hype. Some of my favorite dishes are no longer available. I felt the prices were too high given the quality of the food. Might be back. Time will tell.",
  food: 4.0,
  service: 4.0,
  ambience: 4.2,
  value: 2.0,
  rating: 3.0,
})

american_review2 = Review.create({
  author_id: user3.id,
  restaurant_id: american.id,
  body: "Decent place. The service was good for the most part but the waitress was a bit tired. I found the ambiance to be very charming. Everything I tried was bursting with flavor. Everything was just so yummy. I had to take one star away because the burger was a little undercooked.",
  food: 3.0,
  service: 3.0,
  ambience: 5.0,
  value: 4.0,
  rating: 4.0,
})


chinese = Restaurant.create({
  name: "Mission Chinese",
  street_address: "2234 Mission St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94110",
  num_seats: "10",
  cuisine: 1,
  phone_number: "(415)863-2800",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523057453/tim-chow-602458-unsplash.jpg",
  description: "Trendy crowds line up for the imaginative Chinese eats at this casual, nationally known destination.",
  price: 2,
  neighborhood: "Mission"
})

chinese_review1 = Review.create({
  author_id: user4.id,
  restaurant_id: chinese.id,
  body: "I had high hopes for this place. This place is very dumpy and in a serious need of a makeover. Too many things on the menu look like crap, smell like crap, and taste like crap. I felt the prices were too high given the quality of the food. I would be hard pressed to come back.",
  food: 3.0,
  service: 4.1,
  ambience: 1.0,
  value: 3.0,
  rating: 2.0,
})
chinese_review2 = Review.create({
  author_id: user5.id,
  restaurant_id: chinese.id,
  body: "I stumbled on this undiscovered gem right in our neighboorhood. There were a lot of interesting decorations on the walls. Everything was just so yummy. It could have been perfect, but the wait to get in was so long.",
  food: 5.0,
  service: 3.5,
  ambience: 4.0,
  value: 4.3,
  rating: 4.0,
})

chinese_review3 = Review.create({
  author_id: user6.id,
  restaurant_id: chinese.id,
  body: "I'm torn about this place. The service was good for the most part but the waitress was a bit rude. I felt the prices were too high given the quality of the food. The tofu dish tasted spongy and a bit bland. I had a satisfactory experience and will have to try it again.",
  food: 4.0,
  service: 3.1,
  ambience: 3.0,
  value: 4.2,
  rating: 3.5,
})

french = Restaurant.create({
  name: "Plouf",
  street_address: "40 Belden Pl.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94104",
  num_seats: 20,
  cuisine: 2,
  phone_number: "(415)986-6491",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523056836/pexels-photo-262047.jpg",
  description:"French bistro with industrial-chic decor & outdoor seating plus a menu specializing in seafood. Plouf has terrace seating with heat lamps and a canopy. There are bistro style seating and an indoor fireplace. We have a 2-course Lunch Prix Fixe for $24 (Soup/Salad and Mussels) and a 3-course Dinner Prix Fixe $32 (Soup/Salad, Mussels and Dessert)",
  price: 3,
  neighborhood: "Financial District/Embarcadero"
})

french_review1 = Review.create({
  author_id: user7.id,
  restaurant_id: french.id,
  body: "I stumbled on this undiscovered gem right in our neighboorhood. After my meal, I was knocked into a food coma. Everything from the starters to the entrees to the desserts meshed perfectly with my flavor-profile. Easily earned their 5 stars!",
  food: 5.0,
  service: 4.1,
  ambience: 4.0,
  value: 3.5,
  rating: 5.0,
})
french_review2 = Review.create({
  author_id: user8.id,
  restaurant_id: french.id,
  body: "Bleh. The pork was overcooked. The menu didn't match the one on their website. There were bits of food stuck to my silverware. Meh.",
  food: 3.0,
  service: 3.5,
  ambience: 3.0,
  value: 4.0,
  rating: 3.0,
})

french_review3 = Review.create({
  author_id: user9.id,
  restaurant_id: french.id,
  body: "I'm torn about this place. The service was good for the most part but the waitress was a bit rude. I felt the prices were too high given the quality of the food. The tofu dish tasted spongy and a bit bland. I had a satisfactory experience and will have to try it again.",
  food: 4.0,
  service: 3.1,
  ambience: 3.0,
  value: 4.2,
  rating: 3.5,
})

italian = Restaurant.create({
  name: "Tommaso's Ristorante Italiano",
  street_address: "1042 Kearny St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94133",
  num_seats: "10",
  cuisine: 3,
  phone_number: "(415)398-9696",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523056834/pexels-photo-66640.jpg",
  description: "Family-run institution (since 1935) firing up thin-crust pizzas in its original wood-burning oven.",
  price: 2,
  neighborhood: "Financial District/Embarcadero"
})

italian_review1 = Review.create({
  author_id: user10.id,
  restaurant_id: italian.id,
  body: "This place is awesome.   From the food to the service, awesome. Pizza is what is popular, but the calamari is honestly the best thing on the menu.  The wait is never that bad which is a plus.",
  food: 5.0,
  service: 4.1,
  ambience: 4.0,
  value: 3.5,
  rating: 5.0,
})

italian_review2 = Review.create({
  author_id: user4.id,
  restaurant_id: italian.id,
  body: "Historic spot from like 100 years ago serving some of the best italian food. Always crowded and popular but the friendly staff are usually still quick about getting you in.",
  food: 4.0,
  service: 4.5,
  ambience: 4.0,
  value: 5.0,
  rating: 4.0,
})

italian_review3 = Review.create({
  author_id: user2.id,
  restaurant_id: italian.id,
  body: "Linguine seafood was ok, didn't seem so fresh and the red sauce didn't taste like fresh tomato sauce so what was I eating?",
  food: 2.0,
  service: 3.1,
  ambience: 3.0,
  value: 3.2,
  rating: 2.5,
})

japanese = Restaurant.create({
  name: "Omakase",
  street_address: "665 Townsend St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94107",
  num_seats: 2,
  cuisine: 4,
  phone_number: "(415)865-0633",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523057808/alva-pratt-118968-unsplash.jpg",
  description: "Sleek sushi restaurant with imported Japanese fish & several high-end chef's-choice dinner menus.",
  price: 4,
  neighborhood: "North Beach/Telegraph Hill"
})

japanese_review1 = Review.create({
  author_id: user3.id,
  restaurant_id: japanese.id,
  body: "Classic elegant omakase-only restaurant. Chefs are japense and the ambiance is elegant and high end. They sport a Michelin Star for a reason.",
  food: 5.0,
  service: 5.1,
  ambience: 4.0,
  value: 5.0,
  rating: 5.0,
})

japanese_review2 = Review.create({
  author_id: user4.id,
  restaurant_id: japanese.id,
  body: "I was not impressed. I much MUCH prefer Kusakabe over Omakase.",
  food: 3.0,
  service: 4.5,
  ambience: 4.0,
  value: 4.0,
  rating: 3.0,
})

japanese_review3 = Review.create({
  author_id: user5.id,
  restaurant_id: japanese.id,
  body: "Great omakase experience in SF. Food was super fresh and each course was full of different flavors.",
  food: 4.0,
  service: 5.0,
  ambience: 4.0,
  value: 4.0,
  rating: 4.0,
})

mediterranean = Restaurant.create({
  name: "La Mediterranee",
  street_address: "2210 Fillmore St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94115",
  num_seats: "18",
  cuisine: 5,
  phone_number: "(415)921-2956",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523056835/pexels-photo-110813.jpg",
  description: "Middle Eastern-Mediterranean spot pairing meze platters & prime people-watching via sidewalk seats.",
  price: 2,
  neighborhood: "Fillmore"
  })

mediterranean_review1 = Review.create({
  author_id: user6.id,
  restaurant_id: mediterranean.id,
  body: "I love Mediterranean food and was excited to try this place, but in the end everything was just...okay.",
  food: 3.0,
  service: 4.0,
  ambience: 4.0,
  value: 4.0,
  rating: 3.0,
})

mediterranean_review2 = Review.create({
  author_id: user7.id,
  restaurant_id: mediterranean.id,
  body: "Cutest, most quaint restaurant on Fillmore. Not insanely overpriced like everything else in SF, but twice as delicious! Great service and incredible food! A must-visit if you are in the area!!",
  food: 5.0,
  service: 4.5,
  ambience: 5.0,
  value: 4.0,
  rating: 5.0,
})

mediterranean_review3 = Review.create({
  author_id: user8.id,
  restaurant_id: mediterranean.id,
  body: "This place has been one of the best Greek spots I've been to, outside of Greece! The food is delicious, not overly done and filling--for your soul and stomach.",
  food: 5.0,
  service: 5.0,
  ambience: 5.0,
  value: 5.0,
  rating: 5.0,
})

mexican = Restaurant.create({
  name: "Gracias Madre",
  street_address: "2211 Mission St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94110",
  num_seats: 10,
  cuisine: 6,
  phone_number: "(415)683-1346",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523057732/kayleigh-harrington-418544-unsplash.jpg",
  description:"Gracias Madre is truly an expression of who we are – it represents our deep love of and reverence for food, our commitment to health and sustainability, our unconditional love for our multicultural family and community, our devotion to the Earth and the divine feminine, and our commitment to raising consciousness on the planet. It is our intention that the emphasis we place on the sourcing of our food will bring consciousness in the community to the importance of sustainability and of buying and selling locally grown organic food.\n In an effort to cultivate a shared experience of nourishment through food and community, all tables at Gracias Madre are sat communally.",
  price: 2,
  neighborhood: "Mission"
})

mexican_review1 = Review.create({
  author_id: user9.id,
  restaurant_id: mexican.id,
  body: "We had Alex as our server. She was amazing as always. She's super attentive, friendly, and knowledgeable. We ordered the guac and tortillas ( the tortillas are amazingly soft) and tried the cheesy cauliflower which was out of this world. I love the desserts especially the cobbler and pairing it with the ginger mint tea is the perfect way to finish the evening.",
  food: 4.5,
  service: 4.1,
  ambience: 4.2,
  value: 4.2,
  rating: 4.4,
})

mexican_review2 = Review.create({
  author_id: user10.id,
  restaurant_id: mexican.id,
  body: "Unfortunately the service was so bad, I prolonged the agony by holding out for the food.",
  food: 3.0,
  service: 2.0,
  ambience: 4.0,
  value: 4.0,
  rating: 2.0,
})

mexican_review3 = Review.create({
  author_id: user7.id,
  restaurant_id: mexican.id,
  body: " was a little skeptical of a vegan Mexican restaurant but the food was much better than I expected!",
  food: 4.5,
  service: 4.1,
  ambience: 4.2,
  value: 4.2,
  rating: 4.4,
})

seafood = Restaurant.create({
  name: "Anchor Oyster Bar",
  street_address: "579 Castro St.",
  city: "San Francisco",
  state: "CA",
  zip_code:"94114",
  num_seats: 4,
  cuisine: 7,
  phone_number: "(415)431-3900",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523056836/pexels-photo-67468.jpg",
  description: "Since 1977, diners have been coming to this nautical-themed eatery for fresh fish & shellfish.",
  price: 3,
  neighborhood: "Castro"
})

seafood_review1 = Review.create({
  author_id: user2.id,
  restaurant_id: seafood.id,
  body: "So hard to get a seat. Thanks to OpenSeated was finally able to go to this restaurant. The Cioppini is incredible!",
  food: 5.0,
  service: 5.0,
  ambience: 5.0,
  value: 5.0,
  rating: 5.0,
})

seafood_review2 = Review.create({
  author_id: user3.id,
  restaurant_id: seafood.id,
  body: "Awesome find... small, quaint, clean.  Food was OUTSTANDING!  Super nice and welcoming staff.  So glad we found this non-touristy, local joint.",
  food: 4.0,
  service: 4.0,
  ambience: 4.0,
  value: 4.0,
  rating: 4.0,
})

seafood_review3 = Review.create({
  author_id: user4.id,
  restaurant_id: seafood.id,
  body: "Really cute and small restaurant in the Castro.",
  food: 4.5,
  service: 4.1,
  ambience: 4.2,
  value: 4.2,
  rating: 4.4,
})

vietnamese = Restaurant.create({
  name: "Yummy Yummy",
  street_address:"1015 Irving St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94122",
  num_seats: 6,
  cuisine: 8,
  phone_number: "(415)566-4722",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523058056/jennifer-schmidt-462962-unsplash.jpg",
  description: "This eatery offers the standard Vietnamese dishes like pho & banh xeo in a no-frills setting.",
  price: 1,
  neighborhood: "Inner Sunset"
})

vietnamese_review1 = Review.create({
  author_id: user5.id,
  restaurant_id: vietnamese.id,
  body: "Better than you think. Order what they tell you. Best shrimp noodle soup and chicken broccoli ever!",
  food: 5.0,
  service: 4.0,
  ambience: 3.0,
  value: 4.0,
  rating: 4.0,
})

vietnamese_review2 = Review.create({
  author_id: user6.id,
  restaurant_id: vietnamese.id,
  body: "Yummy Yummy is well Yummy!  This place has some of the best sliced fish porridge (or also known as Congee).",
  food: 4.0,
  service: 4.0,
  ambience: 4.0,
  value: 4.0,
  rating: 5.0,
})

vietnamese_review3 = Review.create({
  author_id: user7.id,
  restaurant_id: vietnamese.id,
  body: "I didn't much enjoy the sticky rice, and the sui mai was just ok. I thought the rice roll was pretty decent though. It wasn't super flavorful but I didn't mind adding soy sauce to my own salty preference levels.",
  food: 4.5,
  service: 4.1,
  ambience: 4.2,
  value: 4.2,
  rating: 4.4,
})

# new york city rest
nyc_american = Restaurant.create({
  name: "Balthazar",
  street_address:"80 Spring St.",
  city: "New York",
  state: "NY",
  zip_code: "10012",
  num_seats: 10,
  cuisine: 2,
  phone_number: "(212) 965-1414",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523056835/menu-restaurant-vintage-table.jpg",
  description: "Balthazar is a traditional French Brasserie with a bustling railway station atmosphere. Our kitchen serves a variety of meat and poultry dishes including: Duck Shepherds Pie, Roasted Chicken and Steak Frites. Balthazar specializes in seafood with an array of fish entrees and a complete raw oyster and shellfish bar.",
  price: 3,
  neighborhood: "SoHo"
})

nyc_american_review1 = Review.create({
  author_id: user5.id,
  restaurant_id: nyc_american.id,
  body: "We had Alex as our server. She was amazing as always. She's super attentive, friendly, and knowledgeable. We ordered the guac and tortillas ( the tortillas are amazingly soft) and tried the cheesy cauliflower which was out of this world. I love the desserts especially the cobbler and pairing it with the ginger mint tea is the perfect way to finish the evening.",
  food: 4.5,
  service: 4.1,
  ambience: 4.2,
  value: 4.2,
  rating: 4.4,
})

#chicago
chinese_chicago = Restaurant.create({
  name: "Imperial Lamian",
  street_address:"6 W Hubbard St.",
  city: "Chicago",
  state: "IL",
  zip_code: "60654",
  num_seats: 10,
  cuisine: 1,
  phone_number: "(312) 595-9440",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523056835/menu-restaurant-vintage-table.jpg",
  description: "Welcome to Imperial Lamian, we feature the traditional art of authentic Chinese cuisine in a sophisticated environment. Master Chefs prepare your meals using ancient techniques of noodle making, dumpling folding and wok cooking. Complimented by our unique beverage program - custom blended teas, a comprehensive beverage selection that includes wine, sake, craft beer, Asian whiskey, single malts and specialty cocktails. Open for Lunch, Dinner and Brunch.",
  price: 3,
  neighborhood: "River North",
})
#
# chinese_chicago = Restaurant.create ({
#   name: "Imperial Lamian",
#   street_address: "6 W Hubbard St.",
#   city: "Chicago",
#   state: "IL",
#   zip_code: "60654",
#   num_seats: 10,
#   cuisine: 1,
#   phone_number: "(312) 595-9440",
#   img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523056835/menu-restaurant-vintage-table.jpg",
#   description: "
#   neighborhood: "River North"
# })

chicago_chinese_review1 = Review.create({
  author_id: user8.id,
  restaurant_id: chinese_chicago.id,
  body: "Visiting Imperial Lamian was one of the highlights of my recent trip to Chicago. It was everything I wanted it to be and more and it was a destination experience.",
  food: 4.3,
  service: 4.0,
  ambience: 4.2,
  value: 4.2,
  rating: 5.0,
})

#la
la_mexican = Restaurant.create({
  name: "Yxta Cocina Mexicana",
  street_address:"601 S. Central Ave",
  city: "Los Angeles",
  state: "CA",
  zip_code: "90021",
  num_seats: 10,
  cuisine: 6,
  phone_number: "(213) 596-5579",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523056835/menu-restaurant-vintage-table.jpg",
  description: "The restaurant offers authentic Mexican food—handmade tortillas, fresh guacamole, slow-cooked carnitas, enchiladas de mole, as well as delicious updates to the classics—ceviche tostadas, dos gringas and salmon a la parilla.",
  price: 2,
  neighborhood: "Downtown"
})

la_mexican_review1 = Review.create({
  author_id: user10.id,
  restaurant_id: la_mexican.id,
  body: "Meal was delicious and service was fast. I had the shrimp enchiladas and my coworker had the chile relleno and we shared guacamole. Guacamole is great, I love the crunchy pepitas. Love this place!",
  food: 4.3,
  service: 4.0,
  ambience: 4.2,
  value: 4.2,
  rating: 5.0,
})

#Miami
miami_japanese = Restaurant.create({
  name: "Pubbelly Sushi Aventura",
  street_address:"19565 Biscayne Blvd",
  city: "Aventure",
  state: "FL",
  zip_code: "33180",
  num_seats: 10,
  cuisine: 4,
  phone_number: "(305) 690-7710",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523056835/menu-restaurant-vintage-table.jpg",
  description: "Welcome to Pubbely Sushi, neighborhood sushi restaurant, where casual dining meets superb service, food and flavor.",
  price: 3,
  neighborhood: "Aventure"
})

miami_jap_review1 = Review.create({
  author_id: user4.id,
  restaurant_id: miami_japanese.id,
  body: "Meal was delicious and service was fast. I had the shrimp enchiladas and my coworker had the chile relleno and we shared guacamole. Guacamole is great, I love the crunchy pepitas. Love this place!",
  food: 4.3,
  service: 4.0,
  ambience: 4.2,
  value: 4.2,
  rating: 5.0,
})

#las vegas
las_vegas_vietnamese = Restaurant.create({
  name: "Lemongrass - Aria",
  street_address:"3730 Las Vegas Blvd South",
  city: "Las Vegas",
  state: "NV",
  zip_code: "89109",
  num_seats: 10,
  cuisine: 9,
  phone_number: "(702) 590-8670",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523056835/menu-restaurant-vintage-table.jpg",
  description: "Serving a modern interpretation of Thai cuisine, Lemongrass offers a wide variety of authentic dishes filled with flavor. Our Satay Bar offers charcoal-grilled beef, poultry, pork and seafood skewers served with a variety of sauces and seasonings. Or enjoy inspired Asian cocktails at the expanded bar and lounge located near the entrance. The casual, modern atmosphere also offers two private dining rooms for a more exclusive experience.",
  price: 3,
  neighborhood: "Aria Hotel & Casino"
})

la_mexican_review1 = Review.create({
  author_id: user10.id,
  restaurant_id: la_mexican.id,
  body: "Food was sub par except the dumplings, service made me feel like I was bothering them, but the decor of the restaurant was really good. We won't be back. Lots of other better options and we are locals in Vegas, so we try lots of places.",
  food: 4.0,
  service: 3.0,
  ambience: 4.2,
  value: 4.2,
  rating: 3.5,
})


fav = Favorite.create ({
  user_id: guest.id,
  restaurant_id: mexican.id
})
