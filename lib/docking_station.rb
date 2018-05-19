require_relative 'bike'

class DockingStation
  attr_reader :bikes
  attr_accessor :capacity

  def initialize(capacity=20)
    @capacity = capacity
    @bikes = []
  end

  def release_bike()
    if empty?
      raise "no bikes available"
    else
      @bikes.pop
    end
  end

  def return_bike(bike)
    if full?
      raise "dock is full"
    else
      @bikes << bike
    end
  end

  private

  def empty?()
    @bikes.size == 0
  end

  def full?()
    @bikes.size == @capacity
  end
end
