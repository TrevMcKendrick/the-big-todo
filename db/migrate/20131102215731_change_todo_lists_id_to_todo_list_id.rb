class ChangeTodoListsIdToTodoListId < ActiveRecord::Migration
  def change
    rename_column :todos, :todo_lists_id, :todo_list_id
  end
end
