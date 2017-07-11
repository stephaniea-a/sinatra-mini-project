require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './controllers/positions_controller'
require_relative './models/positions.rb'

use Rack::MethodOverride

run PositionsController