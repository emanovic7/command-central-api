class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.text :note
      t.boolean :done
      t.integer :user_id

      t.timestamps
    end
  end
end
