require_relative '../lib/bottle_number'

class Bottles
  def verse(number)
    bottle_number = BottleNumber.new(number)
    next_bottle_number = BottleNumber.new(bottle_number.successor)
    "#{bottle_number.quantity.capitalize} #{bottle_number.container} " + 
    "of beer on the wall, " + 
    "#{bottle_number.quantity} #{bottle_number.container} of beer.\n" + 
    "#{bottle_number.action}, " + 
    "#{next_bottle_number.quantity} #{next_bottle_number.container} " + 
    "of beer on the wall.\n"
  end

  def verses(verse_start, verse_end)
    verse_start.downto(verse_end).collect { |i| verse(i)}.join("\n")
  end

  def song
    verses(99, 0)
  end
end
