require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './controllers/positions_controller'

use Rack::MethodOverride

run PositionsController