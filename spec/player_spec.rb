require './lib/player'

RSpec.describe Player do
  context '.look_around' do
    it 'returns a hash' do
      player = Player.new({})

      expect(player.look_around).not_to be_nil
      expect(player.look_around).to be_a(Hash)
    end

    it 'returns the description of the location' do
      location = { description: "You are in the living-room. A wizard is snoring loudly on the couch.", items: ["whiskey", "bucket"] }
      player = Player.new(location)

      expect(player.look_around).to have_key(:description)
      expect(player.look_around).to include(description: 'You are in the living-room. A wizard is snoring loudly on the couch.')
    end
  end
end