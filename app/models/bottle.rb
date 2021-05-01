class Bottle < ApplicationRecord
  include PgSearch::Model
  multisearchable against: %i[name appellation color price vintage notes sku region format price]
  belongs_to :country
  belongs_to :producer
  has_and_belongs_to_many :varietals
  has_and_belongs_to_many :bins
  has_many :orders
  has_many :users, through: :orders

end
