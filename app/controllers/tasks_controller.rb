class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def show
        @task = Task.find(params[:id])
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
        if @task.save
            redirect_to tasks_path(Task.last)
        else
            render :new
        end
    end

    def edit
        @task = Task.find(params[:id])
        
    end

    def update
        @task = Task.find(params[:id])
        
         if @task.update(task_params)
             redirect_to tasks_path(Category.last)
         else
             render :edit
         end
    end

    def delete
        @task = Task.find(params[:id]).destroy
        redirect_to tasks_path
    end

    private
    def task_params
        params.require(:task).permit(:name, :details, :deadline, :started_at, :completed_at, :started, :completed, :category_id)
    end
end
