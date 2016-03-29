class Session

  attr_reader :length, :talks, :type

  def initialize length, type
    @length = length
    @type = type # :morning or :afternoon
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

  def add? talk
    talk.length > length ? false : true
  end

  def exists? talk
    @talks.include? talk
  end

end
