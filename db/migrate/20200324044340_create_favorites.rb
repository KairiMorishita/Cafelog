class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.references :user, null:false
      t.references :cafe, null:false

      t.timestamps
    end
    add_index :favorites, [:user_id, :cafe_id], unique: true
  end
end
