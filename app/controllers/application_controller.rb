class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user


  private

  def current_user
  	if session[:user_id]
       @current_user ||= User.find(session[:user_id])
    else
    	@current_user = nil
    end
  end

  def check_login
  	unless authorized?
  		redirect_to "/auth/identity"
  	end
  end

  def logged_in?
  	if session[:user_id]
  		return true
  	else
  		return false
  	end
  end

  protected

  def authorized?
  	logged_in? && (request.get? || current_user.admin?)
  end
end
