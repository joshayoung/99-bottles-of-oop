require_relative '../lib/pack'

class Bottles
  def verse(bottles)
    cont = Pack.new(bottles)
    verse = "#{cont.container_number(bottles).capitalize} #{cont.six_pack(bottles)} "
    verse += "of beer on the wall, "
    verse += "#{cont.container_number(bottles)} #{cont.six_pack(bottles)} of beer.\n"
    verse += "#{phrase(bottles)} #{cont.number(sequence(bottles))} "
    verse += "#{cont.bottle(bottles - 1)} of beer on the wall.\n"
    verse
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