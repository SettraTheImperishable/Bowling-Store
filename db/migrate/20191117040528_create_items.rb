class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.decimal :price, precision: 10, scale: 2
      t.integer :quantity
      t.references :cart, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
