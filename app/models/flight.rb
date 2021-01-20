class Flight < ApplicationRecord
  belongs_to :airline
  has_many :itineraries
  has_many :passengers, through: :itineraries
end
