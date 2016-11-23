require 'game'


describe Game do

  let(:agata) {double :player, name: "Agata"}
  let(:chris) {double :player, name: "Chris"}
  subject(:game) {described_class.new(agata, chris)}



  describe '#attack' do
    it 'attacks a player' do
      expect(chris).to receive(:receive_damage)
      game.attack(chris)
    end
  end

  describe '#initialize' do
    it "initializes 2 players" do

      expect(game.player_1).to eq agata
    end

    it "initializes 2 players" do

      expect(game.player_2).to eq chris
    end


  end

end
