# frozen_string_literal: true

class Tax < ApplicationRecord
  has_many :orders
end
