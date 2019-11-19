# frozen_string_literal: true

class Tax < ApplicationRecord
  has_many :orders

  validates :province, :rate, presence: true
  validates :rate, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0 }
end
