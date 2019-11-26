# frozen_string_literal: true

class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
  end

  def index
    @products = Product.all.page(params[:page]).per(5)
  end

  def search_results
    @category = Category.find(params[:category_id]) if params[:category_id] != ''
    @query = params[:query]
    @products = if !@category
                  Product.where('name LIKE ?', "%#{@query}%")
                else
                  Product.where('category_id LIKE ?', @category.id)
                         .where('name LIKE ?', "%#{@query}%")
                end
  end

  def add_to_cart
    id = params[:product_id].to_i
    session[:cart] << id unless session[:cart].include?(id)
    flash[:item_changed] = 'Item successfully added to your cart!'
    redirect_back(fallback_location: root_path)
  end

  def remove_from_cart
    id = params[:product_id].to_i
    session[:cart].delete(id)
    flash[:item_changed] = 'Item successfully removed to your cart!'
    redirect_back(fallback_location: root_path)
  end
end
