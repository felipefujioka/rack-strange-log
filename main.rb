require 'sinatra'

class Main < Sinatra::Base

	get '/' do 
		'hello world'
	end
	
end