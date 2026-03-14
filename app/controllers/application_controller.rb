class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  # Changes to the importmap will invalidate the etag for HTML responses
  before_action :require_login
  def require_login
    unless session[:user_id]
      redirect_to sign_in_path, alert: "Please login first"
    end
  end
  stale_when_importmap_changes
end
