require 'dockingstation'

describe DockingStation do

    it { is_expected.to respond_to(:release_bike) }

    it 'is working' do
      expect(DockingStation.new.release_bike.working?).to eq true
    end

    it { is_expected.to respond_to(:dock_bike).with(1).argument }

    it 'returns the value of bike' do
      bike = Bike.new
      expect(DockingStation.new.dock_bike(bike)).to eq(bike)
    end

    it 'adds a bike when dock_bike' do
      DockingStation.new.dock_bike(Bike.new) 
      expect(bikes.pop).to eq bike

    end

end