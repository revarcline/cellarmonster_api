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
             'Gruner Veltliner', 'Albarino']

countries = ['United States', 'France', 'Italy', 'Austria', 'Germany',
             'Argentina', 'South Africa', 'Chile', 'Urugay', 'Australia',
             'New Zealand', 'Spain', 'Greece', 'Lebanon']

bottles = [
  { name: 'margeaux' }
]

varietals.each { |varietal| Varietal.find_or_create_by(name: varietal) }
countries.each { |country| Country.find_or_create_by(name: country) }

('a'..'z').each do |letter|
  (1..9).each do |number|
    Bin.find_or_create_by(location: "#{letter}#{number}")
  end
end

bottles.each do |bottle|
  Bottle.create(
    name: bottle.name,
    sparkling: bottle.sparkling,
    appellation: bottle.appellation,
    color: bottle.color,
    price: bottle.price,
    vintage: bottle.vintage,
    notes: bottle.notes,
    varietals: bottle.varietals.each { |varietal| Varietal.find_or_create_by(name: varietal) },
    bins: bottle.bins.each { |bin| Bin.find_by(name: bin) },
    country: Country.find_or_create_by(name: bottle.country),
    producer: Producer.find_or_create_by(producer: bottle.producer)
  )
end
