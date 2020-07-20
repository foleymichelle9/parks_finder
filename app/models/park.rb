class Park

  attr_reader :name, :description, :direction, :hours

  def initialize(attributes)
    @name = attributes[:name]
    @description = attributes[:description]
    @direction = attributes[:direction]
    @hours = attributes[:hours]
  end
end
