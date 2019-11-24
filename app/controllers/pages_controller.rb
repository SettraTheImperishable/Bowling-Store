# frozen_string_literal: true

class PagesController < ApplicationController
  def show
    @page = Page.find(params[:id])
  end

  def permalink
    @page = Page.find_by_permalink(params[:permalink])
    render :show # points to the show.html.erb
  end
end
