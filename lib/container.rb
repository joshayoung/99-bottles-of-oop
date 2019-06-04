class Container
  def initialize(line)
    @line = line
  end

  def bottle(number)
    return "bottle" if number == 1

    "bottles"
  end

  def number(num)
    return "no more" if num == 0

    num.to_s
  end
end