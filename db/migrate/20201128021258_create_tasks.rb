class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :details
      t.datetime :deadline
      t.date :started_at
      t.date :completed_at
      t.boolean :started
      t.boolean :completed
      t.string :category_id

      t.timestamps
    end
  end
end
