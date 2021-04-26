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

varietals.each { |varietal| Varietal.find_or_create_by(varietal) }
countries.each { |country| Country.find_or_create_by(country) }

('a'..'z').each do |letter|
  (1..9).each do |number|
    Bin.find_or_create_by(location: "#{letter}#{number}")
  end
end
