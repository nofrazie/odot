class CreateTodoItems < ActiveRecord::Migration[5.0]
  def change
    create_table :todo_items do |t|
      t.references :todo_list, foreign_key: true, index: true
      t.string :content

      t.timestamps
    end
  end
end
