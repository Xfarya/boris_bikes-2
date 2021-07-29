class DockingStation
  attr_accessor :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    if empty?
      raise "No bikes are available"
    else @bikes.pop
    end
  end

  def dock_bike(bike)
    if full?
      raise "Docking station is full"
    else
    @bikes << bike
    end
  end

  private 
  
  def full?
    if @bikes.length >= 20
      true
    end
  end

  def empty?
    if @bikes == []
      true
    end
  end
  
  # def bike
  #   @bike
  # end

end