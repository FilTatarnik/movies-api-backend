class UserAPIController < AppController

#login
	post '/login' do
		payload_body = request.body.read
		payload = JSON.parse(payload_body).symbolize_keys

		user = User.find_by username: payload[:username]
		pw = payload[:password]

		if user && user.authenticate pw
			session[:logged_in] = true
			session[:username] = user.username
			{
				session: 200,
				message: "#{user.username} has logged in!"
			}.to_json
		end
	end




#register

	post '/register' do




	end


#logout


	get '/logout' do



	end	
>>>>>>> e5cc8e02bfa168d942339ad6c0dc45a9c33d0aba
end