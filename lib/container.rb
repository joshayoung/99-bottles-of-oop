class Container
  def initialize(number)
    @number = number
  end

  def bottle
    return "bottle" if @number == 1

    "bottles"
  end
end