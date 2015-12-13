class ProjectsController < ApplicationController
  def index
    @user = current_user
    @projects = Project.where(user_id = @user.id)
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    @user = current_user

    if @project.save
      redirect_to projects_path, notice: "The file has been uploaded."
      @project.user_id = @user.id
    else
      render "new"
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_path, notice:  "The project has been deleted"
  end

  def organizer
  end

  def template
    @user = current_user
  end

  def recorder
  end

  def add_files
  end

  def print
  end

  private
  def project_params
    params.require(:project).permit(:attachment)
  end
end
