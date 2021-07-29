class DockingStation
  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if @bikes == []
      raise "No bikes are available"
    else @bikes.pop
    end
  end

  def dock_bike(bike)
    if @bikes.length >= 1
      raise "Docking station is full"
    else
    @bikes << bike
    end
  end
  
  # def bike
  #   @bike
  # end

end