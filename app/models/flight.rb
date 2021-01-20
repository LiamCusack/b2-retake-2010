class Flight < ApplicationRecord
  belongs_to :airline
  has_many :itineraries, dependent: :destroy
  has_many :passengers, through: :itineraries
end
