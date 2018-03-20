class DockingStation
  def initialize
    @bikearray = []
  end

  def release_bike
    Bike.new
  end

  def add_bike(bike)
    @bikearray = << bike
  end

  def view_bikes
    @bikearray
  end
