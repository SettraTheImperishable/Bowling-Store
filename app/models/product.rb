# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category

  has_many :items
  has_many :order_lines

  validates :name, :description, :price, presence: true
  validates :price, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0 }
end
