# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

hotels = Hotel.create([
    {
      name:"Grand Fiesta Americana Coral Beach Cancun",
      description:"This luxury hotel rises majestically in the heart of Cancun’s entertainment district. The 602-rooms present with all the class of a fine European hotel, combined with the warm and gracious service that has made us famous. Our full-service spa, invite you to enjoy the endless relaxation and adventure. Fine cuisine is available in our nine restaurants and bars. Guests may also use the large outdoor pool along with a children’s club.",
      services:"Free parking,Pool,Free internet,Fitness center,Bar",
      price_nigth:465,
      img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/3b/56/e4/hero-shot-at-night.jpg?w=1200&h=-1&s=1"
},
{
    name:"Hyatt Zilara Cancun",
    description:"Welcome to Hyatt Zilara Cancun, an adults-only, all-inclusive resort (min. age 18). Prominently located on the widest stretch of beach in the heart of Cancun's Hotel Zone, Hyatt Zilara Cancun is an adults-only, all-suite, all inclusive resort where guests experience traditional Mexican warmth in an intimate yet casual setting.Our resort features spacious suites with breathtaking views of the Caribbean and offers world-class dining, an impressive array of upscale amenities, outstanding service from an attentive and thoughtful staff, and spectacular grounds and facilities.Hyatt Zilara Cancun offers a myriad of activities and conveniences including, sophisticated culinary options at six gourmet restaurants, rejuvenating treatments and services at The Spa- Cancun's only ocean view spa - wine and spirits tastings, enhanced pool and beach butler service and more.",
    services:"Free parking,Pool,Free internet,Fitness center,Free breakfast",
    price_nigth:543,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/47/f2/ef/hyatt-zilara-cancun.jpg?w=1200&h=-1&s=1"
},
{
    name:"The Grand At Moon Palace",
    description:"Located on Cancun's tranquil south shore, ten minutes from the airport, this luxury all-inclusive resort offers more than 1,000 accommodations offering double whirlpool tubs, 24-hour room service, top-shelf drinks, free WIFI, CHI-branded amenities, aromatherapy and pillow menus, and complimentary calls to Continental US, Canada, and landlines in Mexico. Over-the-top amenities are included for everyone, including the state-of-the-art Playroom, complete with bumper cars; a huge variety of upscale dining options and bars, not to mention world-class entertainment and nightlife. With the added indulgences of an Awe Spa® for hard-core pampering, an incredible Bowling Alley, and the Jack Nicklaus Signature Golf Course within nearby reach, The Grand at Moon Palace Cancun has endless options for wholehearted enjoyment, and much more.",
    services:"Free parking,Pool,Free internet,Fitness center,Bar",
    price_nigth:635,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/0b/4a/e7/the-grand-at-moon-palace.jpg?w=1200&h=-1&s=1"
},
{
    name:"JW Marriott Cancun Resort & Spa",
    description:"Discover the new and rejuvenated JW Marriott Cancun Resort & Spa which includes an extensive transformation to all 447 lavish ocean-facing guestrooms and suites. The hotel’s multi-million dollar restoration will provide the highest degree of luxury service, embracing its ideal beachfront location and introducing modern elements complemented by local Mayan flair. The hotel is furnished with pieces that incorporate traditional Mayan designs, including authentic Mexican textiles and reclaimed wood accents adorned with meticulously carved drawings, paying homage to the cross-stitched embroidery typically found in garments worn by the ancient Yucatan people. Additional renovation highlights include modern, oversized bathrooms with freestanding soaking tubs, luxurious rainfall showers, dual sinks, and granite vanity tops featuring chrome detailing that deliver an elevated look and feel.",
    services:"Free parking,Pool,Free High-Speed-internet,Fitness center,Bar,Beach",
    price_nigth:350,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/2e/b7/33/aerial-view.jpg?w=1200&h=-1&s=1"
},
{
    name:"Le Blanc Spa Resort Cancun",
    description:"Introducing the luxurious adults only Le Blanc Spa Resort Cancun - the transformation of all-inclusive into all-incredible. Created for the discerning traveler by one of Mexico's most celebrated designers, Le Blanc Spa Resort Cancun elevates the vacation experience with an uncompromising determination to exceed your every expectation.",
    services:"Free parking,Free breakfast,Pool,Free High-Speed-internet,Fitness center,Beach",
    price_nigth:849,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0b/3e/be/41/royale-honeymoon-ocean-front--v12.jpg?w=1200&h=-1&s=1"
},
{
    name:"The Yellow Capsule",
    description:"Single and double Capsules beds located 7 minutes away from Cancun airport. Very comfortable to rest in total privacy. We provide lockers, full bathrooms, common rest areas, breakfast and transportation to the airport. Our great location is walking distance of cafes, restaurants, cinema, convenience stores, spa, gym, etc.",
    services:"Paid public parking on-site,Free breakfast,Free internet,Adults only,Rooftop terrace",
    price_nigth:47,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/8e/61/d6/the-yellow-capsule.jpg?w=1200&h=-1&s=1"
},
{
    name:"Tequila Factory Cancun Hotel",
    description:"Located in Cancún, 2.9 km from Playa Las Perlas, Tequila Factory Cancun Hotel provides accommodation with a restaurant, free private parking, a bar and a shared lounge. Featuring room service, this property also provides guests with a terrace.",
    services:"Free parking,Bar,Room service",
    price_nigth:69,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/partner/bookingcom/photo-o/1d/02/88/af/propertybuilding.jpg?w=900&h=-1&s=1"
},
{
    name:"Fiesta Americana Condesa Cancun All Inclusive",
    description:"Looking for a place to stay in Cancun? Then look no further than Fiesta Americana Condesa Cancun All Inclusive, a romantic all-inclusive resort that brings the best of Cancun to your doorstep.
    Fiesta Americana Condesa Cancun All Inclusive is a romantic all-inclusive resort offering a flat screen TV, a minibar, and a refrigerator in the rooms, and it is easy to stay connected during your stay as free internet access is offered to guests.
    The all-inclusive resort features a concierge and room service. Plus, guests can enjoy a pool and free breakfast, which have made this a popular choice among travelers visiting Cancun. For guests with a vehicle, parking is available.
    Avenida Kukulkan (1.6 mi), located nearby, makes Fiesta Americana Condesa Cancun All Inclusive Hotel a great place to stay for those interested in visiting this popular Cancun landmark.",
    services:"Valet parking,Pool,Free internet,Free breakfast,Fitness center,Beach",
    price_nigth:449,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/30/4e/35/pool.jpg?w=1200&h=-1&s=1"
},
{
    name:"Hyatt Ziva Cancun",
    description:"Located on a spectacularly scenic peninsula - surrounded by ocean on three sides - and designed in a tranquil village-like setting, Hyatt Ziva Cancun connects guests to the natural beauty of Cancun's coast with several unexpected delights along the way.",
    services:"Free parking,Pool,Free breakfast,Free High-Speed-internet,Fitness center,Bar",
    price_nigth:679,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/0c/89/9d/fd/pool--v13312004.jpg?w=1200&h=-1&s=1"
},
{
    name:"Live Aqua Beach Resort Cancun",
    description:"Live Aqua Cancun, a welcoming place, where being is the first part of feeling. Your senses work together. It's a prism of colors, eclectic rhythms, and seductive details. Enjoy the fusion of idyllic days and energizing nights. It is a monument to your arrival to this Cancun Spa Resort. This sophisticated beachfront resort lies along white sand beaches, across the street from La Isla Shopping Mall and walking distance from some of the best restaurants and shopping malls in the city. Exotic drinks, barefoot luxury and activities overlooking the resort's 8 infinity pools are just part of the exquisite details within our All Inclusive concept. Music worships you at every step, with changes in rhythms that match the emotions you feel and the space around you. The sound is never the same, but always relaxing, exciting and harmonic. Arriving, leaving, just belonging makes you sigh with peace. The Aqua aroma seeps into every nook and cranny up to the sky, down to the sea. Return to yourself.",
    services:"Free parking,Pool,Free High-Speed-internet,Fitness center,Bar,Beach",
    price_nigth:448,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/1e/56/d0/h-azur-restaurant.jpg?w=1100&h=-1&s=1"
},
{
    name:"Garza Blanca Resort & Spa Cancun",
    description:"Over-the-top amenities are included for everyone, including the state-of-the-art Playroom, complete with bumper cars; a huge variety of upscale dining options and bars, not to mention world-class entertainment and nightlife.",
    services:"Free parking,Pool,Free internet,Fitness center,Bar",
    price_nigth:439,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/0c/15/cd/garza-blanca-cancun.jpg?w=1200&h=-1&s=1"
},
{
    name:"Haven Riviera Cancun",
    description:"Haven Riviera Cancun is an exclusive adults-only, all-suite, all-inclusive beachfront resort. Located 15 min SE of CUN airport, latitude °20.94 -87.30 between Cancun & Playa del Carmen, horizontal beach front hotel design facing the Caribbean Sea. The hotel has 333 units with king size beds, personalized mini-bars and aromatherapy, swim-out rooms, around the clock concierge and room service, 5 restaurants, 2 snack bars, 9 bars including 2 swim-up bars and a full-service spa; offering personalized services and luxurious amenities. The Serenity Club offers beachfront accommodations added VIP amenities, services and facilities.",
    services:"Free parking,Pool,Free internet,Fitness center,Tennis court",
    price_nigth:476,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/16/cd/88/haven-riveria-cancun.jpg?w=1200&h=-1&s=1"
},
{
    name:"Oh! The Urban Oasis",
    description:"The Urban Experience Downtown Cancun Boutique Hotel",
    services:"Free parking,Pool,Free internet,Fitness center,Bar,Nightclub",
    price_nigth:69,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/14/da/e4/9a/oh-the-urban-oasis.jpg?w=1200&h=-1&s=1"
},
{
    name:"Paradisus Cancun",
    description:"Timeless luxury with an avant-garde flair evocative of an ancient Mayan civilization; a 5-star, AAA 4-diamond beachfront resort, voluminous as it is elegant, decadent as it is distinguished. Cancun's five majestic pyramids decorate this timelessly-tropical scene, revealing a backdrop of the Caribbean Sea. Four spectacular pools, luxurious guestrooms, dining and the hotel's renowned YHI Spa, one of the most prestigious in the world, are only a taste of a bold collection of services and amenities offered at this sleek, seductive and luxurious Paradisus Cancun Resort paradise. Positioned, carefully, in Cancun's Hotel Zone, luxury hotel is within 5 minutes from the city's premier shopping centers, 15 minutes from the International Airport, and immediate proximity to the downtown and many exciting entertainment venues. A 9-hole, par 3 executive golf course, three lavish pools, and the signature YHI Spa offer the discerning guest a definitive means to leisure.",
    services:"Free parking,Pool,Free internet,Fitness center,Bar",
    price_nigth:340,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/56/1a/58/paradisus-cancun.jpg?w=1200&h=-1&s=1"
},
{
    name:"Hotel Krystal Cancun",
    description:"The Krystal Cancun offers the best of both worlds. It is in the prime area of Punta Cancun - the heart of the activities and entertainment district of Cancun - yet once you step through our doors, leave the hustle and bustle of the world behind as you relax on our stretch of white sand beach, take a dip in our hotel's panoramic pool, or enjoy a massage at the spa or even better, abandon yourself in our beach bali beds. Everything you could need or want is at your fingertips and our goal is to ensure your ultimate relaxation. Our resort's stunning rooms and suites have been designed for every kind of traveler in mind, from our family rooms, which provides more space, to our ocean view guest rooms, to our suites - including the master and presidential suites which have their own private pools! We'll tantalize your palate with a wide range of cuisines in our three restaurants, cool your thirst at our three bars, ease your wallet with our affordable all-inclusive plan, and even handle all of the details for your meeting, conference, wedding, or group event. When it's time to get away from it all, come to Cancun and let us pamper you at the Krystal Cancun.",
    services:"Free parking,Pool,Free internet,Fitness center,Bar",
    price_nigth:135,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/d3/63/3e/hotel-krystal-cancun.jpg?w=1200&h=-1&s=1"
},
{
    name:"Panama Jack Resorts Cancun",
    description:"Smack center in Cancun’s legendary Hotel Zone, all-inclusive and family-friendly Panama Jack Resorts Cancun is a picture-perfect escape packed with unlimited fun in the sun for guests of all ages. With sun-kissed swimming pools and fun daily doings ranging from beachfront yoga to culinary classes and live music, each carefree day promises new adventures and unexpected delights.",
    services:"Free parking,Pool,Free internet,Fitness center,Bar",
    price_nigth:260,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/45/0a/ab/exterior.jpg?w=1200&h=-1&s=1"
},
{
    name:"Hard Rock Hotel Cancun",
    description:"Hard Rock Hotel Cancun- Where Stage Front meets Beach Front At our unique Cancun beach resort, we've created the ultimate beachfront celebrity playground and transformed the typical All Inclusive vacation into a rock star paradise, which reflects our Mexican setting and cosmopolitan flair. Located in the heart of Cancun's hotel zone, Hard Rock Hotel Cancun boasts unmatched, all-inclusive luxury accommodations including in-room hydro spa tub, fine dining at, top-shelf drinks, 24-hour room service, live entertainment and more. The beachfront property also features Hard Rock's signature Rock Star Suite and showcases an extensive collection of authentic memorabilia from international and local music artists. There are no limits at our All Inclusive Cancun resort. Go on a world tour with the internationally inspired restaurants of the Hard Rock Hotel Cancun. Give meetings the rock star treatment. Plan the ultimate celebrity-style wedding. Rock out at the beach or the luxurious pool area with swim up bars. Indulge in a glorious spa day. The Hard Rock Hotel Cancun truly has something for everyone.",
    services:"Free parking,Pool,Free internet,Fitness center,Tennis court",
    price_nigth:476,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/de/e5/04/hrhcancun-main-pool-v.jpg?w=1200&h=-1&s=1"
},
{
    name:"NIZUC Resort and Spa",
    description:"NIZUC Resort & Spa provides an escape like no other on Mexico’s stunning Caribbean coast. Offering subdued extravagance and an unsurpassed level of service, NIZUC is the ultimate place to take in the sun, sand, sea, and tranquility of one of the world’s most coveted destinations.The luxurious new resort is located at the gateway of the Riviera Maya in beautiful Punta Nizuc with two exclusive beaches, lavish spa, six gourmet restaurants, deluxe conference and events center, a kids club and sumptuous accommodations throughout its 274 private suites and villas. Harmoniously blending cutting-edge architectural design with barefoot luxury, the resort is the epitome of relaxed elegance. Positioned on a lush 29-acre nature preserve, NIZUC is surrounded by rich tropical foliage, a flourishing coral reef, and serene waterways that add to its mystic ambiance. A wide variety of outdoor activities on or near the resort include snorkeling, scuba diving, fishing, and world-class golfing.",
    services:"Free parking,Pool,Free internet,Fitness center,Bar",
    price_nigth:652,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/11/61/47/lobby-view.jpg?w=1100&h=-1&s=1"
},
{
    name:"Emporio Cancun",
    description:"Located on Cancun's tranquil south shore, ten minutes from the airport, this luxury all-inclusive resort offers more than 1,000 accommodations offering double whirlpool tubs, 24-hour room service, top-shelf drinks, free WIFI, CHI-branded amenities, aromatherapy and pillow menus, and complimentary calls to Continental US, Canada, and landlines in Mexico.",
    services:"Free parking,Pool,Free internet,Fitness center,Snorkeling",
    price_nigth:115,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/da/2a/2e/photo3jpg.jpg?w=1200&h=-1&s=1"
},
{
    name:"Canopy by Hilton Cancun La Isla",
    description:"Nestled within the newest retail complex in Cancun, Canopy Cancun La Isla is strategically located, with accessibility from the busy Kukulcan Boulevard and La Isla Paraiso. A new, urban hotel beside the Nichupte Bay in Cancun’s Hotel Zone, guests will enjoy being steps from some of the area’s best shopping, restaurants and white sand beaches. When you’re ready to travel again and experience the beauty of the Caribbean, we’ll be ready to welcome you with Hilton CleanStay™ , our safety and cleaning program with the highest standards you can trust.",
    services:"Free parking,Pool,Free internet,Fitness center,Bar",
    price_nigth:230,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/ab/d6/77/pool.jpg?w=1100&h=-1&s=1"
},
{
    name:"Villa Del Palmar Cancun",
    description:"Villa del Palmar Cancun beach resort is an unparalleled Mexican oasis for both room only and all inclusive vacations in Mexico, offering a best price guarantee. Delighting visitors of all ages seeking the ultimate in relaxation, luxury accommodations and gourmet cuisine, you can be sure to enjoy fabulous experiences at this Cancun all inclusive resort.",
    services:"Free parking,Pool,Free internet,Fitness center,Bar,Canoeing",
    price_nigth:169,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/0c/03/13/villa-del-palmar-cancun.jpg?w=1200&h=-1&s=1"
},
{
    name:"Royal Solaris Cancun",
    description:"Royal Solaris Cancun is a magnificent family all inclusive resort with 300 rooms, overlooking the Nichupte lagoon or the Caribbean Sea, in a complex that has a unique pyramidal structure. Enjoy all the entertainment with daily activities and nightly show for you. Children also have a special place for fun in our Baby Park, Mini Club and Mini Water Park, supervised by our staff. Rooms features two double beds or one king size bed and lounging areas. Oceanfront pool complex divided into 3 sections. Private marina with non-motorized water sports. Free Wi -Fi, Lagoon view fitness center, Oceanfront outdoor jacuzzis, Hospitality room available for early check-in and late check-out. 24 hours- Room service. The hotel will charge an additional fee of $25.35 MXN (Mexican pesos) per room, per night. This is a municipal tax due to environment sanitation.",
    services:"Free parking,Pool,Free internet,Fitness center,Bar",
    price_nigth:200,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/5f/48/ba/royal-solaris-cancun.jpg?w=1200&h=-1&s=1"
},
{
    name:"The Westin Lagunamar Ocean Resort Villas & Spa",
    description:"The Westin Lagunamar Ocean Resort Villas & Spa, Cancun is located directly on a white sandy beach in Zona Hotelera, in Cancun, Mexico. Our resort offers spacious one and two-bedroom villas that comfortably accommodate up to eight adults in as much as 1,140 square feet. Each villa features fully equipped kitchens, washers and dryers, generous living and dining areas, and complimentary Wi-Fi, in a perfect setting in the Hotel Zone on Mexico's Costa del Sol.",
    services:"Free parking,Pool,Free internet,Fitness center,Bar",
    price_nigth:351,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/21/2e/a6/exterior.jpg?w=1200&h=-1&s=1"
},
{
    name:"Fairfield Inn & Suites Cancun Airport",
    description:"With the added indulgences of an Awe Spa® for hard-core pampering, an incredible Bowling Alley, and the Jack Nicklaus Signature Golf Course within nearby reach, it has endless options for wholehearted enjoyment, and much more.",
    services:"Free parking,Pool,Free internet,Fitness center,Bar",
    price_nigth:90,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1c/de/e6/8e/exterior.jpg?w=1200&h=-1&s=1"
},
{
    name:"Hotel Flamingo Cancun Resort",
    description:"“We get to know you” A great destiny in the mexican caribbean, “Cancun.” Only 20 minutes away from downtown and from the Cancun International Airport, and close to all the incredible attractions offered by this remarkable paradise. If you are looking for location, quality service, and an excellent all inclusive program. Flamingo Cancun Hotel is “The place”.",
    services:"Free parking,Pool,Free internet,Fitness center,Bar",
    price_nigth:105,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/41/f1/74/vista-panoramica-de-playa.jpg?w=1200&h=-1&s=1"
},
{
    name:"Comfort Inn Cancun Aeropuerto",
    description:"Comfort Inn Cancun Aeropuerto is an excellent choice for travelers visiting Cancun, offering a quiet environment alongside many helpful amenities designed to enhance your stay.
    Guest rooms offer a flat screen TV and air conditioning, and Comfort Inn Cancun Aeropuerto Hotel makes getting online easy as free internet access is available.
    You can also take advantage of some of the amenities offered by the hotel, including a 24 hour front desk and a coffee shop. In addition, guests can enjoy free breakfast during their visit. As an added convenience, there is free parking available to guests.
    Plus, during your trip, don’t forget to check out some of the popular parks, such as Tres Rios Ecopark, arte Garden, and Endless Travelers.
    Enjoy your stay in Cancun!",
    services:"Free parking,Free breakfast,Wifi",
    price_nigth:38,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1a/1b/53/80/guest-room-with-king.jpg?w=1200&h=-1&s=1"
},
{
    name:"The Ritz-Carlton, Cancun",
    description:"Considered one of the most elegant resorts in the world, The Ritz-Carlton, Cancun, reflects Mexico's rich architectural heritage in an atmosphere of magnificent sophistication. Minutes from many lively and leisurely attractions and situated ideally on a pristine strip of Mayan coastline, our 5-star Cancun luxury hotel resort features 363 guestrooms overlooking the sea in the popular hotel zone, and we feature a 1,200-foot beach, sculpted outdoor swimming pools, a full service Spa, an impressive Culinary Center and award winning restaurants.",
    services:"Free parking,Pool,Free internet,Fitness center,Bar",
    price_nigth:1461,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1d/21/36/10/exterior.jpg?w=1200&h=-1&s=1"
},
{
    name:"GR Caribe by Solaris",
    description:"GR Caribe by Solaris, Deluxe All Inclusive Resort, features a unique and elegant Mediterranean architecture, stylish interiors in a casual and relaxed atmosphere. A Luxury family friendly resort that has it all. The property features 200 luxurious guestrooms and suites, most of them with breathtaking ocean or lagoon views. Imported drinks and use of all facilities and services of sister resort Royal Solaris Cancun (located next door).This private resort is unique in its kind in all Cancun and the Mexican Caribbean. A Luxury family friendly resort that has it all. Free Wi-Fi. The hotel will charge an additional fee of $25.35 MXN (Mexican pesos) per room, per night. This is a municipal tax due to environment sanitation.",
    services:"Free parking,Pool,Free internet,Fitness center,Bar",
    price_nigth:361,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/16/5f/72/35/gr-caribe-by-solaris.jpg?w=1200&h=-1&s=1"
},
{
    name:"Cancun Bay Resort",
    description:"ALL INCLUSIVE beachfront hotel. Cancun Bay Resort is located at kilometer 3.5 from Cancun Hotel Zone on Linda Beach, is within 5 minutes to downtown with endless entertainment options to get fun as a Shopping Malls, specialty Restaurants, Night Clubs and just 25 minutes from Cancun International Airport. The hotel has a recent renovation that offers a new minimalist image, with 132 rooms with a fresh and fun deco, with the All-Inclusive program our guests will be able to enjoy our two bars and our wide gastronomic variety in our main restaurant El Faisan (air-conditioned), our snack bar La Pina Colada, our Sushi Bar or La Trattoria or booking a romantic candlelight dinner (extra charge). Among our facilities and services we have two swimming pools; one of them recently renovated with a top-of-the-line coating and avant-garde lighting, the second with a spectacular view of the caribbean sea with wading pool and jacuzzi for adults only; massage area (with extra charge), wireless internet in common areas free of charge, ping pong table, pool table, reading area, free parking, ATM (dollars), concierge desk and new ballroom with 183m2 with capability up to 200 people and split into three break outs (extra charge).",
    services:"Free parking,Pool,Free internet,Fitness center,Bar",
    price_nigth:280,
    img_url:"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/04/ca/6c/b2/cancun-bay-resort.jpg?w=1200&h=-1&s=1"
},
])
