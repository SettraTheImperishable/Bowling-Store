# frozen_string_literal: true

class Cart < ApplicationRecord
  has_many :items
  belongs_to :user, optional: true

  validates :size, presence: true
  validates :size, numericality: { only_integer: true }
end
