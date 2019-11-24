# frozen_string_literal: true

class PagesController < ApplicationController
  def show
    @page = Page.find(params[:id])
  end

  def permalink
    @page = Page.find_by_permalink(params[:permalink])

    if @page
      render :show # points to the show.html.erb
    else
      redirect_to root_path
    end
  end
end
