class Game

  attr_reader :player_1, :player_2, :players

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack
    attacked_player = @players.last
    attacked_player.receive_damage
  end

  def switch_player
    @players.reverse!
  end

end
