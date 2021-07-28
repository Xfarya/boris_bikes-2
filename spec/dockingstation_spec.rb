require 'dockingstation'

describe DockingStation do

    it { is_expected.to respond_to(:release_bike) }

    it 'is working' do
      expect(DockingStation.new.release_bike.working?).to eq true
    end

# if release bike is called on an instance of DS == Bike.new ?
# if working ? = true

end