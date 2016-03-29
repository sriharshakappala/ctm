class Talk

  attr_reader :description, :length

  def initialize talk
    talk.chomp!
    if talk.split.last == 'lightning'
      @length = 5
    else
      @length = talk.split.last.gsub('min', '').to_i
    end
    @description = talk.split[0..-2].join(' ')
  end

end
