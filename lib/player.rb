class Player
  def initialize(location)
    @location = location
  end

  def look_around
    result = @location[:description]
    @location[:items].each do |item|
      result + item
    end

    puts result
  end
end