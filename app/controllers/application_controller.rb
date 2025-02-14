class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :current_attraction

  def current_user
    current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

   def current_attraction
    current_attraction ||= Attraction.find(params[:attraction_id])
  end
end
