class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  helper_method :current_user # Makes current_user available in views as well

  private

  def current_user
    # Replace this with however you're finding the logged-in user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
end
