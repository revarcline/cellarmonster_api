class Bin < ApplicationRecord
  include PgSearch::Model
  multisearchable against: [:location]
  has_and_belongs_to_many :bottles
end
