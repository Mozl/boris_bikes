require 'docking_station'
require 'bike'

describe DockingStation do

  it {should respond_to (:release_bike)}

  it { should respond_to :add_bike }

  it 'Feature Test: adds bike then checks it is in the station' do
    station = DockingStation.new
    bike1 = Bike.new
    station.add_bike(bike1)
    expect(station.bikes).to contain_exactly(bike1)
  end

  it 'Feature Test: raises an error when attempting to release bike from empty dock' do
    station = DockingStation.new
    expect { station.release_bike }.to raise_error(RuntimeError, "no bikes available")
  end

  it 'Feature Test: does not raise an error when there is a bike in the station to release' do
    station = DockingStation.new
    station.add_bike(Bike.new)
    expect { station.release_bike }.to_not raise_error
  end

  it 'Feature Test: raises an error when adding 21 bikes to a default size dock aka 20' do
    station = DockingStation.new
    20.times { station.add_bike(Bike.new) }
    expect { station.add_bike(Bike.new) }.to raise_error(RuntimeError, "dock is full")
  end

  # it 'accepts capacity higher than 20 when specified by user' do
  #   station = DockingStation.new
  #   20.times { station.add_bike(Bike.new) }
  #   expect { station.add_bike(Bike.new) }.to_not raise_error(RuntimeError, "dock is full")
  # end

  it 'Unit test: allows a user to set capacity when creating a new DockingStation instance' do
    station = DockingStation.new(25)
    expect { station @capacity == 25 }
  end

end
