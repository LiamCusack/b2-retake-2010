require 'rails_helper'

describe 'Flight Index' do
  before :each do
    @a1 = Airline.create!(name: "Frontier")
    @f1 = Flight.create!(number: 1, date: "08/03/20", time: "08:00", departure_city: "Denver", arrival_city: "Aurora", airline_id: @a1.id)


    visit flights_path
  end

  it 'should display a list of all flight numbers' do
    expect(page).to have_content(@f1.number)
  end
end
