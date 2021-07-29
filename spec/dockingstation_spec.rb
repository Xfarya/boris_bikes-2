require 'dockingstation'

describe DockingStation do

    it { is_expected.to respond_to(:release_bike) }

    it 'is working' do
      expect(DockingStation.new.release_bike).to respond_to :working?
    end

    it { is_expected.to respond_to(:dock_bike).with(1).argument }

    it { is_expected.to respond_to(:bikes) }

    it 'docks something' do
      bike = Bike.new
      expect(DockingStation.new.dock_bike(bike).pop).to eq bike
    end

    it 'returns docked bikes' do
      # p DockingStation.new.dock_bike(Bike.new).pop
      # p DockingStation.new.release_bike
      docking_station = DockingStation.new
      docking_station.dock_bike(Bike.new)
      # p docking_station.bikes
      # p docking_station.bikes.last
      # p docking_station.release_bike
      expect(docking_station.bikes.last).to eq docking_station.release_bike
    end

    it 'adds a bike when dock_bike' do
      docking_station = DockingStation.new
      bike1 = Bike.new
      docking_station.dock_bike(bike1) 
      expect(docking_station.bikes.pop).to eq bike1
    end

    it "should raise error if dock is empty" do
      docking_station = DockingStation.new
      docking_station.bikes = []
      expect(DockingStation.new.release_bike).to raise_error "No bikes are available"
    end
end