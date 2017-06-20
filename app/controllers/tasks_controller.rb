# frozen_string_literal: true
class TasksController < ProtectedController
  before_action :set_task, only: [:update, :destroy]

  # GET /tasks
  def index
    @tasks = current_user.tasks.order(:id)

    render json: @tasks
  end

  # GET /tasks/1
  def show
    @task = Task.find(params[:id])

    render json: @post
  end

  # POST /tasks
  def create
    @task = current_user.tasks.build(task_params)

    if @task.save
      render json: @task, status: :created
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_task
    @task = current_user.tasks.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def task_params
    params.require(:task).permit(:name)
  end
end
