class CreateTaxes < ActiveRecord::Migration[6.0]
  def change
    create_table :taxes do |t|
      t.string :province
      t.decimal :rate, precision: 10, scale: 2

      t.timestamps
    end
  end
end
