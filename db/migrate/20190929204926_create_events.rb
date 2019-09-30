class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.boolean :allDay
      t.date :start
      t.date :end
      t.integer :user_id

      t.timestamps
    end
  end
end
