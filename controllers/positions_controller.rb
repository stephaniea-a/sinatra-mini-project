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
		
		erb :'positions/index'
	end

	#NEW
	get "/new" do

		erb :"positions/new"
	end

	#SHOW
	get "/:id" do
		
		erb :"positions/show"
	end

	#CREATE
	post "/" do

	end

	#EDIT
	get "/:id/edit" do
		
		erb :"positions/show"
	end

	#UPDATE
	put "/:id" do

	end

	#DELETE
	delete "/:id" do

	end

end