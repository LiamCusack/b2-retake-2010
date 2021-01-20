class Flight < ApplicationRecord
  belongs_to :airlines
  has_many :itineraries
  has_many :passengers, through: :itineraries
end
