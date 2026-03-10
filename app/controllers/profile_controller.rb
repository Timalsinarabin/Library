class ProfileController < ApplicationController
  def index
    flash.now[:notice] = "Logged in sucessfully"
    flash.now[:alert] = "Invalied login credentials"
  end
end
