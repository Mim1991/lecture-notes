# name = String.new("John Lennon")  # (same as) name = "John Lennon"
# name.split # => [ "John", "Lennon" ]
# Data (or State) = the list of characters.
# Behavior = the set of methods which can act on the list of characters.

# Summary:
# Everything in ruby is an object.
# OOP is about data (or state) and behavior.
# State is stored in instance variables (@foo)
# Behavior is defined by instance methods (def bar in class definition)


# Instance Methods
class Car
  def initialize
    @engine_started = false
  end

  def engine_started?
    return @engine_started
  end

  def start_engine
    @engine_started = true
  end
end

my_car = Car.new
my_car.engine_started? #=> false
my_car.start_engine
my_car.engine_started? #=> true



# Setting and accessing state
class Car
  def initialize(color)
    @color = color
  end
end

red_car = Car.new("red")

# Attribute Reader
class Car
  def color
    return @color
  end
end

# Attribute Writer
  def color=(new_color)
    @color = new_color
  end

my_car = Car.new("red")
my_car.color
#=> "red"
my_car.color = "green" # (same as) my_car.color=("green")
my_car.color
#=> "green"















