class AddTodosIdToTodoLists < ActiveRecord::Migration
  def change
    add_column :todo_lists, :todo_id, :string
  end
end
