require 'sinatra/base'
require_relative './lib/player.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @hp = $player_2.hit_points
    erb :play
  end

  post '/battle-names' do
    p params
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @hp = $player_2.reduce_hit_points
    erb :attack
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
