require 'dockingstation'

describe DockingStation do

    it { is_expected.to respond_to(:release_bike) }

    describe DockingStation.new.release_bike do
      it { is_expected.to be_a(Bike) }
    end

# if release bike is called on an instance of DS == Bike.new ?
# if working ? = true

end