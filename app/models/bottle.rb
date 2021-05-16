class Bottle < ApplicationRecord
  include PgSearch::Model
  multisearchable against: %i[name appellation color price vintage notes sku region format price]
  belongs_to :country
  belongs_to :producer
  has_and_belongs_to_many :varietals
  has_and_belongs_to_many :bins
  has_many :orders, dependent: :destroy
  has_many :users, through: :orders
  accepts_nested_attributes_for :country, :producer, :varietals, :bins

  def new_country=(country_name)
    return if country_name == ''

    new = Country.find_or_create_by(name: country_name)
    update(country: new)
  end

  def new_producer=(producer_name)
    return if producer_name == ''

    new = Producer.find_or_create_by(name: producer_name)
    update(producer: new)
  end

  def new_varietal=(varietal_names)
    return if varietal_names == ''

    new_varietals = varietal_names.split(',').map(&:strip)
    new_varietals.each do |varietal|
      new = Producer.find_or_create_by(name: varietal)
      update(varietals: varietals.concat(new))
    end
  end
end
