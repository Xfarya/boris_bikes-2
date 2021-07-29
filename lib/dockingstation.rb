class DockingStation
  attr_accessor :bikes, :capacity, :broken_bikes

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
    @broken_bikes = []
  end

  def release_bike
    if empty?
      raise "No bikes are available"
    else @bikes.pop
    end
  end

  def dock_bike(bike, status = "working")
    if full?
      raise "Docking station is full"
    elsif status == "broken"
      @broken_bikes << bike
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