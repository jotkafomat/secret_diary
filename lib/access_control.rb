
class AccessControl

attr_reader :locked

  def initialize(lock=true)
    @locked = lock
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end

end
