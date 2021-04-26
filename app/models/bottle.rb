class Bottle < ApplicationRecord
  has_and_belongs_to_many :varietals
  has_and_belongs_to_many :countries
  has_and_belongs_to_many :producers
  has_and_belongs_to_many :bins
  has_many :orders
  has_many :users, through: :orders
end
