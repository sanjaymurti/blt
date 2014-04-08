class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    @project = Project.new
  end

  def create
    @projects = Project.all
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      render 'index'
    end
  end

  def destroy
    Project.find(params[:id]).destroy
    flash[:success] = "Project deleted."
    redirect_to projects_path
  end


  private

    def project_params
      params.require(:project).permit(:name, :client, :matter, :color,
                                   :description)
    end

end