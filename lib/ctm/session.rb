class Session

  attr_reader :length, :talks

  def initialize length
    @length = length
    @talks = []
  end

  def add talk
    if talk.length > @length
      raise 'TalkTooLongException'
    else
      @length = @length - talk.length
      @talks << talk
    end
  end

  def exists? talk
    @talks.include? talk
  end

end
