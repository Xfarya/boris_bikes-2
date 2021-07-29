require 'dockingstation'

describe DockingStation do
let(:bike) {double :bike}
    it { is_expected.to respond_to(:release_bike) }

    it 'is working' do
      allow(bike).to receive(:working?).and_return(true)
      docking_station = DockingStation.new
      docking_station.dock_bike(bike)
      expect(docking_station.release_bike).to respond_to :working?
    end

    it { is_expected.to respond_to(:dock_bike).with(2).argument }

    it { is_expected.to respond_to(:bikes) }

    it 'docks something' do
      bike = double(:bike)
      expect(DockingStation.new.dock_bike(bike).pop).to eq bike
    end

    it 'returns docked bikes' do
      docking_station = DockingStation.new
      docking_station.dock_bike(double(:bike))
      expect(docking_station.bikes.last).to eq docking_station.release_bike
    end

    it 'adds a bike when dock_bike' do
      docking_station = DockingStation.new
      bike1 = double(:bike)
      docking_station.dock_bike(bike1) 
      expect(docking_station.bikes.pop).to eq bike1
    end

    it "should raise error if dock is empty" do
      docking_station = DockingStation.new
      docking_station.dock_bike(double(:bike))
      expect(docking_station.release_bike).to raise_error "No bikes are available" if docking_station.bikes == []
    end

    it "should raise error if dock is full" do
      docking_station = DockingStation.new
      # bike2 = docking_station.dock_bike(Bike.new)
    #  20.times { docking_station.dock_bike Bike.new }
    p docking_station.capacity
      expect(docking_station.dock_bike double(:bike)).to raise_error "Docking station is full" if docking_station.bikes.length >= docking_station.capacity
    end

    it "should not release broken bikes" do
      docking_station = DockingStation.new
      bike1 = double(:bike)
      docking_station.dock_bike(bike1, "broken")
      expect(docking_station.broken_bikes.last).to eq(bike1)
    end
      
    it "should collect and deliver broken bikes to garages"
    docking_station = DockingStation.new
    docking_station.deliver_broken
    expect(docking_station.broken_bikes).to eq []
  end

  it "should collect and deliver working bikes to docking stations"
  docking_station = DockingStation.new
  current_number_of_bikes = docking_station.bikes.length
  docking_station.deliver_working
  expect(docking_station.bikes.length).to > current_number_of_bikes
end

end