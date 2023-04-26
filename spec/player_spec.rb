require './lib/player'
location = {description: "You are in the living-room. A wizard is snoring loudly on the couch.", items: ["whiskey", "bucket"] }

RSpec.describe Player do
  context '.look_around' do
    it 'returns a hash' do
      player = Player.new({})

      expect(player.look_around).to be_empty
    end

    it 'returns the description of the location' do
      player = Player.new(location)

      expect(player.look_around).to include 'You are in the living-room. A wizard is snoring loudly on the couch.'
      expect(player.look_around).to include 'whiskey'
      expect(player.look_around).to include 'bucket'
    end

    it 'returns description and items' do
      player = Player.new(location)

      expect(player.look_around).to eq 'You are in the living-room. A wizard is snoring loudly on the couch. You see a whiskey on the floor. You see a bucket on the floor.'
    end
  end

  context '.pick_up(item) adds item from location to items array' do
    it 'removes item from being visible in look around method' do
      
      player = Player.new(location)
      player.look_around
      player.pick_up('whiskey')

      expect(player.look_around).to eq 'You are in the living-room. A wizard is snoring loudly on the couch. You see a bucket on the floor.'
    end
  end
end