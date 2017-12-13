require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      # binding.pry
      @heroes = params[:team][:heros].map do |hero|
        Hero.new(hero)
      end
      @team = Team.new(params[:team])
      erb :team
    end

end
