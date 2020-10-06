require 'secret_diary'

describe SecretDiary do

  it 'will respond to add_entry' do
    expect(subject).to respond_to :add_entry
  end

  it 'will respond to get_entries' do
    expect(subject).to respond_to :get_entries
  end

  it 'Initially is locked' do
    diary = SecretDiary.new
    expect(subject.diary_access.lock).to eq true
  end


  it 'when diary is lock, add entry should throw en error' do
    expect { subject.add_entry }.to raise_error 'Secret Diary is locked'
  end

  it 'when diary is lock, get entries should throw en error' do
    expect { subject.get_entries }.to raise_error 'Secret Diary is locked'
  end

  it 'when user calls unlock, add entry should work as desired' do
    subject.enter_password
    expect { subject.add_entry }.not_to raise_error
  end

  it 'when user calls unlock, get_entries should work as desired' do
    subject.enter_password
    expect { subject.get_entries }.not_to raise_error
  end

  it 'when user unlock and lock, add_entry should raise error' do
    subject.diary_access.unlock
    subject.add_entry
    subject.diary_access.lock
    expect { subject.get_entries }.to raise_error 'Secret Diary is locked'
  end
end
