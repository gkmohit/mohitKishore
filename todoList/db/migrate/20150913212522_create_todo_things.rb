class CreateTodoThings < ActiveRecord::Migration
  def change
    create_table :todo_things do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
