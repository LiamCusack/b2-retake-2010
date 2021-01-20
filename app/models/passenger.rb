class Passenger < ApplicationRecord
  has_many :itineraries, dependent: :destroy
  has_many :flights, through: :itineraries
end
