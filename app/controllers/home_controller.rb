class HomeController < ApplicationController
  def index
  end

  def logged_in
  	if user_signed_in?
  		redirect_to profile_path
  	end
end
end
