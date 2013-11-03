class TodoListsController < ApplicationController

  def show
    @todo_list = TodoList.find(params[:id])
  end

  def index
    @todo_lists = TodoList.all
  end

  def new
    @todo_list = TodoList.new

  end

  def create
    
    @todo_list = TodoList.new(todo_list_params)
    
    #respond_to do |format|
      if @todo_list.save
        redirect_to todo_lists_url, notice: 'Todo was successfully created.'
       # format.json { render action: 'show', status: :created, location: @todo_list }
      else
        render action: 'new'
        #format.json { render json: @todo_list.errors, status: :unprocessable_entity }
      end
  end

  def edit
    @todo_list = TodoList.find(params[:id])
  end

  def destroy
    @todo_list = TodoList.find(params[:id])
    if @todo_list.present?
      @todo_list.destroy
    end
    redirect_to todo_lists_url
  end

  private
    def todo_list_params
      params.require(:todo_list).permit(:name)
    end

end