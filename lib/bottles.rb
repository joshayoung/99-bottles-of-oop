class Bottles
  def verse(bottles)
    "#{no_more_line_one(bottles)}#{container(bottles)} of beer on the wall, #{no_more_line_one(bottles, true)}#{container(bottles)} of beer.\n" +
    "#{phrase(bottles)} #{no_more(bottles)}#{container(bottles - 1, true)} of beer on the wall.\n"
  end

  def no_more(bottles, lower = false)
    return "no more " if bottles == 1
    "99 " if bottles == 0
  end

  def no_more_line_one(bottles, lower = false)
    return "no more " if lower && bottles == 0
    "No more " if bottles == 0
  end

  def container(quantity, second_line = false)
    return quantity.to_s + " bottle" if quantity == 1
    return "bottles" if quantity == -1 || quantity == 0
    return "1 six-pack" if quantity == 6 && !second_line

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
