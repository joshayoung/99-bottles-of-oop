class Bottles
  def verse(bottles)
    case bottles
    when 0
      "No more #{container(bottles)} of beer on the wall, no more #{container(bottles)} of beer.\n" +
      "Go to the store and buy some more, 99 #{container(bottles)} of beer on the wall.\n"
    when 1
      "#{container(bottles)} of beer on the wall, #{container(bottles)} of beer.\n" +
      "Take it down and pass it around, no more #{container(bottles - 1)} of beer on the wall.\n"
    when 2
      "#{container(bottles)} of beer on the wall, #{container(bottles)} of beer.\n" +
      "Take one down and pass it around, #{container(bottles - 1)} of beer on the wall.\n"
    else
      "#{container(bottles)} of beer on the wall, #{container(bottles)} of beer.\n" +
      "Take one down and pass it around, #{container(bottles - 1, true)} of beer on the wall.\n"
    end
  end

  def verses(verse_start, verse_end)
    verse_start.downto(verse_end).map { |i| verse(i) }.join("\n")
  end

  def song
    verses(99, 0)
  end

  def container(quantity, second_line = false)
    return quantity.to_s + " bottle" if quantity == 1
    return "bottles" if quantity == 0
    return "1 six-pack" if quantity == 6 && !second_line

    quantity.to_s + " bottles"
  end
end
