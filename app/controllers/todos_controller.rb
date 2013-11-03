class TodosController < ApplicationController

  def create
    
    @todo = Todo.new(todo_params)
    
      if @todo.save
        redirect_to todos_url, notice: 'Todo was successfully created.'
      else
        render action: 'new'
      end
  end



  private
    def todo_params
      params.require(:todo).permit(:name)
    end

end
