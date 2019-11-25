# frozen_string_literal: true

class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all.page(params[:page]).per(5)
  end

  def search_results
    @query = params[:query]
    @products = Product.where('name LIKE ?', "%#{@query}%")
  end
end
