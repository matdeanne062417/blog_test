class AddForeignKeyToTask < ActiveRecord::Migration[6.0]
  def change
    add_index :tasks, :category_id
  end
end
