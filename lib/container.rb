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

  def pronoun(pron)
    return "it" if pron == 1

    "one"
  end

  def phrase(phr)
    return "Go to the store and buy some more," if phr == 0

    "Take #{pronoun(phr)} down and pass it around,"
  end

  def sequence(seq)
    return "99" if seq == 0

    seq - 1
  end
end