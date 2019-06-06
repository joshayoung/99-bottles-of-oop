require_relative '../lib/container'

class Bottles
  def verse(bottles)
    verse = "#{number(bottles).capitalize} #{bottle(bottles)} "
    verse += "of beer on the wall, "
    verse += "#{number(bottles)} #{bottle(bottles)} of beer.\n"
    verse += "#{phrase(bottles)} #{number(sequence(bottles))} "
    verse += "#{bottle(bottles - 1)} of beer on the wall.\n"
    verse
  end

  def bottle(num)
    Container.new(num).bottle(num)
  end

  def number(num)
    Container.new(num).number(num)
  end

  def sequence(num)
    Container.new(num).sequence(num)
  end

  def phrase(num)
    Container.new(num).phrase(num)
  end

  def verses(verse_start, verse_end)
    vs = verse_start.downto(verse_end).map do |i|
      verse(i)
    end
    vs.join("\n")
  end

  def song
    verses(99, 0)
  end
end