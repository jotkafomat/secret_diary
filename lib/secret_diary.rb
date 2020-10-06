require_relative 'access_control.rb'

class SecretDiary
  attr_reader :diary_access

  def initialize
    @diary_access = AccessControl.new
  end

  def add_entry
    raise 'Secret Diary is locked' if @diary_access.locked == true
  end

  def get_entries
    raise 'Secret Diary is locked' if @diary_access.locked == true
  end

  def enter_password
   @diary_access.unlock
 end

 def close_diary
   @diary_access.lock
 end

end
