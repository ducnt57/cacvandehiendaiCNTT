class SessionsController < ApplicationController
  def new
  end
  def create
  	user= User.find_by(username: params[:session][:username], password: params[:session][:password])
  	if user
  		session[:session_username_abc123]= user.username
  		redirect_to users_url
  	else
  		flash[:danger] = 'Username or Password is not correct !' 
  		render 'new'
  	end
  end
  def destroy
    session.delete(:session_username_abc123);
  end
  def new_register
    
  end
  def create_register
    @user= User.new(username: params[:session][:username], password: params[:session][:password], email: params[:session][:email],fullname: params[:session][:fullname])
    @user.save
    flash[:errorsss] = "Create users success !"
    render 'new_register'
  end

end
