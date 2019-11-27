# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :initialize_session
  before_action :load_cart

  private

  def initialize_session
    session[:cart] ||= []
  end

  def load_cart
    @cart = session[:cart]
  end
end
