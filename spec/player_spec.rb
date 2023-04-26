require './lib/player'

RSpec.describe Player do
  context '.look_around' do
    it 'returns a hash' do
      player = Player.new({})

      expect(player.look_around).to be_empty
    end

    it 'returns the description of the location' do
      location = { description: "You are in the living-room. A wizard is snoring loudly on the couch.", items: ["whiskey", "bucket"] }
      player = Player.new(location)

      expect(player.look_around).to include 'You are in the living-room. A wizard is snoring loudly on the couch.'
      expect(player.look_around).to include 'whiskey'
      expect(player.look_around).to include 'bucket'
    end

    it 'returns description and items' do
      location = {description: "You are in the living-room. A wizard is snoring loudly on the couch.", items: ["whiskey", "bucket"] }
      player = Player.new(location)

      expect(player.look_around).to eq 'You are in the living-room. A wizard is snoring loudly on the couch. You see a whiskey on the floor. You see a bucket on the floor.'
    end
  end

  context '.pick_up(item)' do
    
  end
end