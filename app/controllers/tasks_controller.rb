class TasksController < ApplicationController
    before_action :get_category
    def index
        @tasks = @category.tasks
    end

    def today
        @tasks_incomplete = Task.where(completed: false, deadline: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day).order(deadline: :desc)
    end

    def show
        @task = @category.tasks.find(params[:id])
      
    end

    def new
        @task = @category.tasks.build
    end

    def create
        @task = @category.tasks.build(task_params)
        if @task.save
            redirect_to category_tasks_path
        else
            render :new
        end
    end

    def edit
        @task = @category.tasks.find(params[:id])
        
    end

    def update
        @task = @category.tasks.find(params[:id])
        
         if @category.tasks.update(task_params)
             redirect_to category_tasks_path
         else
             render :edit
         end
    end

    def destroy
        @task = Task.find(params[:id]).destroy
        redirect_to category_tasks_path
    end

    private

    def get_category
        if params[:category_id]
            @category = Category.find(params[:category_id])
        end
    end

    def task_params
        params.require(:task).permit(:name, :details, :deadline, :started_at, :completed_at, :started, :completed, :category_id)
    end
end
