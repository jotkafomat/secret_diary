require_relative 'secret_diary.rb'
require_relative 'access_control.rb'

p diary = SecretDiary.new
p diary
p diary.enter_password
p "diary open"
p diary.add_entry

p diary.close_diary
p diary.add_entry
