require 'sinatra/base'
require_relative 'lib/bookmarks'

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
    p ENV
    @name = session[:name]
    @bookmarks = Bookmarks.all
    erb :bookmarks
  end

  run! if app_file == $0
end