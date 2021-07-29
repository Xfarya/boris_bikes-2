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
      p DockingStation.new.dock_bike(Bike.new).pop
      p DockingStation.new.release_bike
      expect(DockingStation.new.dock_bike(Bike.new).pop).to eq DockingStation.new.release_bike
    end

    it 'adds a bike when dock_bike' do
      DockingStation.new.dock_bike(Bike.new) 
      expect(bikes.pop).to eq bike
    end

    it "should raise error if dock is empty" do
      bikes = []
      expect(DockingStation.new.release_bike).to raise_error "No bikes are available"
    end
end