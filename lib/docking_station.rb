class DockingStation
  attr_reader :bikearray
  def initialize
    @bikearray = []
  end

  def release_bike
    if @bikearray.size == 0
      raise
    end
  end

  def add_bike(bike)
    if @bikearray.size == 1 
      raise 
    else 
      @bikearray << bike
    end 
  end
end
