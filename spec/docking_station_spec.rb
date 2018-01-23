require 'docking_station'
require 'bike'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'should release only working bikes' do
    # subject = { DockingStation.new } ### To clarify, as keyword 'subject' refers to the <described> object
    bike = subject.release_bike
    expect(bike).to be_working
  end
end
