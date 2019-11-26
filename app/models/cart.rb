# frozen_string_literal: true

class Cart < ApplicationRecord
  has_many :items

  validates :size, presence: true
  validates :size, numericality: { only_integer: true }
end
