my_castle = Castle.new # This is an instance of the Castle class

# An Instance method would therefore be:
class Castle < Building
  def has_a_butler?
    @butler != nil
  end
end

# You can't call Castle.has_a_butler? You need a class method

class Castle < Building
  def self.categories
    return ['Medieval', 'Norman', 'Ancient']
  end
end

# The self will mean you can call Castle.categories
# You create a class method if it does not need/is not relevant to a single instance
# An example of a class method:
JSON.parse('{ "key": "value", "other_key": "other_value" }')
# parse is a class method of JSON which returns an instance

# Self
# 2 use cases:

# Inside an instance method
# Inside a Class definition, to define Class methods
