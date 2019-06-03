class Bottles
  def verse(bottles)
    "#{no_more(bottles, first_line: true)}#{container(bottles)} of beer on the wall, #{no_more(bottles, lower: true, first_line: true)}#{container(bottles)} of beer.\n" +
    "#{phrase(bottles)} #{no_more(bottles)}#{container(bottles - 1)} of beer on the wall.\n"
  end

  def no_more(bottles, lower: false, first_line: false)
    return "no more " if bottles == 1 && !first_line
    return "no more " if lower && bottles == 0
    return "No more " if bottles == 0 && first_line

    "99 " if bottles == 0
  end

  def container(quantity)
    return quantity.to_s + " bottle" if quantity == 1
    return "bottles" if quantity == -1 || quantity == 0

    quantity.to_s + " bottles"
  end

  def phrase(bottles)
    return "Go to the store and buy some more," if bottles == 0
    return "Take it down and pass it around," if bottles == 1

    "Take one down and pass it around,"
  end

  def verses(verse_start, verse_end)
    verse_start.downto(verse_end).map { |i| verse(i) }.join("\n")
  end

  def song
    verses(99, 0)
  end
end
