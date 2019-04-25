class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def counts(user)
    @count_followings = user.followings.count
    @count_followers = user.followers.count
  end
  
end