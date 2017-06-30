# app.rb
require 'sinatra'
require 'sinatra/activerecord'
# ensure loading gems in gemfile
require 'bundler/setup'
# loads sinatra flash
require 'sinatra/flash'
# allows sinatra flash to work
enable :sessions
