require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb :home
end

post '/operation' do
	@num1 = params[:num1].to_i
	@num2 = params[:num2].to_i
	@operation = params[:operation].to_sym
	@result = eval("#{@num1} #{@operation} #{@num2}")
	erb :result
end

