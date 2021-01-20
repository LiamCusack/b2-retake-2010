class Flight < ApplicationRecord
  belongs_to :airline
  has_many :itineraries, dependent: :destroy
  has_many :passengers, through: :itineraries

  def self.order_by_most_passengers
    select('flights.*, count(passengers.id) as passenger_count').joins(:passengers).group('flights.id').order('passenger_count desc')
  end
end
