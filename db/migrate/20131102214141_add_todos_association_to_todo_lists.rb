class AddTodosAssociationToTodoLists < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.belongs_to :todo_lists
      t.string :name
    end
  end
end
