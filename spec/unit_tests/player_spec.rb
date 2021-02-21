require 'Player'

describe Player do
  subject(:fred) { described_class.new("Fred") }
  subject(:ben) { described_class.new("Ben") }

  describe '#name' do
    it "diplays the player name" do
      expect(fred.name).to eq("Fred")
    end
  end

  describe '#hp' do
    it 'returns the hit points' do
      expect(fred.hp).to eq described_class::DEFAULT_HIT_POINTS
    end
  end



  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { ben.receive_damage }.to change { ben.hp }.by(-10)
    end
  end
end
