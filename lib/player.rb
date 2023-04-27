class Player
  def initialize(location)
    @location = location
  end

  def look_around 
    # lets you look around and see your surroundings
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
    # removes an item from your location
    @location[:items].delete(item)
  end

end