class ProjectsController < ApplicationController
  def organizer
  end

  def template
  end

  def add_files
  end

  def recorder
  end

  def print
  end

  def index
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:success] = "The project was added!"
      redirect_to profile_path
    else
      render 'show'
    end
  end

  private

  def project_params
    params.require(:project).permit(:document)
  end
end
