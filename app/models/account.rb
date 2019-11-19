# frozen_string_literal: true

class Account < ApplicationRecord
  has_one :cart
  has_many :orders

  validates :email, :password, presence: true
  validates :email, uniqueness: { case_sensitive: false }
end
