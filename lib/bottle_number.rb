class BottleNumber
    attr_reader :number
  def initialize(number)
    @number = number
  end

  def container
    if number == 1
        "bottle"
    else
        "bottles"
    end
  end

  def action
    if number == 0
        return "Go to the store and buy some more" 
    else
        "Take #{pronoun(number)} down and pass it around"
    end
  end

  def pronoun(number)
    if number == 1
      "it" 
    else
      "one"
    end
  end

  def successor
    if number == 0
      "99" 
    else
      number - 1
    end
  end

  def quantity
    if number == 0
      "no more"
    else
        number.to_s
    end
  end
end