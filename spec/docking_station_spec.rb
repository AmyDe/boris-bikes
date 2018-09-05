require 'docking_station'

describe DockingStation do

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect { subject.release_bike }.to raise_error 'No bikes available. Budget cuts.'
    end
  end

  # it 'docks something' do
  #   bike = Bike.new
  #   expect(subject.dock(bike)).to eq bike
  # end

  describe '#dock' do
    it 'raises an error when docking limit is reached' do
      subject.dock(Bike.new)
      expect { subject.dock(Bike.new) }.to raise_error 'Bike dock full.'
    end
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it 'responds to bike method' do
    expect(subject).to respond_to :bike
  end

end
