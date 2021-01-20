require 'rails_helper'

RSpec.describe Airline, type: :model do
  describe 'relationships' do
    it { should have_many(:flights) }
    it { should have_many(:itineraries).through(:flights) }
    it { should have_many(:passengers).through(:itineraries) }
  end
