class Bottles
  def verse(bottles)
    case bottles
    when 0
      "No more #{container(bottles)} of beer on the wall, no more #{container(bottles)} of beer.\n" +
      "Go to the store and buy some more, 99 #{container(bottles - 1)} of beer on the wall.\n"
    when 1
      "#{number(bottles)} #{container(bottles)} of beer on the wall, #{number(bottles)} #{container(bottles)} of beer.\n" +
      "Take it down and pass it around, no more #{container(bottles - 1)} of beer on the wall.\n"
    else
      "#{number(bottles)} #{container(bottles)} of beer on the wall, #{number(bottles)} #{container(bottles)} of beer.\n" +
      "Take one down and pass it around, #{number(bottles - 1)} #{container(bottles - 1)} of beer on the wall.\n"
    end
  end

  def container(cont)
    return "bottle" if cont == 1

    "bottles"
  end

  def number(num)
    num
  end

  def verses(verse_start, verse_end)
    verse_start.downto(verse_end).map { |i| verse(i) }.join("\n")
  end

  def song
    verses(99, 0)
  end
end