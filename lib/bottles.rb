class Bottles
  def verse(bottles)
    <<-VERSE
#{bottles} bottles of beer on the wall, #{bottles} bottles of beer.
Take one down and pass it around, #{bottles - 1} bottles of beer on the wall.
VERSE
  end
end