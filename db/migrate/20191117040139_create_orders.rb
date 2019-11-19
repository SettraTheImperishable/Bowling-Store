# frozen_string_literal: true

class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :size
      t.decimal :subtotal, precision: 10, scale: 2
      t.decimal :sale_tax_rate, precision: 10, scale: 2
      t.decimal :total, precision: 10, scale: 2
      t.references :tax, null: false, foreign_key: true
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
  end
end
