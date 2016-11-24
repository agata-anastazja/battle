require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    erb :play
  end

  post '/battle-names' do
    p params
    $game = Game.new(Player.new(params[:player_1]), Player.new(params[:player_2]))
    redirect '/play'
  end

  get '/attack' do
    @player_1 = $game.player_1
    @player_2 = $game.player_2
    $game.attack(@player_2)
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
