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
  @current_user = session[:user_id] ? User.find(session[:user_id]) :nil
end

get '/' do
  @posts = Post.order( id: :desc )
  erb :home
end

post '/sign-in' do
  @user = User.where(username: params[:username]).first
  if @user && @user.password == params[:password]
    session[:user_id] = @user.id
    flash[:notice] = "You're logged in."
    redirect "/"
  else
    flash[:alert] = "Nah, try again."
    redirect "/signin"
  end
end

post '/sign-up' do
  @user = User.new( first_name: params[:first_name],
            last_name: params[:last_name],
            email: params[:email],
            username: params[:username],
            password: params[:password])
  if @user.save
    redirect '/'
  else
    redirect '/'
  end
end

post '/' do
  @post = Post.new( title: params[:title],
            body: params[:body],
            user_id: @current_user.id )
  if @post.save
    redirect '/'
  else
    redirect '/'
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end

get '/faq' do
  erb :faq
end

def current_user
  if session[:user_id]
    @current_user = User.find(session[:user_id])
  end
end

get '/faq' do
  erb :faq
end

get '/signin' do
  erb :signin
end

get '/signup' do
  erb :signup
end

get '/:username' do
  @user = User.find_by(username:params[:username])
  erb :profile
end
get '/:username/:post_id' do
  @user = User.find_by(username:params[:username])
  @post = Post.find( params[:post_id] )
  erb :post
end

get '/post/:id/delete' do
  @post = Post.find(params[:id])
  if @post.user_id != @current_user.id
    redirect '/'
  elsif @post.destroy
    flash[:message] = "Message deleted."
    redirect '/'
  else
    flash[:message] = "Could not delete post!"
  end
end
