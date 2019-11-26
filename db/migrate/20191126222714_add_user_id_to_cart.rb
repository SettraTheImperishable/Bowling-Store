# frozen_string_literal: true

class AddUserIdToCart < ActiveRecord::Migration[6.0]
  def change
    add_reference(:carts, :user, index: true, foreign_key: true)
  end
end
