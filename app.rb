require "mustache"
require "haml"

@rows = [
	{"name"=>"Chris", "idea"=>"Space"},
	{"name"=>"Bill", "idea"=>"Time"},
	{"name"=>"Jane", "idea"=>"The Rest"}
]

puts File.dirname(__FILE__)
Mustache.template_file = File.dirname(__FILE__) + '/templates/idea.mustache'
view = Mustache.new
view[:rows] = @rows
puts ">> Render Mustache<< "
puts view.render

puts "\n>> Render HAML <<"
template = File.read(File.dirname(__FILE__) + '/templates/idea.haml')
engine = Haml::Engine.new(template)
puts engine.render(Array.new, :rows => @rows)
