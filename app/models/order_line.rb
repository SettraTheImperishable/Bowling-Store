# frozen_string_literal: true

class OrderLine < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates :price, :quantity, presence: true
  validates :quantity, numericality: { integer_only: true }
  validates :price, format: { with: /\A[+-]?\d+\z/, messsage: 'Integer only. No sign allowed.' }
end
