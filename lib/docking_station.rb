require_relative 'bike'

class DockingStation

  def release_bike
    fail 'No bikes available. Budget cuts.' unless @bike
    @bike
  end


  def dock(bike)
    fail 'Bike dock full.' if @bike
    @bike = bike
  end

  attr_reader :bike

end
