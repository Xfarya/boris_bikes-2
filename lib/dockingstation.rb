class DockingStation
  attr_accessor :bikes, :capacity, :broken_bikes

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
    @broken_bikes = [Bike.new]
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

  def deliver_broken
    raise "There are no broken bikes" if @broken_bikes.length == 0
    Vans.new.vans_broken.push(@broken_bikes)
    @broken_bikes = []
  end

  def deliver_working
    van = Vans.new
    van.send_to_garage
    van.collect_from_garage
    @bikes << van.vans_working
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