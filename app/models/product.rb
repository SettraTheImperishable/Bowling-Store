# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :category

  has_many :items
  has_many :order_lines

  has_one_attached :image

  validates :name, :description, :price, presence: true
  validates :price, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }
end
