# we're describing the functionality of a specific class, Bike
require_relative '../lib/bike' # link to the Bike class

describe Bike do
  # this is a specific feature (behaviour) that we expect to be present
  it 'should not be broken after we create it' do
    bike = Bike.new # initialize a new object of Bike class
    # expect an instance of this class to have
    # a method "broken?" that should return false
    expect(bike).not_to be_broken # or: expect(bike.broken?).to be_false
  end

  it 'shoule be able to break' do
    bike = Bike.new
    bike.break
    expect(bike).to be_broken
  end

  it 'should be able to get fixed' do
    bike = Bike.new
    bike.break
    bike.fix
    expect(bike).not_to be_broken
  end

end

