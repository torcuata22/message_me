class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?
  def current_user
    #from the sessions controller we grab the user id: session[:user_id]
    @current_user ||= User.find(session[:user_id]) if session[:user_id]  
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:error] = "You must be logged in toperform that action"
      redirect_to login_path
    end
  end
end
