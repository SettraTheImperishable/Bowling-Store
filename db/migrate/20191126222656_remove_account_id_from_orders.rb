# frozen_string_literal: true

class RemoveAccountIdFromOrders < ActiveRecord::Migration[6.0]
  def change
    remove_reference(:orders, :account, index: true, foreign_key: true)
  end
end
