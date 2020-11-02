require 'sinatra/base'

class Bookmark_Manager < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/bookmarks' do
    session[:name] = params[:username]
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @name = session[:name]
    erb :bookmarks
  end

  run! if app_file == $0
end