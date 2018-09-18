require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do 
    @team_name = params[:team][:name]
    @coach = params[:team][:coach]
    @pg = params[:team][:pg]
    @sg = params[:team][:sg]
    @pf = params[:team][:pf]
    @sf = params[:team][:sf]
    @c = params[:team][:c]
    
    erb :team
  end
end
