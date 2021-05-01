class Varietal < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:name]
  has_and_belongs_to_many :bottles
end
