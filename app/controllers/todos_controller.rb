class TodosController < ApplicationController

  def create
    
    @todo = Todo.new(todo_params)
    
      if @todo.save
        redirect_to @todo.todo_list, notice: 'Todo was successfully created.'
      else
        render action: 'new'
      end
  end



  private
    def todo_params
      params.require(:todo).permit(:name, :todo_list_id)
    end

end
