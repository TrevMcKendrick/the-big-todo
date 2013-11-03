class RemoveTodoIdFromTodoLists < ActiveRecord::Migration
  def change
    remove_column :todo_lists, :todo_id
  end
end