# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

varietals = ['Chardonnay', 'Cabernet Sauvignon', 'Cabernet Franc', 'Merlot',
             'Grenache', 'Syrah', 'Mouvedre', 'Malbec', 'Sauvignon Blanc',
             'Pinot Noir', 'Pinot Gris', 'Syrah', 'Zinfandel', 'Viognier',
             'Riesling', 'Sangiovese', 'Tempranillo', 'Petite Sirah',
             'Nebbiolo', 'Gamay', 'Cinsault', 'Semillon', 'Chenin Blanc',
             'Gruner Veltliner', 'Albarino', 'Carignan']

countries = ['United States', 'France', 'Italy', 'Austria', 'Germany',
             'Argentina', 'South Africa', 'Chile', 'Urugay', 'Australia',
             'New Zealand', 'Spain', 'Greece', 'Lebanon', 'Portugal', 'Croatia']

bottles = [
  {
    name: 'Cristal Rosé',
    sparkling: true,
    color: 'Rosé',
    appellation: 'Champagne',
    region: 'Champagne',
    price: '500.00',
    vintage: 2012,
    notes: "Already upon launch this rosé shows rare harmony and seamlessness. It is opulently fruity and exuberantly Pinot-packed yet at the same time seductively silky-textured. The voluminous palate is perfectly integrated to the wine's superb freshness that carries it to a great length. Structured whilst soft and comes with Cristal Rosé's hallmark elegance and radiance. Highly enjoyable already but with great long-term ageing capacity. A perfect reflection of the vintage's best qualities.",
    varietals: ['Pinot Noir', 'Chardonnay'],
    bins: %w[b3 b4],
    inventory: 12,
    country: 'France',
    producer: 'Louis Roederer',
    format: '750 mL'
  },
  {
    name: 'Chateau Musar Red',
    sparkling: false,
    color: 'Red',
    appellation: 'Bekaa Valley',
    region: 'Bekaa Valley',
    price: '250.00',
    vintage: 2000,
    notes: 'The colour is a deep dark red, perhaps darker than usual at Chateau Musar.  The nose is a complex intriguing mixture of figs, prunes, leather, dark tea, tobacco, black olives with spices and a certain earthiness.  On the palate, you will find ripe black cherries, figs, damsons-even chocolate and olives.  There is good acidity with nice smooth tannins resulting in a wine which full-bodied, rich and velvety with very long length.',
    varietals: ['Cabernet Sauvignon', 'Cinsault', 'Carignan'],
    bins: %w[s2],
    inventory: 2,
    country: 'Lebanon',
    producer: 'Chateau Musar',
    format: '750 mL'
  },
  {
    name: "'Le Mont' Premiere Trie Moelleux",
    sparkling: false,
    color: 'White',
    appellation: 'Vouvray',
    region: 'Loire',
    price: '115.00',
    vintage: 2005,
    notes: "Medium gold. Very ripe and intense with lots of dried apricot, raisins, grilled cashews and \"wet wool\" character. Full, rich with acidity and sweetness both feeling reduced and knit together, resulting a very good texture and smoothness. Not as long as I 'd expect though. Although I do like the texture created by the balance of richness, sugar and acid, I do also believe further acidity will give it at least another decade to develop.",
    varietals: ['Chenin Blanc'],
    bins: %w[x7],
    inventory: 4,
    country: 'France',
    producer: 'Domaine Huet',
    format: '750 mL'
  },
  {
    name: 'Louis Jadot Gevrey-Chambertain',
    sparkling: false,
    color: 'Red',
    appellation: 'Gevrey-Chambertain',
    region: 'Burgundy',
    price: '40.00',
    vintage: 2015,
    notes: 'Showing the energy and powerful "grace" of the commune, this 100% Pinot Noir is steely and edgy with teeth-gripping chalkiness. High-toned blueberry and rhubarb take on sturdy tannins, but the wine’s juicy nature and top-of-palate acidity keeps everything in check.',
    varietals: ['Pinot Noir'],
    bins: %w[g3 g4],
    inventory: 11,
    country: 'France',
    producer: 'Louis Jadot',
    format: '375 mL'
  },
  {
    name: 'Chateau de Beaucastel',
    sparkling: false,
    color: 'Red',
    appellation: 'Chatauneuf-du-Pape',
    region: 'Rhone',
    price: '150.00',
    vintage: 2010,
    notes: 'Dark, dense and very closed now, this has a tremendous core of crushed plum, linzer torte and blackberry confiture waiting in reserve. Ample singed cedar and mesquite, warm paving stone and black tea notes lurk in the background and glide through the finish. Features serious grip, but wonderful integration. Should cruise in the cellar. Best from 2016 through 2035.',
    varietals: %w[Grenache Syrah Mouvedre],
    bins: %w[d4],
    inventory: 5,
    country: 'France',
    producer: 'Perrin et Fils',
    format: '750 mL'
  },
  {
    name: "'Heredad' Brut Reserva",
    sparkling: true,
    color: 'White',
    appellation: 'Cava',
    region: nil,
    price: '60.00',
    vintage: nil,
    notes: 'The opening aromas are lightly smokey with touches of biscuit or bread and followed by hints of honey, fruit and flower petals. The palate is fruity and full of flavor, with dried fruits delivering a delightful sense of abundance.',
    varietals: ['Macabeo', 'Xarel·lo', 'Parellada'],
    bins: %w[h1 h2 h3],
    inventory: 9,
    country: 'Spain',
    producer: 'Segura Viudas',
    format: '1.5 L'
  },
  {
    name: 'Old Vines',
    sparkling: false,
    color: 'Red',
    appellation: nil,
    region: 'California',
    price: '70.00',
    vintage: 2016,
    notes: "Turley's 2016 Zinfandel Old Vines screams with varietal character. Succulent dark cherry, leather, tobacco, sage, menthol and crushed flowers give the 2016 myriad shades of dimension. This plump, supple Zinfandel offers considerable near and medium-term appeal.",
    varietals: %w[Zinfandel],
    bins: %w[c8 c9],
    inventory: 8,
    country: 'United States',
    producer: 'Turley',
    format: '750 mL'
  },
  {
    name: 'Dion Vineyard',
    sparkling: false,
    color: 'White',
    appellation: 'Wilamette Valley',
    region: 'Oregon',
    price: '45.00',
    vintage: 2016,
    notes: "You'll still find the traditional fruity flavors of Pinot Gris like lemon, yellow apple, and white peach but you'll enjoy a unique earthiness from the extended skin contact.",
    varietals: ['Pinot Gris'],
    bins: %w[d1 d2 d3],
    inventory: 14,
    country: 'United States',
    producer: 'James Rahn',
    format: '750 mL'
  },
  {
    name: '1er Grand Cru Classe',
    sparkling: false,
    color: 'Red',
    appellation: 'Margeaux',
    region: 'Bordeaux',
    price: '435.00',
    vintage: 2014,
    notes: 'A valentine of dark chocolate and roses melded with the aromatics of licorice, blackberry and cocoa create a complex perfume. The wine is elegant with a refined character, supple tannins and a burst of fresh cassis, cherry and cocoa that builds on the palate. The most striking quality to this wine is the clarity of fruit in the finish. While this vintage lacks the weight and density found in vintages like 2009 and 2010, the length is quite similar. Produced from a blend of 90% Cabernet Sauvignon, 5% Merlot, 3% Cabernet Franc and 2% Petit Verdot, the wine reached 13.2% alcohol with a pH of 3.68. This represents 36% of the harvest',
    varietals: ['Cabernet Sauvignon', 'Merlot', 'Cabernet Franc', 'Petit Verdot'],
    bins: %w[f4],
    inventory: 3,
    country: 'France',
    producer: 'Chateaux Margeaux',
    format: '750 mL'
  },
  {
    name: 'Broadbent Gruner Veltliner',
    sparkling: false,
    color: 'White',
    appellation: nil,
    region: nil,
    price: '30.00',
    vintage: 2019,
    notes: 'A juicy white wine, with plenty of lime, peach and green apple flavors...elegant and delicious.',
    varietals: ['Gruner Veltliner'],
    bins: %w[h1 h2],
    inventory: 7,
    country: 'Austria',
    producer: 'Broadbent',
    format: '1 L'
  }
]

