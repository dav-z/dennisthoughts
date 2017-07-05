# app.rb
require 'sinatra'
require 'sinatra/activerecord'
# ensure loading gems in gemfile
require 'bundler/setup'
# loads sinatra flash
require 'sinatra/flash'
# allows sinatra flash to work
enable :sessions
# configure database
set :database, {adapter: "sqlite3", database: "db/hack.db"}
# models.rb requires database connection, so include that only after database is configured
require './models'

before do
  current_user
end

get '/' do
  erb :home
end

post '/sign-in' do
  @user = User.where(username: params[:username]).first
  if @user && @user.password == params[:password]
    session[:user_id] = @user.id
    flash[:notice] = "You're logged in."
  else
    flash[:alert] = "Nah, try again."
  end
  redirect "/"
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end

get '/p/profile' do
  erb :profile
end

get '/faq' do
  erb :home
end

def current_user
  if session[:user_id]
    @current_user = User.find(session[:user_id])
  end
end

get '/signin' do
  erb :signin
end

get '/signup' do
  erb :signup
end
