require 'dockingstation'
# describe DockingStation do
#     # # Hard coded tests
#     # it 'returns "dock here" when passed King Cross station' do
#     #     expect(dockingstation("king cross station")).to eq 'dock here'
#     # end
# end

describe DockingStation do

    it { is_expected.to respond_to(:release_bike) }

end