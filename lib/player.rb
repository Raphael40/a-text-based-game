class Player
  def initialize(location)
    @location = location
  end

  def look_around
    return '' if @location.empty?

    item = @location[:items]

    items_arr = []

    item.each do |item|
      items_arr << " You see a #{item} on the floor."
    end

    location_items = "#{@location[:description]}#{items_arr.join}"

    return location_items
  end

  def pick_up(item)
    @location[:items].delete(item)
  end

end