users = [
  {
    name: 'Admin',
    role: 'admin',
    email: 'admin@example.com',
    password: 'password'
  },
  {
    name: 'Server One',
    role: 'server',
    email: 'server_one@example.com',
    password: 'password'
  },
  {
    name: 'Server Two',
    role: 'server',
    email: 'server_two@example.com',
    password: 'password'
  },
  {
    name: 'Runner',
    role: 'runner',
    email: 'runner@example.com',
    password: 'password'
  }
]

users.each { |user| User.create(user) }

varietals.each { |varietal| Varietal.find_or_create_by(name: varietal) }
countries.each { |country| Country.find_or_create_by(name: country) }

('a'..'z').each do |letter|
  (1..9).each do |number|
    Bin.find_or_create_by(name: "#{letter}#{number}")
  end
end

bottles.each do |bottle|
  Bottle.create(
    name: bottle[:name],
    sparkling: bottle[:sparkling],
    appellation: bottle[:appellation],
    region: bottle[:region],
    color: bottle[:color],
    price: bottle[:price],
    vintage: bottle[:vintage],
    notes: bottle[:notes],
    varietals: bottle[:varietals].map { |varietal| Varietal.find_or_create_by(name: varietal) },
    bins: bottle[:bins].map { |bin| Bin.find_or_create_by(name: bin) },
    inventory: bottle[:inventory],
    country: Country.find_or_create_by(name: bottle[:country]),
    producer: Producer.find_or_create_by(name: bottle[:producer]),
    format: bottle[:format],
    sku: rand(10_000..99_999)
  )
end
