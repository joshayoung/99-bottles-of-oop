class Bottles
  def verse(bottles)
    case bottles
    when 0
      "No more #{container(bottles)} of beer on the wall, no more #{container(bottles)} of beer.\n" +
      "Go to the store and buy some more, 99 #{container(bottles)} of beer on the wall.\n"
    else
      "#{container(bottles)} of beer on the wall, #{container(bottles)} of beer.\n" +
      "Take #{pronoun(bottles)} down and pass it around, #{no_more(bottles)}#{container(bottles - 1, true)} of beer on the wall.\n"
    end
  end

  def pronoun(bottles)
    return "it" if bottles == 1
    "one"
  end

  def no_more(bottles)
    "no more " if bottles == 1
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
