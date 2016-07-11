class TodosController < ApplicationController
  before_action :set_todo, only: [:update, :destroy]

  def index
    @todos = Todo.all
    @todos = Todo.completed if params[:completed]
    @todos = Todo.active if params[:active]
    respond_to do |format|
      format.html {}
      format.js {}
    end
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)
    respond_to do |format|
      format.js {} if @todo.save
    end
  end

  def update
    respond_to do |format|
      format.js {} if @todo.update(todo_params)
    end
  end

  def destroy
    respond_to do |format|
      format.js {} if @todo.destroy
    end
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:description, :is_completed, :active, :completed)
  end
end
