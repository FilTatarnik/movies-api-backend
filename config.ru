require 'sinatra/base'

#controller
require './controllers/ApplicationController';
require './controllers/UserAPIController';
require './controllers/MovieAPIController';

#models
require './models/UserModel';
require './models/MovieModel';

#routes

map('/'){
	run ApplicationController
}

map('/api/users') {
	run UserAPIController
}

map('/api/movies') {
	run MovieAPIController
}