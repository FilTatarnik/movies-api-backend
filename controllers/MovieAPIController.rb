class MovieAPIController < ApplicationController
	
	# index for movies
	get '/' do
		user = User.find_by username: session[:username]
		{
			status: 200,
			movies: user.movies.order(:id)
		}.to_json
	end


	# create route
	post '/' do
		payload_body = request.body.read
		payload = JSON.parse(payload_body).symbolize_keys
		# binding.pry
		pp "hitting route"
		
		user = User.find_by username: session[:username]
		movie = Movie.new
		movie.title = payload[:title]
		movie.description = payload[:description]
		movie.user_id = user.id
		movie.save
		{
			status: 200,
			message: "Created Movie",
			movie: movie
		}.to_json
	end


	#update
	put '/:id' do
		payload_body = request.body.read
		payload = JSON.parse(payload_body).symbolize_keys

		movie = Movie.find params[:id]
		movie.title = payload[:title]
		movie.description = payload[:description]
		movie.save
		{
			status: 200,
			message: "Updated Movie",
			movie: movie
		}.to_json
	end
	# delete
	delete '/:id' do
		movie = Movie.find params[:id]
		movie.destroy
		{
			status: 200,
			message: "Destroyed Movie"
		}.to_json
	end

end