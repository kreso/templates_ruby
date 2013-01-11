require "sinatra"
require "sinatra/base"
require "haml"
require "mustache/sinatra"


class App < Sinatra::Base
	register Mustache::Sinatra
	require "./views/layout"
#=begin
	set :mustache, {
		:views => './views/',
		:templates => './views/'
	}
#=end
	@@rows = [
		{"name"=>"Chris", "idea"=>"Space"},
		{"name"=>"Bill", "idea"=>"Time"},
		{"name"=>"Jane", "idea"=>"The Rest"}
	]

	get "/" do	
		"ROOT"
	end

	get "/haml" do	
		haml :index, :locals => {:rows => @@rows}
	end

	get "/mustache" do	
		mustache :index, :locals => {:rows => @@rows}
	end
end