class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    if empty?
      raise
    end
  end

  def add_bike(bike)
    if full?
      raise
    else
      @bikes << bike
    end
  end
  private

  def empty?
    @bikes.size == 0
  end

  def full?
    @bikes.size == 20
  end
end
