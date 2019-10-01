class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.string :name
      t.string :city
      t.string :phone
      t.integer :user_id

      t.timestamps
    end
  end
end
