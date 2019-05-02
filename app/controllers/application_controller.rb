class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_current_user

  def counts(user)
    @count_followings = user.followings.count
    @count_followers = user.followers.count
  end
  
  def set_current_user
    @current_user ||= current_user
  end
  
  def current_user
    return @current_user if @current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end
  helper_method :current_user
end

