require_relative 'bike'

class DockingStation
  def release_bike
    Bike.new
  end

  def return_bike(bike)
    @bike = bike
    @bike
  end

  def bike_available
    @bike
  end
end
