require_relative '../lib/container'

class Bottles
  def verse(bottles, cont)
    "#{number(bottles).capitalize} #{container(bottles)} of beer on the wall, #{number(bottles)} #{container(bottles)} of beer.\n" +
    "#{phrase(bottles)} #{number(sequence(bottles))} #{container(bottles - 1)} of beer on the wall.\n"
  end

  def sequence(seq)
    return "99" if seq == 0

    seq - 1
  end

  def phrase(phr)
    return "Go to the store and buy some more," if phr == 0

    "Take #{pronoun(phr)} down and pass it around,"
  end

  def pronoun(pron)
    return "it" if pron == 1

    "one"
  end

  def container(cont)
    return "bottle" if cont == 1
    # return "six-pack" if cont == 6

    "bottles"
  end

  def number(num)
    return "no more" if num == 0
    # return "1" if num == 6

    num.to_s
  end

  def verses(verse_start, verse_end)
    vs = verse_start.downto(verse_end).map do |i| 
      container = Container.new(i)
      verse(i, container) 
    end
    vs.join("\n")
  end

  def song
    verses(99, 0)
  end
end