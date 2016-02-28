class Cell
  attr_reader :x, :y, :value

  def initialize(args={})
    @x = args[:x]
    @y = args[:y]
    @value = default_value
  end

  def default_value
    0
  end

  def increment_value
    @value+=1
  end

  def to_s
    'x=' + x.to_s + ', y=' + y.to_s + ', value=' + value.to_s
  end
end