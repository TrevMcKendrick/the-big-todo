class TodoListsController < ApplicationController
  before_action :set_todo_list, only: [:show]

  def index
    @todo_lists = TodoList.all
    @todo_list = TodoList.new
  end
  
  def create
    @todo_list = TodoList.new(todo_list_params)
      if @todo_list.save
        redirect_to @todo_list, notice: 'New list was successfully created.'
      else
        render action: 'index'
      end
  end

  def show
    @todo = @todo_list.todos.new
  end

  # def new
  #   @todo_list = TodoList.new
  # end


  private

  def set_todo_list
    @todo_list = TodoList.find(params[:id])
  end

  def todo_list_params
    params.require(:todo_list).permit(:name)
  end

end