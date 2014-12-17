# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Setting.create([{ production_email: 'inquiries@cebucondolistings.com'}])

Location.create([{ area: 'Cebu I.T. Park' },{ area: 'Lahug' },{ area: 'Capitol' }, { area: 'Fuente Osmena'}, { area: 'Mabolo'}, { area: 'Cebu Business Park'}, { area: 'Lapu-lapu City'}, { area: 'Guadalupe'}])

PriceRange.create([{ range:  '500,000 - 1,000,000',   value_from:   500000, value_to: 1000000 }])
PriceRange.create([{ range: '1,00,000 - 2,000,000',   value_from: 1000000,  value_to: 2000000 }])
PriceRange.create([{ range: '2,00,000 - 3,000,000',   value_from: 2000000,  value_to: 3000000 }])
PriceRange.create([{ range: 'More than 10,000,000',   value_from: 1000000,  value_to: 100000000 }])
PriceRange.create([{ range: '4,000,000 - 5,000,000',  value_from: 400000,   value_to: 5000000 }])
PriceRange.create([{ range: '5,000,000 - 10,000,000', value_from: 500000,   value_to: 10000000 }])

Developer.create([{ developer: 'Ayala Land, Inc.',                  permalink: 'ayala-land'   }])
Developer.create([{ developer: 'Primary Homes, Inc.',               permalink: 'primary-homes'}])
Developer.create([{ developer: 'Myvan Properties',                  permalink: 'myvan-properties'}])
Developer.create([{ developer: "Fuente Triangle Dev't Corp.",       permalink: 'fuente-triangle'}])
Developer.create([{ developer: 'Filinvest Land, Inc.', 	            permalink: 'filinvest'}])
Developer.create([{ developer: 'Cebu Landmasters Inc.',             permalink: 'cebu-landmasters'}])
Developer.create([{ developer: 'Cebu Green Peaks Development Inc.', permalink: 'cebu-green-peaks'}])
Developer.create([{ developer: 'Majestic Legacy Development Corp.', permalink: 'majestic-legacy'}])    


