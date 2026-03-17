class PasswordResetsController < ApplicationController
  skip_before_action :require_login, only: [ :new, :create ]
  def new
  end
  def create
    @user = User.find_by(email: params[:email])
    if @user.present?
      PasswordMailer.with(user: @user).reset.deliver_now
    end
    redirect_to root_path, notice: "We have sent an email. Please follow the link"
  end
end
