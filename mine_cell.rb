class MineCell < Cell

  #TODO - is Inheritance correct? MineCell does not use increment_value method - perhaps Composition would be better?
  def initialize(args={})
    super(args)
  end

  def default_value
    -1
  end
end