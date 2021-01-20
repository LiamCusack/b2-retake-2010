require 'rails_helper'

RSpec.describe Itinerary, type: :model do
  describe 'relationships' do
    it { should belong_to(:passengers) }
    it { should belong_to(:flights)}
  end
