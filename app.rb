require 'sinatra/base'

class Birthday < Sinatra::Base
  enable :sessions

  get ('/') do
    erb :index
  end

  post ('/user_info') do
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect '/birthday'
  end

  get('/birthday') do
    @name = session[:name]
    @day = session[:day]
    @month = session[:month]
    erb :birthday
  end
end
