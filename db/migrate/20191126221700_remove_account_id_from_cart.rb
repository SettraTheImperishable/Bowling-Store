# frozen_string_literal: true

class RemoveAccountIdFromCart < ActiveRecord::Migration[6.0]
  def change
    remove_belongs_to(:carts, :account, index: true, foreign_key: true)
  end
end
