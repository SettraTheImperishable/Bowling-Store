# frozen_string_literal: true

class DropAccounts < ActiveRecord::Migration[6.0]
  def up
    drop_table(:accounts)
  end

  def down
    create_table :accounts do |t|
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
