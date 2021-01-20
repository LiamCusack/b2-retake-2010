require 'rails_helper'

describe 'Flight Index' do
  before :each do
    @a1 = Airline.create!(name: "Frontier")
    @f1 = Flight.create!(number: 1, date: "08/03/20", time: "08:00", departure_city: "Denver", arrival_city: "Aurora", airline_id: @a1.id)
    @p1 = Passenger.create!(name: "Abracadaniel", age: 900)
    @p2 = Passenger.create!(name: "Jonnifer", age: 68)
    @i1 = Itinerary.create!(flight_id: @f1.id, passenger_id: @p1.id)
    @i2 = Itinerary.create!(flight_id: @f1.id, passenger_id: @p2.id)


    visit flights_path
  end

  it 'should display a list of all flight numbers' do
    save_and_open_page
    expect(page).to have_content(@f1.number)
  end

  it 'should list the names of all the flights passengers' do
    expect(page).to have_content(@p1.name)
    expect(page).to have_content(@p2.name)
  end
end
