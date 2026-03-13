class SessionsController < ApplicationController
  def destroy
    session[:id] = nil
    redirect_to sign_in_path, notice: "log out Sucessfull"
  end
end
