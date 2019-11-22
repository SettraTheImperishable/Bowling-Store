# frozen_string_literal: true

ActiveAdmin.register Tax do
  permit_params :province, :rate
end
