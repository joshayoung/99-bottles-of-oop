require_relative '../lib/bottle_number'
require_relative '../lib/bottle_number0'
require_relative '../lib/bottle_number1'
require_relative '../lib/bottle_number6'

class Bottles
  def verse(number)
    bottle_number = BottleNumber.for(number)
    "#{bottle_number} of beer on the wall, ".capitalize +
    "#{bottle_number} of beer.\n" +
    "#{bottle_number.action}, " +
    "#{bottle_number.successor} of beer on the wall.\n"
  end

  def verses(verse_start, verse_end)
    verse_start.downto(verse_end).collect { |i| verse(i)}.join("\n")
  end

  def song
    verses(99, 0)
  end
end
