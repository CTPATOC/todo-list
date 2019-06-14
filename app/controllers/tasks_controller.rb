class TasksController < ApplicationController
    def create
        project = Project.find(params[:project_id])
        task = project.tasks.create(task_params)
        render json: TaskSerializer.new(task).serialized_json
    end

    def destroy
        Task.destroy(params[:id])
    end

    def update
        Task.update(params[:id], task_params)
    end  

    private

    def task_params
        params.require(:task).permit(:title, :order, :done, :deadline)
    end
end 
