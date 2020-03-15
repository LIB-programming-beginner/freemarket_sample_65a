class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :family_name, null: false
      t.string :first_name, null: false
      t.string :family_name_kana, null: false
      t.string :first_name_kana, null: false
      t.integer :zip_code, null: false
      t.string :prefecture, null: false
      t.string :city, null: false
      t.string :adress1, null: false
      t.string :adress2, null: false
      t.integer :telephone
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
