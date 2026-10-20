class Rental < ApplicationRecord
  belongs_to :customer
  belongs_to :inventory
  has_one :store, through: :inventory
  has_one :film, through: :inventory
  belongs_to :customer, counter_cache: true
end
