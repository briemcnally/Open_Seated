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

guest_res = Reservation.create({
  user_id: guest.id,
  restaurant_id: american.id,
  date: "Thu, 28 Jun 2018 13:29:32 -0700",
  time: "Thu, 28 Jun 2018 13:29:32 -0700",
  num_guests: 2,
  phone_number: "732-977-5356",
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

american_review3 = Review.create({
  author_id: user3.id,
  restaurant_id: american.id,
  body: "Decent place. The service was good for the most part but the waitress was a bit tired. I found the ambiance to be very charming. Everything I tried was bursting with flavor. Everything was just so yummy. I had to take one star away because the burger was a little undercooked.",
  food: 3.0,
  service: 3.0,
  ambience: 5.0,
  value: 4.0,
  rating: 4.0,
})


sf_chinese = Restaurant.create({
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
  restaurant_id: sf_chinese.id,
  body: "I had high hopes for this place. This place is very dumpy and in a serious need of a makeover. Too many things on the menu look like crap, smell like crap, and taste like crap. I felt the prices were too high given the quality of the food. I would be hard pressed to come back.",
  food: 3.0,
  service: 4.1,
  ambience: 1.0,
  value: 3.0,
  rating: 2.0,
})
chinese_review2 = Review.create({
  author_id: user5.id,
  restaurant_id: sf_chinese.id,
  body: "I stumbled on this undiscovered gem right in our neighboorhood. There were a lot of interesting decorations on the walls. Everything was just so yummy. It could have been perfect, but the wait to get in was so long.",
  food: 5.0,
  service: 3.5,
  ambience: 4.0,
  value: 4.3,
  rating: 4.0,
})

chinese_review3 = Review.create({
  author_id: user6.id,
  restaurant_id: sf_chinese.id,
  body: "I'm torn about this place. The service was good for the most part but the waitress was a bit rude. I felt the prices were too high given the quality of the food. The tofu dish tasted spongy and a bit bland. I had a satisfactory experience and will have to try it again.",
  food: 4.0,
  service: 3.1,
  ambience: 3.0,
  value: 4.2,
  rating: 3.5,
})

sf_chinese2 = Restaurant.create({
  name: "Hakkasan - San Francisco ",
  street_address: "One Kearny St",
  city: "San Francisco",
  state: "CA",
  zip_code: "94108",
  num_seats: "10",
  cuisine: 1,
  phone_number: "(415)829-8148",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527027985/appetizer-asian-asian-food-357809_1.jpg",
  description: "Located in one of the most food-centric cities in the U.S., Hakkasan San Francisco has become a culinary destination for locals and tourists alike. Accessible yet sophisticated, Hakkasan has redefined the modern Chinese fine-dining experience. 'Modern authenticity' is at the heart of everything from the design of its chic, sensuous interior to the execution of its Michelin-starred modern Cantonese menu, to an expansive wine and cocktail program, carefully curated by the talented Hakkasan mixologists.",
  price: 4,
  neighborhood: "Financial District / Embarcadero"
})

sf_chinese2_review1 = Review.create({
  author_id: user4.id,
  restaurant_id: sf_chinese2.id,
  body: "Amazing food and quite expensive. Worthwhile for special occasions.",
  food: 5.0,
  service: 4.0,
  ambience: 4.5,
  value: 3.0,
  rating: 4.0,
})

sf_chinese3 = Restaurant.create({
  name: "China Live",
  street_address: "644 Broadway St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94133",
  num_seats: "10",
  cuisine: 1,
  phone_number: "(415) 788-8188",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527029784/buffet-chinatown-chinese-food-34570.jpg",
  description: "Our first floor restaurant features a daily changing seasonal menu cooked from 8 specialized stations that merge traditional Chinese and Western culinary equipment. A main dining area plays centerpiece, appointed with chairs and tables all handcrafted in China from reclaimed Chinese elm. These exhibition kitchens, with plenty of bar seating, will allow you a more close-up view of the deft chefs in action.",
  price: 2,
  neighborhood: "Chinatown"
})

sf_chinese3_review1 = Review.create({
  author_id: user7.id,
  restaurant_id: sf_chinese3.id,
  body: "Fantastic appetizer, crispy pork belly cubes! Dinner just average. Very noisy, could hardly talk and wait person had to get very close to be heard. Wine by the glass was also pricey. Too many great restaurants in San Francisco to choose from, would not go back to Chinalive",
  food: 4.0,
  service: 4.0,
  ambience: 2.0,
  value: 3.0,
  rating: 3.5,
})

sf_chinese4 = Restaurant.create({
  name: "Crystal Jade Jiang Nan",
  street_address: "Four Embarcadero Center Suite One",
  city: "San Francisco",
  state: "CA",
  zip_code: "9411",
  num_seats: "10",
  cuisine: 1,
  phone_number: "(415) 399-1200",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527029729/bright-decoration-depth-of-field-707670.jpg",
  description: "Crystal Jade is a 26 year strong MICHELIN awarded dining brand from Singapore offering authentic Chinese cuisine with modern influences. Crystal Jade San Francisco’s beautiful Embarcadero waterfront location boasts sweeping views of the Bay. The restaurant brings a modern approach to authentic Chinese cuisine; combining high quality locally sourced ingredients to reflect California’s rich product offering, yet preserving thousand year old Chinese culinary traditions. ",
  price: 3,
  neighborhood: "Financial District / Embarcadero"
})

sf_chinese4_review1 = Review.create({
  author_id: user4.id,
  restaurant_id: sf_chinese4.id,
  body: "Simply the best Chinese meal I have had, including in China!",
  food: 5.0,
  service: 5.0,
  ambience: 5.0,
  value: 5.0,
  rating: 5.0,
})

sf_chinese5 = Restaurant.create({
  name: "Fang",
  street_address: "660 Howard St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94105",
  num_seats: "10",
  cuisine: 1,
  phone_number: "(415)777-8568",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527029846/baking-bread-bun-1098545.jpg",
  description: "Fang is the sister restaurant of wildly popular restaurant, House of Nanking. Fang embodies both modern and authentic Chinese cuisines in a fine dining setting serving traditional Chinese fare, dim sum, as well as 'off the menu' innovative dishes for the adventurous. Chef Peter Fang believes that good-tasting food is universal and should not be bound by how dishes were made in the past. With Chef Peter’s trademark inventiveness and eye for quality, the menu evolves and changes based on seasonally fresh ingredients from the same local Chinatown markets Peter has visited for decades. For fresh seasonal Chinese food in an elegant and modern setting, visit Fang.",
  price: 2,
  neighborhood: "SOMA"
})

sf_chinese5_review1 = Review.create({
  author_id: user4.id,
  restaurant_id: sf_chinese5.id,
  body: "A traditional Chinese restaurant with some unusual and tasty twists. We started with lightly pickled and slightly sweet cucumbers, a refreshing start to the meal. The pork buns, open steamed buns with rich pork within were delicious and had us wanting more. Fang's signature honey chili shortrib was cubed, a nice surprise; we liked the crispness of the accompanying bok choy, but it didn't have much actual flavor.",
  food: 3.0,
  service: 4.0,
  ambience: 4.0,
  value: 3.5,
  rating: 4.0,
})

sf_chinese6 = Restaurant.create({
  name: "Eight Tables by George Chen",
  street_address: "8 Kenneth Rexroth Pl.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94133",
  num_seats: "10",
  cuisine: 1,
  phone_number: "(415) 788-8788",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527029916/buffet-business-counter-776538.jpg",
  description: "Eight Tables by George Chen: An elegant and sophisticated fine dining restaurant serving a seasonal 10 course Prix-Fixe menu of elevated Chinese cuisine. With a clandestine, back-alley entrance and intimate semi- private tables, each guest feels transported to George and Cindy's home away from home.",
  price: 4,
  neighborhood: "Chinatown"
})

sf_chinese6_review1 = Review.create({
  author_id: user4.id,
  restaurant_id: sf_chinese6.id,
  body: "Spectacular meal. Superb flavors, beautiful presentation, warm hospitality.",
  food: 5.0,
  service: 5.0,
  ambience: 5.0,
  value: 5.0,
  rating: 5.0,
})

sf_chinese7 = Restaurant.create({
  name: "Teo Restaurant & Bar",
  street_address: "1111 Mission St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94103",
  num_seats: "10",
  cuisine: 1,
  phone_number: "(415) 626-8366",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527029963/art-bright-chinese-lanterns-707265.jpg",
  description: "Tēo is derived from the origins of our cuisine, Teo Chew, also known as Chui Chow or Chaozhou (a city in Guangdong province) in China. We offer the TRADITIONAL, LOCAL and DELICIOUS Chinese food. ",
  price: 2,
  neighborhood: "SOMA"
})

sf_chinese7_review1 = Review.create({
  author_id: user4.id,
  restaurant_id: sf_chinese7.id,
  body: "Teo is such a cool place for Chaozhou style of Chinese food. I couldn't find another one in SF Bay Area to compete with them.",
  food: 4.0,
  service: 4.0,
  ambience: 3.0,
  value: 3.0,
  rating: 4.0,
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

sf_italian2 = Restaurant.create({
  name: "Che Fico",
  street_address: "838 Divisadero St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94117",
  num_seats: "10",
  cuisine: 3,
  phone_number: "(415) 416-6959",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527023606/lasagna-3344994_1920.jpg",
  description: "California and Italian fare from EMP alums in a stylish neighborhood restaurant.",
  price: 3,
  neighborhood: "North Panhandle / USF"
})

sf_italian2_review1 = Review.create({
  author_id: user4.id,
  restaurant_id: sf_italian2.id,
  body: "I am such a fan of Che Fico! We somehow scored a last second reservation at 6pm and we're super stoked to check this place out.  They do have seats at the bar if you want to go the first come first serve route.",
  food: 4.0,
  service: 4.5,
  ambience: 4.0,
  value: 5.0,
  rating: 4.0,
})

sf_italian3 = Restaurant.create({
  name: "Uva Enoteco",
  street_address: "568 Haight St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94117",
  num_seats: "10",
  cuisine: 3,
  phone_number: "(415) 829-2024",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527023762/restaurant-449952_1920.jpg",
  description: "Welcome to Uva Enoteca. Our cuisine is focused on the Italian Enoteca experience. We serve Formaggi, Carne, Antipasti, Insalate, Pizza, Pasta and Gelato everyday. We also feature an all Italian wine list showcasing small Italian producers and wine based cocktails. we look forward to serving you.",
  price: 2,
  neighborhood: "Haight"
})

sf_italian3_review1 = Review.create({
  author_id: user2.id,
  restaurant_id: sf_italian3.id,
  body: "The restaurant is intimate and cozy but there is lots of natural light at the front. The bar seating looks comfortable but the tables in the back don't look great unless you have a larger group and are forced to sit back there.",
  food: 4.0,
  service: 4.5,
  ambience: 3.0,
  value: 4.0,
  rating: 4.0,
})

sf_italian4 = Restaurant.create({
  name: "Delfina",
  street_address: "3621 18th St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94110",
  num_seats: "10",
  cuisine: 3,
  phone_number: "(415) 552-4055",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527023901/pizza-3359337_1920.jpg",
  description: "Delfina is a bustling, James Beard Award-winning neighborhood trattoria in San Francisco’s Mission District. Owned by Anne and Craig Stoll. PLEASE NOTE: Delfina only accepts limited reservations on OpenTable. For more tables and availability, please visit Delfina's website or contact us directly.",
  price: 3,
  neighborhood: "Mission"
})

sf_italian4_review1 = Review.create({
  author_id: user2.id,
  restaurant_id: sf_italian4.id,
  body: "It can all be said in one delicious word SPAGHETTI! We'll, maybe two - WINE. You can't go wrong with the duo of  and spaghetti! Don't forget to order Tartine bread to go with the glorious pasta.",
  food: 4.0,
  service: 4.5,
  ambience: 3.0,
  value: 4.0,
  rating: 4.0,
})

sf_italian5 = Restaurant.create({
  name: "Contrada",
  street_address: "2136 Union St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94123",
  num_seats: "10",
  cuisine: 3,
  phone_number: "(415) 926-8916 ",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527024066/blur-breakfast-chef-262978.jpg",
  description: "Want some fresh air, a sunny back deck, and a breakfast pizza with soft-scrambled egg, smoky trout roe, crème fraîche, and fresh herbs? We are just the place. Our pizza crust is both elastic and crisp, with developed flavor so get a delicious pizza. Our backyard patio is a little hideaway off Union Street, and chef Denise St. Onge's Cal-Italian menu has not only memorable salads, rustic dishes like polenta and eggs, and a farmers’ market Benedict but also handmade pastas to die for. A wide choice of brunch cocktails range from spritzes to sangria, and there are some excellent wine selections for you to discover—just ask our friendly staff.",
  price: 3,
  neighborhood: "Marina / Cow Hollow / Presidio"
})

sf_italian5_review1 = Review.create({
  author_id: user6.id,
  restaurant_id: sf_italian5.id,
  body: "Taking into account the quality of the food, the prices, and service, Contrada was not worth it.",
  food: 2.5,
  service: 3.0,
  ambience: 3.0,
  value: 2.0,
  rating: 3.5,
})

sf_italian6 = Restaurant.create({
  name: "Pesce e Riso",
  street_address: "1224 Grant Ave.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94133",
  num_seats: "10",
  cuisine: 3,
  phone_number: "(415) 926-8916 ",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527024231/adult-bar-blur-696218.jpg",
  description: "Located in San Francisco’s North Beach, Pesce e Riso is an Italian restaurant with a surprising Japanese twist. Here in the heart of 'little Italy,' chef and owner Joe Lin creatively weaves together Italian and Japanese culinary traditions by building on the elements that unite them: simplicity and quality. Chef Lin is a skilled sushi chef who fell in love with Italian cuisine while training with an Italian chef in Tuscany. Pesce e Riso means 'fish and rice' in Italian, which are the building blocks of Japanese cuisine and lend themselves beautifully to Italian cuisine. ",
  price: 2,
  neighborhood: "North Beach"
})

sf_italian6_review1 = Review.create({
  author_id: user8.id,
  restaurant_id: sf_italian6.id,
  body: "Service was friendly, attentive, knowledgeable, but not overly pushy. The atmosphere was casual and the decor was well manicured. And most importantly, the food was amazing!",
  food: 5.0,
  service: 4.0,
  ambience: 4.0,
  value: 3.0,
  rating: 4.5,
})

sf_italian7 = Restaurant.create({
  name: "Poesia",
  street_address: "4072 18th St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94114",
  num_seats: "10",
  cuisine: 3,
  phone_number: "(415) 252-9325",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527024363/blur-close-up-cutlery-370984.jpg",
  description: "Owned and operated by Francesco d'Ippolito, and staffed by an experienced, multi-cultured family of hosts whom are all passionate about the experience and concept, Poesia is the latest addition of authentic Italian cuisine to call San Francisco its home. Nestled in the middle of the vibrant and colorful neighborhood of the Castro, Poesia features the finest in hand-made, traditional ingredients and pastas, combined with meticulous preparation and presentation that is second to none.",
  price: 2,
  neighborhood: "Castro"
})


sf_japanese = Restaurant.create({
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
  restaurant_id: sf_japanese.id,
  body: "Classic elegant omakase-only restaurant. Chefs are japense and the ambiance is elegant and high end. They sport a Michelin Star for a reason.",
  food: 5.0,
  service: 5.1,
  ambience: 4.0,
  value: 5.0,
  rating: 5.0,
})

japanese_review2 = Review.create({
  author_id: user4.id,
  restaurant_id: sf_japanese.id,
  body: "I was not impressed. I much MUCH prefer Kusakabe over Omakase.",
  food: 3.0,
  service: 4.5,
  ambience: 4.0,
  value: 4.0,
  rating: 3.0,
})

japanese_review3 = Review.create({
  author_id: user5.id,
  restaurant_id: sf_japanese.id,
  body: "Great omakase experience in SF. Food was super fresh and each course was full of different flavors.",
  food: 4.0,
  service: 5.0,
  ambience: 4.0,
  value: 4.0,
  rating: 4.0,
})

sf_japanese2 = Restaurant.create({
  name: "Michael Mina – San Francisco",
  street_address: "252 California St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94111",
  num_seats: 5,
  cuisine: 4,
  phone_number: "(415) 397-9222",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527030083/asian-chopsticks-cooking-697058_1.jpg",
  description: "Michelin-starred MICHAEL MINA is the crowning jewel that captures the core of Michael's philosophy: bold yet balanced flavors achieved through a combination of acidity, sweetness, spice and richness. At the helm, Executive Chef Raj Dixit achieves these bold, balanced flavors in a cuisine, which draws upon global influences, showcasing the highest quality authentic and seasonal ingredients.",
  price: 4,
  neighborhood: "Financial District / Embarcadero"
})

sf_japanese2_review1 = Review.create({
  author_id: user3.id,
  restaurant_id: sf_japanese2.id,
  body: "Friendly attentive service. We had the tasting lunch menu. Every course was delicious. Wine list selection was excellent. Will visit again if in San Fran again in future.",
  food: 5.0,
  service: 5.1,
  ambience: 4.0,
  value: 5.0,
  rating: 5.0,
})

sf_japanese3 = Restaurant.create({
  name: "Otoro Sushi",
  street_address: "205 Oak St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94102",
  num_seats: 10,
  cuisine: 4,
  phone_number: "(415) 553-3986",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527030163/avocado-cuisine-delicious-684965.jpg",
  description: "Otoro Sushi is a hidden gem in the Hayes Valley. Our sushi experts will go to great lengths to bring you the freshest ingredients to offer San Francisco Bay Area patrons Japan's best traditional sushi and tapas. Otoro Sushi is perfect for small groups and also has a wonderful sake and wine selection.",
  price: 2,
  neighborhood: "Civic Center / Hayes Valley / Van Ness"
})

sf_japanese3_review1 = Review.create({
  author_id: user3.id,
  restaurant_id: sf_japanese3.id,
  body: "Otoro never disappoints! I enjoyed a peaceful, delicious, moderately priced meal with a friend before the Symphony. We were able to have a good conversation because the noise level was manageable, the service was kind and attentive, and the food was excellent, especially for the price. I particularly recommend the agedashi tofu and the eggplant.",
  food: 4.0,
  service: 5.1,
  ambience: 4.0,
  value: 4.0,
  rating: 4.0,
})

sf_japanese4 = Restaurant.create({
  name: "Nomica",
  street_address: "2223 Market St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94114",
  num_seats: 10,
  cuisine: 4,
  phone_number: "(415) 655-3280",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527030235/asia-japan-japanese-590478.jpg",
  description: "Modern Japanese cuisine & drinking house Nomica is a fresh, contemporary take on Japanese cuisine, set in the vibrant Upper Market neighborhood of San Francisco. A sister to the highly awarded Sushi Ran in Sausalito, Nomica puts an urban twist on innovative Japanese food. Nomica’s name (Noe-Mission-Castro), a nod to our vibrant neighborhood, by happy coincidence, also means “drinking house” in Japanese. Our full bar features creative cocktails and a selection of hard to find awamori, a traditional Okinawan spirit.",
  price: 3,
  neighborhood: "Castro"
})

sf_japanese4_review1 = Review.create({
  author_id: user5.id,
  restaurant_id: sf_japanese4.id,
  body: "This is our third time at Nomica and it didn't disappoint! Great food, awesome atmosphere. I would recommend the chef tasting menu ($69 pp) -- you get a lot of food and the dishes don't disappoint. If you pick and choose off the menu you pretty much can't go wrong either. Definitely recommend! Yum!",
  food: 5.0,
  service: 5.1,
  ambience: 4.0,
  value: 5.0,
  rating: 5.0,
})

sf_japanese5 = Restaurant.create({
  name: "Maruya",
  street_address: "2931 16th St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94103",
  num_seats: 8,
  cuisine: 4,
  phone_number: "(415)503-0702",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,w_130/v1527030282/avocado-ceramic-plate-chopsticks-343870.jpg",
  description: "In 2013, Maruya was one of the first Japanese restaurants to specialize in omakase. We focus on presenting the traditional Japanese style of dining which encompasses on fish quality, on food presentation and simplicity. A la carte is available after the *omakase course.",
  price: 4,
  neighborhood: "Mission"
})

sf_japanese5_review1 = Review.create({
  author_id: user5.id,
  restaurant_id: sf_japanese5.id,
  body: "Food was amazing. So fresh that the fish tastes sweet. Appetizers were all special, delicate and tasty. Also very detailed about decoration of plates and bowls.",
  food: 5.0,
  service: 5.1,
  ambience: 4.0,
  value: 5.0,
  rating: 5.0,
})

sf_japanese6 = Restaurant.create({
  name: "Izakaya Roku",
  street_address: "1819 Market St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94103",
  num_seats: 10,
  cuisine: 4,
  phone_number: "(415) 861-6500",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527030357/chopsticks-close-up-delicious-539430.jpg",
  description: "In the tradition of Japanese izakayas—sake shops with tapas-style menus—Izakaya Roku serves an extensive menu of small plates. Recommended by The New York Times, the menu opens with simple snacks such as edamame, before introducing seared fish and several kinds of Carpaccio. There's tempura and ramen, of course, but also stews with everything from pork belly to sake-steamed clams. The traditional izakaya in Japan is a cozy, neighborly place, and Izakaya Roku would fit right in among them, with its sleek and manly Japanese feel to the room. 'Now, this is an izakaya,' said the San Francisco Chronicle's Janny Hu, praising the restaurant's authenticity and dedication to the true form of its namesake. Hu advised guests to 'order up and just enjoy what comes to the table.' Izakaya Roku offers the same dishes as their enormously popular JapaCurry food truck, voted one of the 101 Best Food Trucks in America in 2014.",
  price: 2,
  neighborhood: "Civic Center / Hayes Valley / Van Ness"
})

sf_japanese6_review1 = Review.create({
  author_id: user5.id,
  restaurant_id: sf_japanese6.id,
  body: "The food was decent, but hardly amazing and the service was downright infuriating. Each dish, including our two mains, came out far apart. Specifically, the freshly fried squid main came out 15 minutes before the ramen, which didn't even have fresh noodles. Why would you make one of the two people at the table wait for the food to turn cold our eat entirely alone? The kitchen really blew it, and the wait staff didn't notice the problem or make up for it when they were notified. We won't be back, which is a shame, because the food was tasty.",
  food: 2.0,
  service: 2.1,
  ambience: 3.0,
  value: 2.0,
  rating: 2.5,
})

sf_japanese7 = Restaurant.create({
  name: "ANZU",
  street_address: "222 Mason St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94102",
  num_seats: 2,
  cuisine: 4,
  phone_number: "(415)394-1100",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527030439/close-up-cuisine-delicious-858496.jpg",
  description: "Restaurant ANZU, located in the Union Square shopping district of Downtown San Francisco. Here, sustainable California cuisine is enhanced with Asian flavors. The Restaurant is open for Breakfast, Lunch, Brunch, Happy Hour and Dinner. We offer a Full Bar, Sushi Bar as well as entree favorites such as Misoyaki Black Cod, 38 North Duck and an array of Steaks and Seafood grilled to perfection on our Bincho-tan Grill. Express menus are available at lunch. Try our Sushi Bento box or our Express Luncheon both guaranteed to keep your lunch hour to less than an hour in our restaurant.",
  price: 4,
  neighborhood: "Downtown / Union Square"
})

sf_japanese7_review1 = Review.create({
  author_id: user5.id,
  restaurant_id: sf_japanese7.id,
  body: "Food was fine, but unremarkable. Ambiance a little pretentious. Bread served before sushi was strange.",
  food: 3.0,
  service: 4.0,
  ambience: 2.0,
  value: 3.0,
  rating: 3.0,
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

sf_mexican2 = Restaurant.create({
  name: "Sabrosa",
  street_address: "3200 Fillmore St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94123",
  num_seats: 10,
  cuisine: 6,
  phone_number: "(415) 638-6500",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527002666/mexican-2456038_1280.jpg",
  description:"Sabrosa's kitchen offers guests the opportunity to enjoy recipes rooted in culture and brimming with authentic Mexican flavors. Influenced by Jose's experience growing up on his family’s farm in Guanajuato, Mexico, each dish is prepared with ingredients derived from the organic and sustainable agricultural bounty of Northern California.",
  price: 2,
  neighborhood: "Marina / Cow Hollow / Presidio"
})

mexican_review1 = Review.create({
  author_id: user9.id,
  restaurant_id: sf_mexican2.id,
  body: "We had Alex as our server. She was amazing as always. She's super attentive, friendly, and knowledgeable. We ordered the guac and tortillas ( the tortillas are amazingly soft) and tried the cheesy cauliflower which was out of this world. I love the desserts especially the cobbler and pairing it with the ginger mint tea is the perfect way to finish the evening.",
  food: 4.5,
  service: 4.1,
  ambience: 4.2,
  value: 4.2,
  rating: 4.4,
})

sf_mexican3 = Restaurant.create({
  name: "Cala",
  street_address: "149 Fell St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94102",
  num_seats: 10,
  cuisine: 6,
  phone_number: "(415)660-7701",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527003006/taco-2152097_1920.jpg",
  description:"Cala is an upscale Mexican eatery with a delightfully inventive menu that leans heavily towards seafood. Recent standout dishes at Cala include Dungeness crab tostadas and local bay shrimp tacos. The plating is always exquisite and the atmosphere is energetic.",
  price: 3,
  neighborhood: "Civic Center / Hayes Valley / Van Ness"
})

sf_mexican3_review1 = Review.create({
  author_id: user9.id,
  restaurant_id: sf_mexican3.id,
  body: "We had Alex as our server. She was amazing as always. She's super attentive, friendly, and knowledgeable. We ordered the guac and tortillas ( the tortillas are amazingly soft) and tried the cheesy cauliflower which was out of this world. I love the desserts especially the cobbler and pairing it with the ginger mint tea is the perfect way to finish the evening.",
  food: 4.5,
  service: 4.1,
  ambience: 4.2,
  value: 4.2,
  rating: 4.4,
})

sf_mexican4 = Restaurant.create({
  name: "Rosa Mexicano - San Francisco",
  street_address: "30 Mission St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94105",
  num_seats: 10,
  cuisine: 6,
  phone_number: "(415) 874-4300",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527003487/tacos-386719_1920.jpg",
  description:"In 1984, Rosa Mexicano set a new standard for Mexican cuisine when it first opened in New York City. Playing a leading role in defining what was then a 'new' cuisine to American diners, Rosa Mexicano delivers authentic Mexican cooking in an accessible, stylishly festive atmosphere. Rosa Mexicano's menu features a range of award-winning signature dishes, including our Guacamole en Molcajete, prepared in a traditional lava rock mortar. Described by Time Out New York as 'green ecstasy in a stone bowl,' it is prepared table side and served with house made chips, warm corn tortillas and condiment salsas.",
  price: 3,
  neighborhood: "Mission"
})

sf_mexican4_review1 = Review.create({
  author_id: user9.id,
  restaurant_id: sf_mexican4.id,
  body: "We had Alex as our server. She was amazing as always. She's super attentive, friendly, and knowledgeable. We ordered the guac and tortillas ( the tortillas are amazingly soft) and tried the cheesy cauliflower which was out of this world. I love the desserts especially the cobbler and pairing it with the ginger mint tea is the perfect way to finish the evening.",
  food: 4.5,
  service: 4.1,
  ambience: 4.2,
  value: 4.2,
  rating: 4.4,
})


sf_mexican5 = Restaurant.create({
  name: "Tres - SF (fka Tres Agaves)",
  street_address: "130 Townsend St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94107",
  num_seats: 10,
  cuisine: 6,
  phone_number: "(415) 227-0500",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527003268/margarita-415360_1920.jpg",
  description:"Tres - SF is dedicated to quality and fun. Our tequila bar features fresh, hand-squeezed lime margaritas and other tasty tequila & mezcal cocktails, plus Mexican beers on tap. Our food is inspired by traditional restaurants of Jalisco Mexico. We serve wholesome, soulful renditions of Jaliscan classics using the freshest possible ingredients from Bay Area farmers.",
  price: 2,
  neighborhood: "SOMA"
})

sf_mexican5_review1 = Review.create({
  author_id: user9.id,
  restaurant_id: sf_mexican5.id,
  body: "We had Alex as our server. She was amazing as always. She's super attentive, friendly, and knowledgeable. We ordered the guac and tortillas ( the tortillas are amazingly soft) and tried the cheesy cauliflower which was out of this world. I love the desserts especially the cobbler and pairing it with the ginger mint tea is the perfect way to finish the evening.",
  food: 4.5,
  service: 4.1,
  ambience: 4.2,
  value: 4.2,
  rating: 4.4,
})

sf_mexican6 = Restaurant.create({
  name: "Cadillac Bar & Grill",
  street_address: "44 9th St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94103",
  num_seats: 10,
  cuisine: 6,
  phone_number: "(415)554-0181",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527003739/tacos-369179_1920.jpg",
  description:"A San Francisco landmark Mexican restaurant featuring an authentic Tex / Mex menu and margaritas served in a festive atmosphere.",
  price: 2,
  neighborhood: "Civic Center / Hayes Valley / Van Ness"
})

sf_mexican6_review1 = Review.create({
  author_id: user9.id,
  restaurant_id: sf_mexican6.id,
  body: "We had Alex as our server. She was amazing as always. She's super attentive, friendly, and knowledgeable. We ordered the guac and tortillas ( the tortillas are amazingly soft) and tried the cheesy cauliflower which was out of this world. I love the desserts especially the cobbler and pairing it with the ginger mint tea is the perfect way to finish the evening.",
  food: 4.5,
  service: 4.1,
  ambience: 4.2,
  value: 4.2,
  rating: 4.4,
})

sf_mexican7 = Restaurant.create({
  name: "Regalito Rosticeria",
  street_address: "3481 18th St.",
  city: "San Francisco",
  state: "CA",
  zip_code: "94110",
  num_seats: 5,
  cuisine: 6,
  phone_number: "(415) 503-0650",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527003885/tacos-3409675_1920.jpg",
  description:"Regalito is a small Mexican restaurant committed to bringing the 'market foods' of Mexico to San Francisco. The dining experience is immediate, the food is fresh, the preparation visible, and the service friendly.The idea for the restaurant was born during a meal at a Mexico City market stall; three women cooked from a small menu for a dozen customers sitting on benches surrounding the makeshift kitchen. No steam tables, minimal separation between cook and diner – instant community.",
  price: 2,
  neighborhood: "Mission"
})

sf_mexican7_review1 = Review.create({
  author_id: user9.id,
  restaurant_id: sf_mexican7.id,
  body: "We had Alex as our server. She was amazing as always. She's super attentive, friendly, and knowledgeable. We ordered the guac and tortillas ( the tortillas are amazingly soft) and tried the cheesy cauliflower which was out of this world. I love the desserts especially the cobbler and pairing it with the ginger mint tea is the perfect way to finish the evening.",
  food: 4.5,
  service: 4.1,
  ambience: 4.2,
  value: 4.2,
  rating: 4.4,
})

# sf_mexican8 = Restaurant.create({
#   name: "Gracias Madre",
#   street_address: "2211 Mission St.",
#   city: "San Francisco",
#   state: "CA",
#   zip_code: "94110",
#   num_seats: 10,
#   cuisine: 6,
#   phone_number: "(415)683-1346",
#   img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523057732/kayleigh-harrington-418544-unsplash.jpg",
#   description:"Gracias Madre is truly an expression of who we are – it represents our deep love of and reverence for food, our commitment to health and sustainability, our unconditional love for our multicultural family and community, our devotion to the Earth and the divine feminine, and our commitment to raising consciousness on the planet. It is our intention that the emphasis we place on the sourcing of our food will bring consciousness in the community to the importance of sustainability and of buying and selling locally grown organic food.\n In an effort to cultivate a shared experience of nourishment through food and community, all tables at Gracias Madre are sat communally.",
#   price: 2,
#   neighborhood: "Mission"
# })
#
# sf_mexican9 = Restaurant.create({
#   name: "Gracias Madre",
#   street_address: "2211 Mission St.",
#   city: "San Francisco",
#   state: "CA",
#   zip_code: "94110",
#   num_seats: 10,
#   cuisine: 6,
#   phone_number: "(415)683-1346",
#   img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523057732/kayleigh-harrington-418544-unsplash.jpg",
#   description:"Gracias Madre is truly an expression of who we are – it represents our deep love of and reverence for food, our commitment to health and sustainability, our unconditional love for our multicultural family and community, our devotion to the Earth and the divine feminine, and our commitment to raising consciousness on the planet. It is our intention that the emphasis we place on the sourcing of our food will bring consciousness in the community to the importance of sustainability and of buying and selling locally grown organic food.\n In an effort to cultivate a shared experience of nourishment through food and community, all tables at Gracias Madre are sat communally.",
#   price: 2,
#   neighborhood: "Mission"
# })

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

nyc_american2 = Restaurant.create({
  name: "Quality Meats",
  street_address: "57 West 58th St.",
  city: "New York",
  state: "NY",
  zip_code: "10019",
  num_seats: 10,
  cuisine: 2,
  phone_number: "(212) 371-7777",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,w_130/v1527031797/24438793.jpg",
  description: "Quality Meats is a contemporary restaurant that serves a rustic New American menu. The varied menu focuses on modern interpretations of classic dishes such as Traditional Steak Tartare, Caesar Salad and Roasted Bone Marrow, in addition to several cuts of beef from legendary New York butchers Milton Abeles and Strassburger Meats. The restaurant's side dishes alone merit a trip with innovative house specialties, including Corn Crème Brulee, Gnocchi and Cheese and Edamame with Mint Salt. The Quality Meats chefs are Craig Koketsu (Lespinasse, Stars) as executive chef and Cory Colton (Lespinasse, St.Regis) on pastry. The restaurant has a warm industrial atmosphere, created by award-winning AvroKO and features intimate dining areas, a comfortable bar area with well-stocked charcuterie bar.",
  price: 4,
  neighborhood: "Midtown West"
})

nyc_american2_review1 = Review.create({
  author_id: user7.id,
  restaurant_id: nyc_american2.id,
  body: "We were so impressed with our experience at Quality Meats! The staff from the beginning was very friendly.",
  food: 4.5,
  service: 4.1,
  ambience: 4.2,
  value: 4.2,
  rating: 4.4,
})

nyc_american3 = Restaurant.create({
  name: "Cookshop",
  street_address: "156 10th Ave",
  city: "New York",
  state: "NY",
  zip_code: "10011",
  num_seats: 10,
  cuisine: 2,
  phone_number: "(212) 924-4440",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,w_130/v1527032435/thumb_600.jpg",
  description: "Cookshop presents the ideal combination of great American food, prepared by Chef Marc Meyer, warm hospitality and meaningful design to west Chelsea. At the heart and soul of Cookshop lies the owners’ commitment to bringing an honest seasonal dining option to New York City coupled with an exceptional beverage program.",
  price: 3,
  neighborhood: "Chelsea"
})

nyc_american3_review1 = Review.create({
  author_id: user7.id,
  restaurant_id: nyc_american3.id,
  body: "Cookshop presents the ideal combination of great American food, prepared by Chef Marc Meyer, warm hospitality and meaningful design to west Chelsea. At the heart and soul of Cookshop lies the owners’ commitment to bringing an honest seasonal dining option to New York City coupled with an exceptional beverage program.",
  food: 4.5,
  service: 4.1,
  ambience: 3.0,
  value: 4.2,
  rating: 4.4,
})

nyc_american4 = Restaurant.create({
  name: "ABC Cocina",
  street_address:"38 East 19th St",
  city: "New York",
  state: "NY",
  zip_code: "10003",
  num_seats: 10,
  cuisine: 2,
  phone_number: "(212) 677-2233",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1527032506/christmas-cutlery-dinner-6305.jpg",
  description: "ABC Cocina with Jean-Georges, Phil Suarez and ABC Carpet & Home.",
  price: 3,
  neighborhood: "Union Square"
})

nyc_american4_review1 = Review.create({
  author_id: user7.id,
  restaurant_id: nyc_american4.id,
  body: "We were so impressed with our experience at Quality Meats! The staff from the beginning was very friendly.",
  food: 4.5,
  service: 4.1,
  ambience: 4.2,
  value: 4.2,
  rating: 4.4,
})

nyc_american5 = Restaurant.create({
  name: "The Standard Grill",
  street_address:"848 Washington St.",
  city: "New York",
  state: "NY",
  zip_code: "10014",
  num_seats: 10,
  cuisine: 2,
  phone_number: "(212) 645-4100",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523056835/menu-restaurant-vintage-table.jpg",
  description: "A neighborhood staple, The Standard Grill is classic New York meets new American cuisine. The front café, bar and street-side bistro is clean and bright with white oak and tile décor and features fresh oysters, specialty cocktails and charcuterie. The main dining room is cozy, old-world with red leather banquets, barrel vaulted ceilings, and a floor paved in copper pennies. The Standard Grill utilizes the freshest local ingredients, blending traditional steak house with new American grill sensibilities.",
  price: 3,
  neighborhood: "Meatpacking District"
})

nyc_american5_review1 = Review.create({
  author_id: user7.id,
  restaurant_id: nyc_american5.id,
  body: "Great Service and drinks. The food was super, although not convinced the Lamb Bacon in the BLT works... just good old Pork would have been much better!!! Chef please change!!",
  food: 4.5,
  service: 3.0,
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
  city: "Miami",
  state: "FL",
  zip_code: "33180",
  num_seats: 10,
  cuisine: 4,
  phone_number: "(305) 690-7710",
  img_url: "http://res.cloudinary.com/dzmnmgun1/image/upload/c_thumb,h_130,w_130/v1523056835/menu-restaurant-vintage-table.jpg",
  description: "Welcome to Pubbely Sushi, neighborhood sushi restaurant, where casual dining meets superb service, food and flavor.",
  price: 3,
  neighborhood: "Aventura"
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

las_vegas_vietnamese_review1 = Review.create({
  author_id: user10.id,
  restaurant_id: las_vegas_vietnamese.id,
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
