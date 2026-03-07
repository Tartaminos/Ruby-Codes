class TasksController < ApplicationController
  before_action :set_task, only: [:show, :update, :destroy]


    def index
    # TODO:
    # Complete this action.
    #
    # Requirements:
    # - Return all tasks as JSON
    # - Allow optional filtering by status through query param
    # - Accept only valid status values
    # - Return JSON error for invalid status

    # solution

      status = params[:status]

      if status.present? && !Task::STATUSES.include?(status)
        return render json: { error: "Invalid status" }, status: :unprocessable_entity
      end

      tasks = status.present? ? Task.where(status: status) : Task.all

      render json: tasks, status: :ok
    end


  def show
    return render json: { error: "Task not found" }, status: :not_found unless @task

    render json: @task, status: :ok
  end


    def create
    # TODO:
    # Complete this action.
    #
    # Requirements:
    # - Create a new task
    # - Only title, description and status are allowed
    # - If status is not provided, default to "pending"
    # - Validate status values
    # - Return JSON response
    # - Return proper HTTP status codes

      @task = Task.new(task_params)
      @task.status = "pending" if @task.status.blank?

      if @task.save
        render json: @task, status: :created
      else
        render json: { errors: @task.errors.full_messages }, status: :unprocessable_entity
      end
    end



  def update
    # TODO:
    # Complete this action.
    #
    # Requirements:
    # - Only title, description and status can be updated
    # - Validate status values
    # - Return JSON response
    # - Return 404 if task is not found

    # solution


    return render json: { error: "Task not found" }, status: :not_found unless @task

    if @task.update(task_params)
        render json: @task, status: :ok
    else
        render json: { errors: @task.errors.full_messages }, status: :unprocessable_entity
    end


  end

  def destroy
    # TODO:
    # Complete this action
    #
    # Requirements:
    # - Find task by id
    # - Return 404 if task does not exist
    # - Delete the task
    # - Return JSON response
    # - Use proper HTTP status codes

    # solution

    return render json: { error: "Task not found" }, status: :not_found unless @task

    @task.destroy

    head :no_content

  end

  private

  def set_task
    @task = Task.find_by(id: params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description, :status)
  end
end