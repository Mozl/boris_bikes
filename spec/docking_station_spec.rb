require 'docking_station'
require 'bike'

describe DockingStation do
  it {should respond_to (:release_bike)}
end

# describe DockingStation do
#   it "releases a bike" do
#      expect(subject.release_bike.class).to eq(Bike)
#   end
# end


describe Bike do
  it 'expects bike to be working' do
  expect(subject.working?).to be true
  end
end


describe DockingStation do
  it {should respond_to :add_bike}
end

describe DockingStation do
  Docking_Station = DockingStation.new
  Docking_Station.bikearray { should have(0).items }
  Docking_Station.add_bike(Bike.new)
  Docking_Station.bikearray { should have(1).items }
end

describe Docking_Station do
  it 'acknowledges bike' do
    expect(subject.bikearray).to contain_exactly(Bike)
  end
end

describe DockingStation do
  station = DockingStation.new
  it 'raises an error' do
    expect { station.release_bike }.to raise_error(RangeError)
  end
  it 'does not raise an error when there is a bike' do
    station.add_bike(Bike.new)
    expect {station.release_bike}.to_not raise_error
  end
end
