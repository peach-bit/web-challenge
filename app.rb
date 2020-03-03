require 'sinatra'
configure do
  set:session_secret, "cookie's website"

get '/' do
  "Hello World"
end
 get '/secret' do
   "hehe"
 end

get '/random-cat' do
  @name = ["Cookie", "Fred", "Google"].sample
  @color = ["Red","Blue","Green"].sample
  erb(:index)
end

get '/namedcat' do
  p params
  @name = params[:name]
  @color = params[:color]
  erb(:index)
end
end
