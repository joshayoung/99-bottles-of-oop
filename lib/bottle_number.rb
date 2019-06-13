class BottleNumber
    attr_reader :number
  def initialize(number)
    @number = number
  end

  def self.for(number)
    # return number if number.kind_of?(BottleNumber)

    case number
    when 0
      BottleNumber0.new(number)
    when 1
      BottleNumber1.new(number)
    when 6
      BottleNumber6.new(number)
    else
      BottleNumber.new(number)
    end
  end

  def container
    "bottles"
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def pronoun
    "one"
  end

  def successor
    BottleNumber.for(number - 1)
  end

  def quantity
    number.to_s
  end

  def to_s
    "#{quantity} #{container}"
  end
end