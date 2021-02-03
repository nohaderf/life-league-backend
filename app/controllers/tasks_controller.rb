class TasksController < ApplicationController

    def index 
        tasks = Task.all
        render json: tasks
    end

    def show
        task = Task.find(params[:id])
        render json: task
    end

    def create
        task = Task.create(task_params)
        render json: task
    end

    def destroy
        task = Task.find(params[:id])
        task.destroy
        render json: task
    end

    private

    def task_params
        params.permit(:name, :user_id, :points, :active, :category)
    end

end
