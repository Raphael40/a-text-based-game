class Player
  def initialize(location)
    @location = location
  end

  def look_around
    return '' if @location.empty?
    item = @location[:items]

    location_items = "#{@location[:description]} You see a #{item[0]} on the floor. You see a #{item[1]} on the floor."

    return location_items
  end
end