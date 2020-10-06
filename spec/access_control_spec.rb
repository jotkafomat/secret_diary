require 'access_control'

describe AccessControl do

  it 'will respond to lock' do
    expect(subject).to respond_to :lock
  end

  it 'will respond to unlock' do
    expect(subject).to respond_to :unlock
  end

end
