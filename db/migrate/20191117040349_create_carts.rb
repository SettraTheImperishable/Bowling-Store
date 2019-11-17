class CreateCarts < ActiveRecord::Migration[6.0]
  def change
    create_table :carts do |t|
      t.integer :size
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
