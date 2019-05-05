class Bottles
  def verse(bottles)
    case
    when bottles == 0
      return <<-VERSE
No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
VERSE
    when bottles == 1
      return <<-VERSE
1 bottle of beer on the wall, 1 bottle of beer.
Take it down and pass it around, no more bottles of beer on the wall.
VERSE
    when bottles < 3
    return <<-VERSE
#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.
Take one down and pass it around, #{bottles - 1} bottle of beer on the wall.
VERSE
    else
    return <<-VERSE
#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.
Take one down and pass it around, #{bottles - 1} bottles of beer on the wall.
VERSE
    end
  end

  def verses(verse_start, verse_end)
    song = ""
    verse_start.downto(verse_end).each do |i|
      song += verse(i) + "\n"
   end
   return song.chomp
  end

  def song
    verses(99, 0)
  end
end