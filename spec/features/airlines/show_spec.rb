require 'rails_helper'

describe 'Airlines Show' do
  before :each do
    @a1 = Airline.create!(name: "Frontier")
    @f1 = Flight.create!(number: 1, date: "08/03/20", time: "08:00", departure_city: "Denver", arrival_city: "Aurora", airline_id: @a1.id)
    @f2 = Flight.create!(number: 2, date: "08/03/20", time: "09:00", departure_city: "Milwakee", arrival_city: "Denver", airline_id: @a1.id)
    @p1 = Passenger.create!(name: "Abracadaniel", age: 900)
    @p2 = Passenger.create!(name: "Jonnifer", age: 68)
    @p3 = Passenger.create!(name: "Bercy Hamhands", age: 7)
    @i1 = Itinerary.create!(flight_id: @f1.id, passenger_id: @p1.id)
    @i2 = Itinerary.create!(flight_id: @f1.id, passenger_id: @p2.id)
    @i3 = Itinerary.create!(flight_id: @f2.id, passenger_id: @p3.id)


    visit airlines_path(@a1)
  end

  it 'should list the names of all the passengers flying with that airline' do
    expect(page).to have_content(@p1.name)
    expect(page).to have_content(@p2.name)
    expect(page).to have_content(@p3.name)
  end
end
