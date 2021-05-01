class Country < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:name]
  has_many :bottles
end
