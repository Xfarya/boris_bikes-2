describe 'dockingstation' do
    # Hard coded tests
    it 'returns "dock here" when passed King Cross station' do
        expect(dockingstation("king cross station")).to eq 'dock here'
    end
end