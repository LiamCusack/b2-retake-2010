class Passenger < ApplicationRecord
  has_many :itineraries
  has_many :flights, through: :itineraries
end
