class Park

  attr_reader :name, :description, :direction, :hours

  def initialize(attributes)


    @name = attributes[:name]
    @description = attributes[:description]
    @direction = attributes[:directionsInfo]
    #require "pry"; binding.pry
  #@hours = attributes[:operatingHours][0][:standardHours]
  end
end
