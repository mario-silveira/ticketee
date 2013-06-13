class ProjectsController < ApplicationController
  def index
  
  end
  
  def new
    @project = Project.new(params[:project])
	@project.save
  end
  
  def create
    @project = Project.new(params[:project]) # <co id="ch03_501_1"/>
    if @project.save
      flash[:notice] = "Project has been created."
      redirect_to @project
    else
      flash[:alert] = "Project has not been created."
	  #<co id="ch03_926_1"/>
	  render :action => "new"
    end
  end
  
  def show
    @project = Project.find(params[:id])
  end
end
