class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.string :title
      t.string :venue
      t.date :date
      t.time :time

      t.integer :user_id
      t.timestamps
    end
  end
end
