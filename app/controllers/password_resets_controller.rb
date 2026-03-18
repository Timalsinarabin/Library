class PasswordResetsController < ApplicationController
  skip_before_action :require_login, only: [ :new, :create, :edit, :update ]
  def new
  end
  def create
    @user = User.find_by(email: params[:email])
    if @user.present?
      PasswordMailer.with(user: @user).reset.deliver_now
    end
    redirect_to root_path, notice: "We have sent an email. Please follow the link"
  end
  def edit
    @user = User.find_signed!(params[:token], purpose: "reset_password")
  rescue ActiveSupport::MessageVerifier::InvalidSignature
    redirect_to sign_in_path, alert: "Your token has expired"
  end
  def update
    @user = User.find_signed!(params[:token], purpose: "reset_password")
    if @user.update(password_params)
      redirect_to sign_in_path, notice: "Password reset sucessfull"
    else
      render :edit
    end
  end
  private
  def password_params
    params.require(:user).permit(:password, :password_confirmation)
  end
end
