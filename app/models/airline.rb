class Airline < ApplicationRecord
  has_many :flights
  has_many :itineraries, through: :flights
  has_many :passengers, through: :itineraries

  def unique_passengers
    self.passengers.uniq
  end
end
