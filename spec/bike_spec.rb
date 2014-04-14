require './lib/bike'

describe Bike do
  let(:bike) { Bike.new }

  it 'should be not broken' do
    expect(bike).not_to be_broken # or expect(bike.broken?).to be_false
  end

  it 'should be able to break' do
    bike.break!
    expect(bike).to be_broken
  end

  it 'should be able to get fixed' do
    bike.break!
    bike.fix!
    expect(bike).not_to be_broken
  end

end
