class SessionsController < ApplicationController
  def new

  end

  def create
  	user= User.find_by(username: params[:username], password: params[:password])
  	if user
  		session[:current_user_name] = user.username
  		redirect_to users_url
  	else
  		redirect_to '/sessions/new', notice: 'Username or Password not correct !'
  	end
  	
  end

  def destroy
  	session.delete(:current_user_name)
  	
  end

end
