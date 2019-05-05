class Bottles
  def verse(bottles)
    case
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
end