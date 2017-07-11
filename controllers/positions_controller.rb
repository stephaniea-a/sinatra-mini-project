class PositionsController < Sinatra::Base

	# sets root as the parent-directory of the current file
	set :root, File.join(File.dirname(__FILE__), '..')

	# sets the view directory correctly
	set :views, Proc.new { File.join(root, "views") }

	configure :development do
		register Sinatra::Reloader
	end

	#INDEX
	get "/" do
		@title = "Yoga Positions"

		@positions = Position.all

		erb :'positions/index'
	end

	#NEW
	get "/new" do

		erb :"positions/new"
	end

	#SHOW
	get "/:id" do
		id = params[:id].to_i

		@position = Position.find id

		erb :"positions/show"
	end

	#CREATE
	post "/" do
		position = Position.new

		position.title = params[:title]
		position.image = params[:image]
		position.description = params[:description]
		position.rating = params[:rating]

		position.save

		redirect :"/"
	end

	#EDIT
	get "/:id/edit" do
		id = params[:id]

		@position = Position.find id

		erb :"positions/edit"
	end

	#UPDATE
	put "/:id" do
		id = params[:id].to_i

		position = Position.find id

		position.title = params[:title] 
		position.image = params[:image]
		position.description = params[:description]
		position.rating = params[:rating] 

		position.update

		redirect  :"/"

	end

	#DELETE
	delete "/:id" do

	end

end