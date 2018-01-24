require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'should release only working bikes' do
    # subject = { DockingStation.new } ### To clarify, as keyword 'subject' refers to the <described> object
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:return_bike).with(1).argument }

  it 'Returns a bike to the dock' do
    bike = Bike.new
    expect(subject.return_bike(bike)).to eq bike
  end

  it { is_expected.to respond_to(:bike_available) }

  it 'returns available bike' do
    bike = Bike.new
    subject.return_bike(bike)
    expect(subject.bike_available).to eq bike
  end

end
