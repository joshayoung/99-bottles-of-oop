class Container

  attr_reader :num

  def initialize(num)
    @num = num
  end

  def bottle
    return "bottle" if num == 1

    "bottles"
  end

  def number
    return "no more" if num == 0

    num.to_s
  end

  def pronoun
    return "it" if num == 1

    "one"
  end

  def phrase
    return "Go to the store and buy some more," if num == 0

    "Take #{pronoun} down and pass it around,"
  end

  def sequence
    return "99" if num == 0

    num - 1
  end
end
