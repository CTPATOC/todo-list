class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title, null: false, default: ""
      t.date :deadline
      t.integer :order
      t.boolean :done, null: false, default: false
      t.belongs_to :project, foreign_key: true
      t.timestamps
    end
  end
end
