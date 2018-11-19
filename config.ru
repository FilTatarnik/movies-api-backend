require 'sinatra/base'

#controller
require './controllers/AppController';
require './controllers/MovieAPIController';
require './controllers/UserAPIController';

#models
require './models/UserModel';
require './models/UserModel';

#routes

map('/'){
	run AppController
}

map('/api/user') {
	run UserAPIController
}

map('/api/movies') {
	run MovieAPIController
}