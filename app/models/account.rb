# frozen_string_literal: true

class Account < ApplicationRecord
  validates :email, :password, presence: true
  validates :email, uniqueness: { case_sensitive: false }
end
