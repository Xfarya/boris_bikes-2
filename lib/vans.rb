class Vans 
  attr_accessor :vans_broken, :vans_working

def initialize
  @vans_broken = []
  @vans_working = []
end

def send_to_garage
  garage = Garages.new
  raise "There are no broken bikes" if @vans_broken.length == 0
  garage.garage_inventory << @vans_broken 
  @vans_broken = []
end

def collect_from_garage
  garage = Garages.new
  raise "There are no bikes to collect" if garage.garage_inventory.length == 0
  @vans_working << garage.garage_inventory
  garage.garage_inventory = []
end

end