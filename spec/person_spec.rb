require 'bike'
require 'docking_station'
require 'person'

describe Person do
  let(:person)  { Person.new }
  let(:station) { DockingStation.new }


  it 'does not have a bike' do
    expect(person.has_bike?).to be_false
  end

  it 'has a bike' do
    person = Person.new :bike
    expect(person.has_bike?).to be_true
  end

  it 'rents a bike from station' do
    expect(station).to receive(:release)
    person.rent_bike_from station
  end

end
