require 'sinatra/base'
require_relative "./lib/user.rb"

class Birthday < Sinatra::Base
  enable :sessions

  get ('/') do
    erb :index
  end

  post('/birthday') do
    @user = User.new(params[:name], params[:day], params[:month])
    erb :birthday
  end
end
