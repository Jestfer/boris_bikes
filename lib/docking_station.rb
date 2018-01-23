require_relative 'bike'

class DockingStation

  def initialize
  end

  def release_bike
    Bike.new
  end

  def return_bike(bike)
    bike
  end

  def bike_available
  end
end
