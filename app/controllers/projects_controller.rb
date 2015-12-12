class ProjectsController < ApplicationController
  def index
    @projects = Project.all 
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to projects_path, notice: "The file has been uploaded."
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
