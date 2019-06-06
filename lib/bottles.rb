require_relative '../lib/container'

class Bottles
  def verse(bottles)
    verse = "#{Container.new(bottles).number.capitalize} #{Container.new(bottles).bottle} "
    verse += "of beer on the wall, "
    verse += "#{Container.new(bottles).number} #{Container.new(bottles).bottle} of beer.\n"
    verse += "#{Container.new(bottles).phrase} #{Container.new(Container.new(bottles).sequence).number} "
    verse += "#{Container.new(bottles -1).bottle} of beer on the wall.\n"
    verse
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
