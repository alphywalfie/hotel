require 'sinatra'

class Room
	attr_writer :type
	attr_reader :type
	def initialize(type)
	@type = type
	end
end

get '/home' do
	erb :home
end

get '/about' do
	erb :about
end

get '/rooms' do
	erb :rooms
end

get '/reserve' do
	@name = params[:name]
	@type = params[:type]
	@date = params[:available]
	erb :reserve
end

get '/confirm' do
	erb :confirm
end
