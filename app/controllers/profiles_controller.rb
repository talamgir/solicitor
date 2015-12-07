class ProfilesController < ApplicationController
	 before_action :show, :authenticate_user!

	 def show
	 	@project = Project.all 
	 end

end
