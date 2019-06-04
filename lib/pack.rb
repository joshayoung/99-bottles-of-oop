class Pack < Container
  def initialize(line)
    super(line)
  end

  def six_pack(number)
    return "six-pack" if @line == 6

    bottle(number)
  end

  def container_number(number)
    return "1" if @line == 6

    number(number)
  end
end