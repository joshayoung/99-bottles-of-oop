require_relative '../lib/bottle_number'
require_relative '../lib/bottle_number0'
require_relative '../lib/bottle_number1'
require_relative '../lib/bottle_number6'

class Bottles
  def verse(number)
    bottle_number = bottle(number)
    next_bottle_number = bottle(bottle_number.successor)
    "#{bottle_number.quantity.capitalize} #{bottle_number.container} " +
    "of beer on the wall, " +
    "#{bottle_number.quantity} #{bottle_number.container} of beer.\n" +
    "#{bottle_number.action}, " +
    "#{next_bottle_number.quantity} #{next_bottle_number.container} " +
    "of beer on the wall.\n"
  end

  def bottle(number)
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

  def verses(verse_start, verse_end)
    verse_start.downto(verse_end).collect { |i| verse(i)}.join("\n")
  end

  def song
    verses(99, 0)
  end
end
