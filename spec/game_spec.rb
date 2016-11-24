require 'game'

describe Game do
  subject(:game) {described_class.new}
  let(:player1) {double(:player1)}
  let(:player2) {double(:player2)}

  context "when #attack" do
    it 'reduces player_2 points by 10' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end
end
