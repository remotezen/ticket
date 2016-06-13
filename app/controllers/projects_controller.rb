class ProjectsController < ApplicationController
  def index
    @products = Project.order(:created_at)
  end
  def new
    @project = Project.new
  end
  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:notice] = "Project has been created"
      redirect_to @project
    else
      flash[:error] = "there was a problem with your submission"
      redirect_to new_project
    end
  end
  def show
    @project = Project.find(params[:id])
  end
  private
  def project_params
    params.require(:project).permit(:name, :description)
  end
end
