require "sinatra"
require "sinatra/reloader" if development?
require "pry-byebug"
require "better_errors"
require_relative "app/models/parse"
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path(__dir__)
end

set :views, (proc { File.join(root, "app/views") })
set :bind, '0.0.0.0'


get '/' do

  erb :index # Do not remove this line
end

post '/tranlsation' do
  # binding.pry
  word = params[:word]
  @translation = Parse.search(word)
  @translation
  erb :output
end
# # TODO: add more routes to your app!
# post '/new_post' do
#   new_post = Post.new(name: params[:name], url: params[:url], votes: 0)
#   new_post.save
#   redirect to '/'
# end
#
# post '/vote' do
#   keys = params.keys.map { |id| id.split('_')[1].to_i }
#   keys.each do |key|
#     post = Post.find(key)
#     post.votes += 1
#     post.save
#   end
#   redirect to '/'
# end
