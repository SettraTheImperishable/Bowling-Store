# frozen_string_literal: true

class AddUserIdToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference(:orders, :user, index: true, foreign_key: true)
  end
end
