class ProfilesController < ApplicationController
	 before_action :show, :authenticate_user!

	 def show
	 	@user = current_user.email
	 end

end
