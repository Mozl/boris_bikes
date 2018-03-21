require 'docking_station'
require 'bike'

describe DockingStation do
  it {should respond_to (:release_bike)}
end

describe DockingStation do
  it "releases a bike" do
     expect(subject.release_bike.class).to eq(Bike)
  end
end


describe Bike do
  it 'expects bike to be working' do
  expect(subject.working?).to be true
  end
end

# describe DockingStation do
#   it 'makes docking possible'
#   expect(subject).to include (Bike.new)
# end

describe DockingStation do
  it {should respond_to :dock_bike}
end

describe DockingStation do
  Docking_Station = DockingStation.new
  Docking_Station.bikearray { should have(0).items }
  Docking_Station.add_bike(Bike.new)
  Docking_Station.bikearray { should have(1).items }
end

describe Docking_Station do
  it 'sees there is a Bike in bikearray'
  expect(Docking_Station.bikearray[0]).to be_an_instance_of(Bike)
end
