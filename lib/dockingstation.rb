class DockingStation

<<<<<<< HEAD
  attr_reader :bike
=======
attr_reader :bike
>>>>>>> 6523fc95e22dc328d700cd119de3638dd819b1fc

  def release_bike
    Bike.new
  end

  def dock_bike(bike)
    @bike = bike
  end
  
  # def bike
  #   @bike
  # end

end