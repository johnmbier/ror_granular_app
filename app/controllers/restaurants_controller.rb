class RestaurantsController < ApplicationController
  def index
  	@restaurants = Restaurant.all
  end

  def show
  end

  def edit
  end

  def new
  end
end
