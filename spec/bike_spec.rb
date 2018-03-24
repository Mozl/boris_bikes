require 'bike'

describe Bike do

  it { is_expected.to respond_to :working? }

  it 'expects bike to be working' do
    expect(subject.working?).to be true
  end

  it { is_expected. to respond_to :break! }

  it 'Allows a bike to become broken' do
    bike1 = Bike.new
    bike1.break!
    expect(bike1.working?).to eq false
  end

  end
