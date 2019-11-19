# frozen_string_literal: true

class Cart < ApplicationRecord
  belongs_to :account
  has_many :items

  validates :size, presence: true
  validates :size, numericality: { only_integer: true }
end
