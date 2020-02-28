class CreateCafes < ActiveRecord::Migration[5.1]
  def change
    create_table :cafes do |t|
      t.string :name
      t.string :image
      t.string :address
      t.string :phone_number
      t.string :email
      t.boolean :credit
      t.boolean :parking

      t.timestamps
    end
  end
end
