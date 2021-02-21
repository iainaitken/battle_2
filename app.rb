require 'sinatra/base'
require 'player'
require 'game'

class Battle < Sinatra::Base
  enable :sessions
  # get '/' do
    # "Testing infrastructure working!"
  # end

  get '/' do
    p params
    erb :index
  end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    Game.new.attack($player_2)
    erb :attack
  end

  post '/names' do
    p params
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    p @player_1.name
    p @player_2.name
    erb :play
  end

  run! if app_file == $0
end
