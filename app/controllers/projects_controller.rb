class ProjectsController < ApplicationController
  def index
    projects = Project.all
    render json: ProjectSerializer.new(projects, { include: [:tasks] }).serialized_json
  end

  def create
    project = Project.create(project_params)
    render json: ProjectSerializer.new(project).serialized_json
  end

  def destroy
    Project.destroy(params[:id])
  end

  def update
    project = Project.find(params[:id])
    project.update(project_params)
  end  

  private

  def project_params
    params.require(:project).permit(:title)
  end
end
