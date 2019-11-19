# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :tax
  belongs_to :account

  has_many :order_lines
end
