class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :status
      t.references :user, index: true
      t.datetime :due_date
      t.timestamps null: false
    end
  end
end
