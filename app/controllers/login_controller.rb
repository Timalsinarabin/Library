class LoginController < ApplicationController
  skip_before_action :require_login, only: [ :index, :profile ]
  def index
  end
  def profile
    user = User.find_by(username: params[:username])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to dashboard_path
    else
      redirect_to sign_in_path, alert: "Invalid Username or passowrd"
    end
  end
end
