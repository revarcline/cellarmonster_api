class Bin < ApplicationRecord
  has_and_belongs_to_many :bottles
end
