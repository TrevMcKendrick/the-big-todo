class TodosController < ApplicationController

  def show
    @todo = Todo.find(params[:id])
  end

  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
    @todo.parent = 
  end

  def create
    
    @todo = Todo.new(todo_params)
    
    #respond_to do |format|
      if @todo.save
        redirect_to todos_url, notice: 'Todo was successfully created.'
       # format.json { render action: 'show', status: :created, location: @todo }
      else
        render action: 'new'
        #format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def destroy
    @todo = Todo.find(params[:id])
    if @todo.present?
      @todo.destroy
    end
    redirect_to todos_url
  end

  private
    def todo_params
      params.require(:todo).permit(:name)
    end

end
