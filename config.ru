require './app_sinatra.rb'
use Rack::ShowExceptions
run App_Sinatra.new