require 'dockingstation'

describe DockingStation do

    it { is_expected.to respond_to(:release_bike) }

    it 'is working' do
      expect(DockingStation.new.release_bike.working?).to eq true
    end

    it { is_expected.to respond_to(:dock_bike).with(1).argument }

    it { is_expected.to respond_to(:bike) }

    it 'docks something' do
      bike = Bike.new
      expect(subject.dock_bike(bike)).to eq bike
    end

    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock_bike(bike)
      expect(subject.bike).to eq bike
    end

end