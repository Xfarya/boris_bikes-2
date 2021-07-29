class DockingStation
  attr_accessor :bikes, :capacity

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
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
    if @bikes.length >= @capacity
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