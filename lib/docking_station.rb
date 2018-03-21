class DockingStation
  attr_reader :bikearray
  def initialize
    @bikearray = []
  end

  def release_bike
    if @bikearray.size == 0
      raise RangeError
    end
  end

  def add_bike(bike)
    @bikearray << bike
  end
end
