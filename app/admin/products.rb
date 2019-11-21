# frozen_string_literal: true

ActiveAdmin.register Product do
  permit_params :name, :description, :price, :category_id, :image

  form do |f| # This is a formtastic form builder, another gem!
    f.semantic_errors # shows errors
    f.inputs # builds the input field for all attributes
    f.inputs do
      f.input :image, as: :file
    end
    f.actions # adds the 'Submit' and 'Cancel' buttons
  end
end
