class Session

  attr_reader :length, :talks

  def initialize length
    @length = length
    @talks = []
  end

  def add talk
    @length = @length - talk.length
    @talks << talk
  end

  def exists? talk
    @talks.include? talk
  end

end
