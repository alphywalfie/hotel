require 'sinatra'

class Room
	attr_writer :type
	attr_reader :type
	attr_writer :name
	attr_reader :name
	attr_writer :available
	attr_reader :available
	def initialize(name, type, available)
	@type = type
	@name = name
	@available = available
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
	erb :reserve
end

get '/confirm' do
	@room_confirm = Room.new(params[:name], params[:type], params[:available])
	erb :confirm
end