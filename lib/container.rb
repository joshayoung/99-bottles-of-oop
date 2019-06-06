class Container

  def initialize(number)
    @number = number
  end

  def bottle
    return "bottle" if @number == 1

    "bottles"
  end

  def number
    return "no more" if @number == 0

    @number.to_s
  end

  def pronoun
    return "it" if @number == 1

    "one"
  end

  def phrase
    return "Go to the store and buy some more," if @number == 0

    "Take #{pronoun} down and pass it around,"
  end

  def sequence
    return "99" if @number == 0

    @number - 1
  end
end
