class ProjectsController < ApplicationController

  def index
    @projects = Project.all
    @project = Project.new
    @billablehours = BillableHour.where(start: Time.now.midnight..Time.now.midnight + 1.day)
    @billablehour = BillableHour.new
    @currentbillable = BillableHour.where(end: DateTime.strptime('03/05/2010 14:25:00', '%d/%m/%Y %H:%M:%S')).first
  end

  def create
    @projects = Project.all
    @project = Project.new(project_params)
    if @project.save
      redirect_to projects_path
    else
      @err = true
      render 'index'
    end
  end

  def destroy
    Project.find(params[:id]).destroy
    flash[:success] = "Project deleted."
    redirect_to projects_path
  end

  def show
    @project = Project.find(params[:id])
    @tasks = @project.tasks
    @task = Task.new
  end


  private

    def project_params
      params.require(:project).permit(:name, :client, :matter, :color,
                                   :description)
    end

end
