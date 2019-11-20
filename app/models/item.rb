# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  validates :quantity, :price, presence: true
  validates :quantity, numericality: { only_integer: true }
  validates :price, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }
end
