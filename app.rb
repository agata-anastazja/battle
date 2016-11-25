require 'sinatra/base'
require './lib/player.rb'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/battle-names' do
    p params
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
