class SessionsController < ApplicationController
	def new
	end

	def create
  	user = User.authenticate(params[:username], params[:password])
  	if user
    	session[:username_abc123] = user.username
      session[:user_id_abc123]  =user.id
    	redirect_to root_url, :notice => "Logged in!"
  	else
    	flash.now.alert = "Invalid username or password"
    	render "new"
  	end
	end

	def destroy
  	session[:username_abc123] = nil
    session[:user_id_abc123]= nil
  	redirect_to root_url, :notice => "Logged out!"
	end
end
