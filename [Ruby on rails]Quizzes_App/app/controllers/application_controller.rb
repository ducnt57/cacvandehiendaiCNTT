class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	
	protect_from_forgery with: :exception
	helper_method :current_user

	private

	def current_user
  		@current_user ||= User.find(session[:username_abc123]) if session[:username_abc123]
	end
	
end
