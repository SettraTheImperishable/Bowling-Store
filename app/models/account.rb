# frozen_string_literal: true

class Account < ApplicationRecord
  has_one :cart
  has_many :orders
end
