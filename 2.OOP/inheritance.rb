class Castle < Building
  attr_accessor :butler

  def has_a_butler?
    @butler != nil
  end
end
some_castle = Castle.new('Chambord', 156, 117)
some_castle.has_a_butler? # => false
some_castle.butler = "George"
some_castle.has_a_butler? # => true
some_house = House.new('White House', 26, 51)
some_house.has_a_butler?

# Castle inherits everything from Building class but has a specific behaviour of butler

# Super calls the parent's method with that name
class Building
[..]
  def floor_area
    @width * @length
  end
end


class Castle < Building
  # A castle always has a garden of 300 sq. m
  def floor_area
    super + 300  # `super` calls `floor_area` of `Building`
  end
end
