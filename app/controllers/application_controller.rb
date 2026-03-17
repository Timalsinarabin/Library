class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  before_action :require_login, :set_current_user

  def set_current_user
    if session[:user_id]
      Current.user = User.find_by(id: session[:user_id])
    end
  end
  def require_login
    unless session[:user_id]
      redirect_to sign_in_path, alert: "Please login first"
    end
  end
  def require_user_logged_in
    redirect_to sign_in_path, alert: "Requires sign in" if Current.user.nil?
  end
  stale_when_importmap_changes
end