Property.create([{ developer_id: 1,
                   name: 'Avida Towers',
                   permalink: 'avida',
                   address: 'Cebu I.T. Park<br>Apas, Lahug<br>Cebu City',
                   location: 'Cebu I.T. Park',
                   completed: false,
                   target_completion_date: '3rd Quarter 2013',
                   description: 'The project is located within Asiatown IT Park, an integrated special economic zone and modern trading center in Cebu City. This connects to major thoroughfares that lead to the Mactan International Airport and Cebu International Port. It has easy access to shopping areas, restaurants, schools, hotels, hospitals, churches, and golf courses.',
                   studio: true,
                   one_bedroom: true,
                   two_bedroom: true,
                   three_bedroom: false,
                   penthouse: false,
                   loft: false,
                   studio_size: '22 sq. m.',
                   one_bedroom_size: '36 sq. m.',
                   two_bedroom_size: '52 sq. m.',
                   studio_price: "1,584,000",
                   one_bedroom_price: "2,355,000",
                   two_bedroom_price: "3,845,000",
                   amenities: "<ul><li>Adult & Kiddie Swimming Pool (200 capacity)</li><li>Clubhouse with Function hall for 150 guests</li><li>Children's Play Area</li><li>Outdoor Gym</li><li>Garden Area (maximized green area and open spaces)</li></ul>
  features: <ul><li>Main lobby for each building</li><li>Three Elevator units</li><li>Admin room</li><li>Utility room</li><li>Emergency power</li><li>Garbage Chute/ room per level</li><li>Fire protection/ fire alarm system</li><li>Mailbox per unit located at the lobby</li><li>Units are electricity, telephone, cable television & internet ready</li><li>Transformer Vault & Genset Room to be located at the ground floor level</li></ul>",
                   unit_specifications: "<ul><li>Flooring - vinyl planks,ceramic tiles</li><li>Aluminum windows</li><li>Unit partitions (CHB - walls painted)</li><li>Interior - (gypsum board painted)</li><li>Complete kitchen, countertop, fixtures, overhead and undersink cabinets, greasetrap</li><li>Note - Complete toilet and bath fixtures for 2 bedroom units ONLY.</li></ul>",
                   featured: true,
                   hidden: false},
                 { developer_id: 2,
                   name: 'Avalon',
                   permalink: 'avalon',
                   address: 'Cebu Business Park',
                   location:'Cebu Business Park',
                   completed: false,
                   description: "Avalon is a 19-storey condominium consisting of 200 units with Modern-Asian architecture. It features first-class amenities to suit those meticulous in taste and will provide utter respite for a fast-paced lifestyle.<br>The name Avalon is derived from the mythical legend of King Arthur. It was a retirement island reserved for a royalty. And with that saying, this upcoming high-end residential address is exclusive for those who deserve a home spelled as luxurious elegance.<br>But the best thing about Avalon, it awards the chosen few to rightfully own a residential property remarkably valued as a crown jewel. Being located in one of the most prime locations of the metropolis, the overall value of the estate increases through time. And so will your investment yield more returns.",
                   studio: false,
                   one_bedroom: true,
                   two_bedroom: true,
                   three_bedroom: true,
                   penthouse: true,
                   one_bedroom_size: '60 sq. m.',
                   two_bedroom_size: '89 sq. m.',
                   three_bedroom_size: '125 sq. m.',
                   penthouse_size: '230 sq. m.',
                   one_bedroom_price: "5,800,000",
                   two_bedroom_price: "8,500,000",
                   three_bedroom_price: "12,000,000",
                   penthouse_price: "23,0000,000",
                   amenities: "<ul><li>Adult and kiddie swimming pools</li><li>Main lobby and Reception area</li><li>High-speed passenger elevator units</li><li>1 Heavy-duty service elevator unit</li><li>Top of the line fire alarm and sprinkler systems with fire exits</li><li>24/7 Security and Closed Circuit Television (CCTV) systems</li><li>100% Back-up power generation</li><li>Centrally located garbage system per floor</li><li>Individual mailbox for each unit</li><li>Function rooms</li><li>Business center</li><li>Fitness gym and Sauna</li><li>Landscaped gardens</li><li>Daycare center</li><li>Perimeter fence</li><li>4 Levels of basement parking and visitors parking slots</li></ul>",
                    unit_specifications: "<ul><li>Partitions</li><li>Painted interiors</li><li>Engineered wood (HDF) for bedrooms</li><li>High-quality ceramic tiles (living, dining and kitchen areas)</li><li>Kitchen cabinets</li><li>Shower enclosure</li><li>Provisions for air conditioning unit</li><li>Tiled toilet and bath with bathroom fixtures</li><li>Hot water provision</li><li>Bathtub (except for one bedroom unit)</li><li>Telephone, cable/HDTV, WiFi ready</li><li>Servant's quarter or service area</li></ul>",
                    payment_terms: "<ol><li>Spot cash (net of 10% disc)</li><li>Defered Cash (0% for 12 month amort w 3% disc)</li><li>30% down, 70% bal(0% for 18 months)</li><li>40% down, 60% bal(0% for 18 months)</li><li>50% down, 50% bal(0% for 18 months)</li><li>30% down (0% for 12 months), 70% bal in-house financing(12% pa)</li></ol>",
                    featured: true,
                    hidden: false },
                  { developer_id: 2,
                    name: "La Guardia Flats 1",
                    permalink: "la-guardia1",
                    address: "AsiatownLa Guardia<br>Lahug, Cebu City",
                    location: "Cebu I.T. Park",
                    completed: true,
                    target_completion_date: "1st Quarter of 2011",
                    description: "La Guardia Flats I is a 14-storey condominium with over 250 units. Featuring modular design to cater different tastes, each unit can be expanded to freely allow buyers a wider space. A private balcony is also included with a view of the landscaped open inner court, the hills and the city.<br>Less than 10 minutes away from Asiatown I.T. Park, the development is also in close proximity to famous landmarks such as schools, hotel, malls and recreational centers.<br>Convenient and affordable luxury, that is La Guardia Flats I.",
                    studio: true,
                    one_bedroom: false,
                    two_bedroom: false,
                    three_bedroom: false,
                    penthouse: false,
                    loft: false,
                    studio_size: '22 sq. m.',
                    studio_price: "1,500,000",
                    amenities: "<ul><li>Lobby and reception area</li><li>Two elevator units</li><li>Indoor parking area</li><li>Open interior court</li><li>Roof deck</li><li>Fire alarm and sprinkler system with fire exits</li><li>CCTV System</li><li>Commercial area for cafeteria, laundry service and internet cafe</li></ul>",
                    unit_specifications: "<ul><li>Finished walls and floors</li><li>Tiled toilet and bath with bathroom fixtures</li><li>Separate toilet and bath</li><li>Private balcony</li></ul>",
                    payment_terms: "<ol><li>Spot cash (net of 12% disc)</li><li>Defered Cash (0% for 12 month amort w 3% disc)</li><li>30% down, 70% bal(0% for 18 months)</li><li>40% down, 60% bal(0% for 18 months)</li><li>50% down, 50% bal(0% for 18 months)</li><li>30% down (0% for 12 months), 70% bal in-house financing(12% pa)</li></ol>",
                    hidden: false },
                  { developer_id: 2,
                    name: "La Guardia Flats 2",
                    permalink: "la-guardia2",
                    address: "1st Street La Guardia,<br>Lahug, Cebu City",
                    location: "Cebu I.T. Park",
                    completed: true,
                    target_completion_date: "2nd Quarter of 2012",
                    description: "La Guardia Flats II is a testament to the success of the first tower. Because of the unprecedented response, management decided to come up with a sequel equipped with better features.<br>Still composed of 14 floors, this condominium offers over 200 studio units that are modular in design. Perfect for young professionals, it allows a wider market to own a home located in an address that will let one just easily drive around the metropolis in a short span of time. Not to mention, ideal for those who plan to enter the booming rental business.<br>With what La Guardia Flats II has to offer, it is definitely a worthwhile investment.",
                    studio: true,
                    one_bedroom: false,
                    two_bedroom: false,
                    three_bedroom: false,
                    penthouse: false,
                    loft: false,
                    studio_size: '22 sq. m.',
                    studio_price: "1,500,000",
                    amenities: "<ul><li>Lobby and Reception area</li><li>Two elevator units</li><li>Indoor parking area</li><li>Viewing roofdeck</li><li>Fire alarm and sprinkler system</li><li>CCTV system</li><li>Commercial area for convenience shop, laundry service and internet cafe</li></ul>",
                    unit_specifications: "<ul><li>Finished walls and floors</li><li>Tiled toilet and bath with bathroom fixtures</li><li>Separate toilet and bath</li><li>Private balcony</li></ul>",
                    payment_terms: "<ol><li>Spot cash (net of 12% disc)</li><li>Defered Cash (0% for 12 month amort w 3% disc)</li><li>30% down, 70% bal(0% for 18 months)</li><li>40% down, 60% bal(0% for 18 months)</li><li>50% down, 50% bal(0% for 18 months)</li><li>30% down (0% for 12 months), 70% bal in-house financing(12% pa)</li></ol>",
                    hidden: false },
                  { developer_id: 2,
                    name: 'Woodcrest Residences',
                    permalink: 'woodcrest',
                    address: 'Don Quijada Street,<br>Guadalupe, Cebu City',
                    location: 'Guadalupe',
                    completed: true,
                    target_completion_date: "February 2011",
                    description: "Woodcrest Residences features premium quality units that redefines the meaning of clean city living. Nestled in the serene nook of Guadalupe, it casts harmony between your dynamic lifestyle and your pursuit to gracious living and comfort in a well-planned, mid-rise residential condominium.<br>A home at this condominium project lets you experience the benefits of architectural ingenuity in the maximization of surrounding natural elements. Breathe in fresh air, and enjoy the lush view of the outdoors from the generous bliss of spacious corridors or revel on it all from your private balcony.<br>Woodcrest Residences is more than just a space for rest at the end of each day, it's an experience of living life in a home that's complete with convenience that work around your lifestyle. More importantly, it's a place you can truly call your own.",
                    studio: true,
                    one_bedroom: true,
                    two_bedroom: true,
                    three_bedroom: false,
                    penthouse: false,
                    loft: true,
                    studio_size: '32 sq. m.',
                    one_bedroom_size: '40 sq. m.',
                    two_bedroom_size: '63 sq. m.', 
                    loft_size: '122 sq. m.',
                    studio_price: "2,200,000",
                    one_bedroom_price: "2,800,000",
                    two_bedroom_price: "4,700,000",
                    loft_price: "8,700,000",
                    amenities: "<ul><li>Grand entrance gate and guardhouse</li><li>Clubhouse with functional rooms</li><li>Swimming pool with kid's wading pool</li><li>Fitness gym</li><li>Manicured gardens and strolling lane</li><li>Overhead water tank</li><li>Underground electrical and telephone system</li><li>Waste water treatment facility</li><li>Perimeter fence</li><li>Main lobby and Reception area</li><li>Two elevator units</li><li>Multi-level parking area</li><li>Mailbox for each unit located at the main lobby</li><li>Garbage chute</li><li>Fire alarm and sprinkler system with fire exits</li><li>Standby generator set for selected outlets</li><li>Telephone, cable and internet ready</li><li>Closed circuit television (CCTV)</li></ul>",
                    unit_specifications: "<ul><li>Painted walls, partitions and ceiling</li><li>Tiled floors</li><li>Tiled toilet and bath with bathroom fixtures</li><li>Electrical provision for water heater for all showers</li><li>Bedroom closets</li><li>Kitchen sink, counter top and cabinets</li><li>Private balconies</li><li>Service area with washing machine and dryer</li><li>Provision for aircon openings and outlets</li><li>Individual porches for privacy and convenience</li></ul>
  payment_terms: <ol><li>Spot cash (net of 12% disc)</li><li>Defered Cash (0% for 12 month amort w 3% disc)</li><li>30% down, 70% bal(0% for 18 months)</li><li>40% down, 60% bal(0% for 18 months)</li><li>50% down, 50% bal(0% for 18 months)</li><li>30% down (0% for 12 months), 70% bal in-house financing(12% pa)<li></ol>",
                     hidden: false },
                    { developer_id: 5,
                      name: 'One Oasis',
                      permalink: 'one-oasis',
                      address: "Brgy. Mabolo, Cebu City",
                      location: "Mabolo",
                      completed: false,
                      studio: true,
                      one_bedroom: true,
                      two_bedroom: true,
                      three_bedroom: false,
                      penthouse: false,
                      loft: false,
                      studio_size: '22 sq. m.',
                      one_bedroom_size: '34.54 sq. m.',
                      two_bedroom_size: '38.38 sq. m.',
                      studio_price: "1,379,000",
                      one_bedroom_price: "2,333,000",
                      two_bedroom_price: "2,383,000",
                      amenities: "<ul><li>Multi-purpose clubhouse</li><li>Adult and kiddie pools</li><li>Basketball court</li></ul>",
                      features: "<ul><li>Resort-inspired landscaping</li><li>Exclusive entrance gate</li><li>24 hour security</li></ul>",
                      hidden: false }])

