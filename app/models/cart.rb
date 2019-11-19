# frozen_string_literal: true

class Cart < ApplicationRecord
  belongs_to :account
  has_many :items
end
