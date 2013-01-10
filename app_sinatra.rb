require "sinatra"
require "haml"

@@rows = [
	{"name"=>"Chris", "idea"=>"Space"},
	{"name"=>"Bill", "idea"=>"Time"},
	{"name"=>"Jane", "idea"=>"The Rest"}
]

get "/" do	
	haml :index, :locals => {:rows => @@rows}
end