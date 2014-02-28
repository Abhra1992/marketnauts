class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def sign_in(user)
    session[:uid] = user.uid
  end

  def sign_out
    session[:uid] = nil
  end

  def current_user
    return nil if session[:uid].nil?
    User.find_by_uid(session[:uid])
  end
  helper_method :current_user

  private
  def current_user_serialized
    UserSerializer.new(current_user)
  end
  helper_method :current_user_serialized
end
