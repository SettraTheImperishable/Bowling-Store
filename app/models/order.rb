# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :tax
  belongs_to :user

  has_many :order_lines

  validates :size, :subtotal, :sale_tax_rate, :total, presence: true
  validates :size, numericality: { integer_only: true, greater_than: 0 }
  validates :subtotal, :sale_tax_rate, :total, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }
end
