class ProfilesController < ApplicationController
	 before_action :show, :authenticate_user!

	 def new
	 	@profile = Profile.new(profile_params)
	 	@profile.user_id = params[:user_id]

	 	@profile.save

	 	
	 end

	 def create
	 end

	 def edit
	 end

	 def update
	 end

	 def show
	 end

	 def destroy
	 end

	 private

	 def profile_params

end