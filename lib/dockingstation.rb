class DockingStation
  attr_accessor :bikes

  def initialize
    @bikes = [Bike.new]
  end

  def release_bike
    if @bikes == []
      raise "No bikes are available"
    else @bikes.pop
    end
  end

  def dock_bike(bike)
    @bikes << bike
  end
  
  # def bike
  #   @bike
  # end

end