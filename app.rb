require 'sinatra/base'

class App < Sinatra::Base

    # Create a route that responds to a GET request at /newteam. 
    get '/newteam' do
        erb :newteam
    end

    # Handle form submission
    # Create a route that responds to a POST request at /team 
    # Have the form send a POST request to this route. 
    # Upon submission, pass the submitted data to the team.erb template.
    post '/team' do
        @name = params[:name]
        @coach = params[:coach]
        @pg = params[:pg]
        @sg = params[:sg]
        @sf = params[:sf]
        @pf = params[:pf]
        @c = params[:c]

        erb :team
    end

end
