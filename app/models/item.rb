# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  validates :quantity, :price, presence: true
  validates :quantity, numericiality: { only_integer: true }
  validates :price, format: { with: /\A[+-]?\d+\z/, messsage: 'Integer only. No sign allowed.' }
end
