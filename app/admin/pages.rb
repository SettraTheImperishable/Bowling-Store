# frozen_string_literal: true

ActiveAdmin.register Page do
  permit_params :name, :content, :permalink
end
